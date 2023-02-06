#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#define PORT 8080

int main() {
    char* test = "test";
    char buffer[1024] = {0};
    struct sockaddr_in server_address;
    server_address.sin_port = htons(8080);
    server_address.sin_family = AF_INET;
    int tcp_socket = socket(AF_INET, SOCK_STREAM, 0);
    connect(tcp_socket, (struct sockaddr *) &server_address, sizeof(server_address));
    send(tcp_socket, (void *)test, strlen(test), 0);

    read(tcp_socket, buffer, 1024);
    printf("%s\n", buffer);
    return 0;
}