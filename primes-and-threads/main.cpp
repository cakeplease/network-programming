//Finn alle primtall mellom to gitte tall ved hjelp av et gitt antall tråder.
//Skriv til slutt ut en sortert liste av alle primtall som er funnet
//Pass på at de ulike trådene får omtrent like mye arbeid

#include <iostream>
#include <thread>
#include <vector>
#include <cmath>

using namespace std;

bool isPrime(int number) {
    if (number <= 1) {
        return false;
    }

    for (int i = 2; i < sqrt(number); i++) {
        if (number % i == 0) {
            return false;
        }
    }

    return true;
}


void findPrimes(vector<int> *numbers, vector<int> *results) {
    for (int k = 0; k<numbers->size(); k++) {
        if (isPrime(numbers->at(k))) {
            results->push_back(numbers->at(k));
        }
    }
}

int main() {
    int from;
    int to;
    int threadCount;

    cout << " Choose from number: ";
    cin >> from;

    cout << "Choose to number: ";
    cin >> to;

    cout << "Choose number of threads number: ";
    cin >> threadCount;

    vector<thread> threads;
    threads.reserve(threadCount);

    vector<vector<int>> numberpools(threadCount);
    vector<vector<int>> primepools(threadCount);

    for (int threadId = 0; threadId < threadCount; threadId++) {
        for (int number = from + threadId; number <= to; number = number + threadCount) {
            if (number <= to) {
                numberpools[threadId].push_back(number);
            }
        }
        
        threads.emplace_back(&findPrimes, &numberpools[threadId], &primepools[threadId]);
    }

    for (thread &thread : threads) {
        thread.join();
    }

    vector<int> results;

    for (auto pool : primepools) {
        for (auto prime : pool) {
            results.push_back(prime);
        }
    }

    sort(results.begin(), results.end());

    for (auto prime : results) {
        cout << prime << " ";
    }

    cout << endl;

    return 0;
}
