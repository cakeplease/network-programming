#include <iostream>
#include <functional>
#include <list>
#include <mutex>
#include <thread>
#include <condition_variable>
#include <atomic>
#include <vector>

using namespace std;

class Workers {
    mutex tasks_mutex;
    list<function<void()>> tasks;
    int threadCount;
    vector<thread> worker_threads;
    condition_variable cv;
    condition_variable stopper;
    bool should_stop;
    std::vector<std::thread> timeout_handles;
    std::atomic<int> timeout_handle_counter = 0;
    bool started;

public:
    Workers(int threadCount) {
        this->threadCount = threadCount;
        this->worker_threads.reserve(threadCount);
        should_stop = false;
        started = false;
    }

    void start() {
        for (int i = 0; i < this->threadCount; i++) {
            this->worker_threads.emplace_back([this] {
                while (true) {
                    function<void()> task;
                    {
                        unique_lock<mutex> lock(this->tasks_mutex);
                        cv.wait(lock, [this] {
                            return this->should_stop || !this->tasks.empty();
                        });

                        if (this->should_stop) {
                            return;
                        }

                        if (!this->tasks.empty()) {
                            task = *tasks.begin(); // Copy task for later use
                            this->tasks.pop_front(); // Remove task from list
                        }

                        if (task) {
                            task();
                            stopper.notify_one();
                        }
                    }

                }

            });
        }

        started = true;
    }

    void post(const function<void()> &func) {
        if (started) {
            unique_lock<mutex> lock(this->tasks_mutex);
            this->tasks.emplace_back(func);
        }

        cv.notify_one();
    }

    void post_timeout(const function<void()> &func, int sleep_ms) {
        timeout_handle_counter++;
        timeout_handles.emplace_back([this, sleep_ms, func] {
            this_thread::sleep_for(chrono::milliseconds(sleep_ms));
            this->post(func);
            this->timeout_handle_counter--;
        });
    }

    bool is_idle() {
        return this->tasks.empty() && timeout_handle_counter == 0;
    }

    void stop() {
        {
            unique_lock<mutex> lock(this->tasks_mutex);
            stopper.wait(lock, [this] {
                return is_idle();
            });
        }
        //if is_idle returns true, stopper stops calling on the given function and the code below will execute so the program stops
        should_stop = true;
        cv.notify_all();

        for (auto &thread : this->worker_threads) thread.join();
        for (auto &handle : this->timeout_handles) handle.join();

    }

};


int main() {
    Workers worker_threads(4);
    Workers event_loop(1);
    worker_threads.start(); // Create 4 internal threads
    event_loop.start(); // Create 1 internal thread

    worker_threads.post([] { cout << "1" << endl; });
    worker_threads.post_timeout([] { cout << "2" << endl; }, 1000);
    worker_threads.post_timeout([] { cout << "3" << endl; }, 1000);
    worker_threads.post_timeout([] { cout << "4" << endl; }, 500);
    worker_threads.post_timeout([] { cout << "5" << endl; }, 1000);

    event_loop.post_timeout([] { cout << "6" << endl; }, 500);
    event_loop.post_timeout([] { cout << "7" << endl; }, 1000);

    worker_threads.stop();
    event_loop.stop();

    return 0;
}
