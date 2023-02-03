#include <iostream>
#include <functional>
#include <list>
#include <mutex>
#include <thread>
#include <condition_variable>

using namespace std;

class Workers {
    mutex tasks_mutex;
    list<function<void()>> tasks;
    int threadCount;
    vector<thread> worker_threads;
    condition_variable cv;
    condition_variable stopper;
    bool should_stop = false;

public:
    Workers(int threadCount) {
        this->threadCount = threadCount;
        this->worker_threads.reserve(threadCount);
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

                        if (this->should_stop)
                            return;

                        if (!this->tasks.empty()) {
                            task = *tasks.begin(); // Copy task for later use
                            this->tasks.pop_front(); // Remove task from list
                        }

                        if (task) {
                            task();
                        }
                    }

                }

            });
        }
    }

    void post(const function<void()> &func) {
        unique_lock<mutex> lock(this->tasks_mutex);
        this->tasks.emplace_back(func);

        cv.notify_all();
    }

    bool is_idle() {
        return this->tasks.empty();
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

    }
};


int main() {
    Workers worker_threads(4);
    Workers event_loop(1);
    worker_threads.start(); // Create 4 internal threads
    event_loop.start(); // Create 1 internal thread

    worker_threads.post([] { cout << "A"; });
    worker_threads.post([] { cout << "W"; });
    worker_threads.post([] { cout << "d"; });
    worker_threads.post([] { cout << "s"; });
    worker_threads.post([] { cout << "S"; });

    event_loop.post([] { cout << "B"; });
    event_loop.post([] { cout << "C"; });
    event_loop.post([] { cout << "D"; });


    worker_threads.stop();
    event_loop.stop();

    return 0;
}
