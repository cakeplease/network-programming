#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include <iostream>

int main() {
    printf("Hello from the client! Let's try to connect to the socket.\n");
    int valread;
    char buffer[1024] = {0};
    struct sockaddr_in server_address;
    server_address.sin_port = htons(8080);
    server_address.sin_family = AF_INET;
    int tcp_socket = socket(AF_INET, SOCK_STREAM, 0);
    std::string input;
    bool shouldStop = false;

    if (tcp_socket<0) {
        printf("Failed to create a socket\n");
        return -1;
    } else {
        printf("Created socket. \n");
    }

    if (inet_pton(AF_INET, "127.0.0.1", &server_address.sin_addr) <= 0) {
        printf("\nInvalid address/ Address not supported \n");
        return -1;
    }

    int connection = connect(tcp_socket, (struct sockaddr *) &server_address, sizeof(server_address));
    if (connection != 0) {
        printf("Failed connecting.\n");
    }

    while (!shouldStop) {
        std::cin >> input;
        if (input == "stop") {
            shouldStop = true;
        } else {
            memset(&buffer, 0, sizeof(buffer));
            int msg_size = send(tcp_socket, &input, sizeof(input), 0);
            if (msg_size <= 0) {
                perror("send() failed\n");
                exit(EXIT_FAILURE);
            }

            valread = read(tcp_socket, buffer, 1024);
            if (valread == -1) {
                perror("read() failed\n");
                exit(EXIT_FAILURE);
            }
            std::cout << buffer << std::endl;
        }
    }

    close(connection);
    return 0;
}