#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include <iostream>
#define PORT 8080

int main() {
    printf("Hello from the client! Let's try to connect to the socket.\n");
    char* test = "test";
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
        valread = read(tcp_socket, buffer, 1024);
        printf("%s\n", buffer);
        std::cin >> input;
        send(tcp_socket, (void *)input.data(), input.size(), 0);
        valread = read(tcp_socket, buffer, 1024);
        printf("%s\n", buffer);
    }
    //std::cin >> input;
    send(tcp_socket, (void *)test, strlen(test), 0);
    valread = read(tcp_socket, buffer, 1024);

    printf("%s\n", buffer);
    close(connection);
    return 0;
}