#include <iostream>
#include <functional>
#include <list>
#include <mutex>
#include <thread>

using namespace std;

class Workers {
    list<function<void()>> tasks;
    mutex tasks_mutex;
    int threadCount;
    const int taskCount = 2;
    vector<thread> worker_threads;

    public:
        Workers(int threadCount) {
            this->threadCount = threadCount;
            worker_threads.reserve(threadCount);
        }

    void start() {
        for (int i = 0; i < this->threadCount; i++) {
            worker_threads.emplace_back([this] {
                while (true) {
                    function<void()> task;
                    {
                        unique_lock<mutex> lock(tasks_mutex);
                        // TODO: use conditional variable
                        if (!tasks.empty()) {
                            task = *tasks.begin(); // Copy task for later use
                            tasks.pop_front(); // Remove task from list
                        }
                    }
                    if (task)
                        task(); // Run task outside mutex lock
                }
            });
        }

    }
    //avslutter workers trådene for eksempel når task-listen er tom
    void stop() {
        if (tasks.empty()) {

        }
    }

    void post() {
        for (int i = 0; i < this->taskCount; i++) {
          unique_lock<mutex> lock(tasks_mutex);
          tasks.emplace_back([i] {
              cout << "task " << i << " runs in thread " << this_thread::get_id() << endl;
            });
        }
    }

    void post_timeout() {
    //kjører task argumentet etter et gitt antall millisekund.
    }

    void join() {
        for (auto &thread : this->worker_threads)
            thread.join();
    }

};

int main() {
    Workers worker_threads(4);
    Workers event_loop(1);
    worker_threads.start(); // Create 4 internal threads
    event_loop.start(); // Create 1 internal thread

    worker_threads.post();
    event_loop.post();

    worker_threads.join(); // Calls join() on the worker threads
    event_loop.join(); // Calls join() on the event thread

    return 0;
}
