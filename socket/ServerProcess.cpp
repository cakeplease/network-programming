#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>

struct sockaddr_in my_addr, peer_addr;

int main() {
    bool shouldStop = false;
    char buffer[1024] = {0};
    int valread;
    char* hello = "Hello1.";
    char* hello2 = "Hello2.";
    //create an endpoint for communication
    int tcp_socket = socket(AF_INET, SOCK_STREAM, 0);

    my_addr.sin_port = htons(8080);
    //assign a name to a socket
    bind(tcp_socket, (struct sockaddr *) &my_addr, sizeof(my_addr));
    listen(tcp_socket, 3);
    int peer_addr_size = sizeof(peer_addr);
    int accepting = accept(tcp_socket, (struct sockaddr *) &peer_addr, (socklen_t *) &peer_addr_size);

    if (accepting != 0) {
        printf("Accepting connection.\n");
    }
    while (!shouldStop) {
        send(accepting, (void *) hello, strlen(hello), 0);
        valread = read(accepting, buffer, 1024);
        printf("%s\n", buffer);
        send(accepting, (void *) hello2, strlen(hello), 0);
    }

    shutdown(tcp_socket, SHUT_RDWR);
    return 0;
}