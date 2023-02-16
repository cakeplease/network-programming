#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <thread>
#include <iostream>
#include <vector>

int valread;
int opt = 1;
int tcp_socket;
std::vector<std::thread> threads;

struct sockaddr_in my_addr, peer_addr;

void calculator(int* accepting) {
    char buffer[1024];

    while (true) {
     valread = read(*accepting, buffer, 1024);
     if (valread == -1) {
         perror("read() failed\n");
         exit(EXIT_FAILURE);
     }

    std::string message((char *)buffer);

    std::string answer_string = "";
    if (message.find_first_of('+') != std::string::npos) {
        int number1 = (int)message.front()-48;
        int number2 = (int)message.back()-48;
        int answer = number1 + number2;
        answer_string = std::to_string(answer);
        std::cout << answer << std::endl;
    } else if (message.find_first_of('-') != std::string::npos) {
        int number1 = (int)message.front()-48;
        int number2 = (int)message.back()-48;
        int answer = number1 - number2;
        std::cout << answer << std::endl;
        answer_string = std::to_string(answer);
    }
    int msg_size = send(*accepting, answer_string.c_str(), answer_string.size(), 0);

    if (msg_size <= 0) {
        perror("send() 2 failed\n");
        exit(EXIT_FAILURE);
    }

     memset(&buffer, 0, sizeof(buffer));
    }
}

void web(int* accepting) {
    std::string http_message = "HTTP/1.0 200 OK\n Content-Type: text/html; charset=utf-8\n\n <HTML><BODY>\n<H1> Hilsen. Du har koblet deg opp til min enkle web-tjener </h1>\n<ul>\n<li> ...... </li>\n</ul>\n</BODY></HTML>";
    int msg_size = send(*accepting, http_message.c_str(), http_message.size(), 0);

    if (msg_size <= 0) {
        perror("send() 2 failed\n");
        exit(EXIT_FAILURE);
    }

    close(*accepting);
}

int main() {
    //Create socket
    if ((tcp_socket = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        perror("socket() failed\n");
        exit(EXIT_FAILURE);
    } else {
        printf("Socket created.\n");
    }

    // Forcefully attaching socket to the port 8080
    if (setsockopt(tcp_socket, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt))) {
        perror("setsockopt() failed\n");
        exit(EXIT_FAILURE);
    }

    my_addr.sin_family = AF_INET;
    my_addr.sin_addr.s_addr = INADDR_ANY;
    my_addr.sin_port = htons(8080);

    //assign a name to a socket
    int binding = bind(tcp_socket, (struct sockaddr *) &my_addr, sizeof(my_addr));

    if (binding < 0) {
        perror("bind() failed\n");
        exit(EXIT_FAILURE);
    }

    //listen on port 8080
    int listening = listen(tcp_socket, 3);
    if (listening < 0) {
        perror("listen() failed\n");
        exit(EXIT_FAILURE);
    }

    int peer_addr_size = sizeof(peer_addr);

    while(true) {
        //accept connection
        int accepting = accept(tcp_socket, (struct sockaddr *) &peer_addr, (socklen_t *) &peer_addr_size);
        if (accepting < 0) {
            perror("accept() failed\n");
            for (auto &thread : threads) {
                thread.join();
            }
            exit(EXIT_FAILURE);
        } else {
            printf("Accepted a connection.\n");
            //threads.emplace_back(calculator, &accepting);
            threads.emplace_back(web, &accepting);
        }

    }
}


