#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <arpa/inet.h>
#include <string.h>
#include <sys/socket.h>
#include <iostream>

int main() {
    printf("Hello from the client! Let's try to create a socket.\n");
    char msg_buffer[1024];
    std::string input;
    bool shouldStop = false;
    struct sockaddr_in server_addr;
    socklen_t msg_length;

    //IP address of the server we want to send the message to, change this when you don't work locally
    const char* server_ip_address = "127.0.0.1";

    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(8080);
    server_addr.sin_addr.s_addr = INADDR_ANY;

    /**
     * Create socket. SOCK_DGRAM specifies it's an UDP socket
     */
    int udp_socket = socket(AF_INET, SOCK_DGRAM, 0);
    if (udp_socket<0) {
        printf("Failed to create a socket. \n");
        return -1;
    } else {
        printf("Socket created. \n");
    }

    //Convert IP address from text to binary
    if (inet_pton(AF_INET, server_ip_address, &server_addr.sin_addr) <= 0) {
        printf("\nInvalid address/ Address not supported \n");
        return -1;
    }

    while (!shouldStop) {
        std::cin >> input;
        if (input == "stop") {
            shouldStop = true;
        } else {
            //Reset message buffer
            memset(&msg_buffer, 0, sizeof(msg_buffer));

            /**
             * Send our message, in this case a valid equation
             */
            ssize_t msg_size = sendto(udp_socket, input.c_str(), sizeof(input.c_str()), 0, (struct sockaddr *) &server_addr, sizeof(server_addr));
            if (msg_size <= 0) {
                perror("sendto() failed\n");
                exit(EXIT_FAILURE);
            }
            /**
             * Wait for response from server
             */
            ssize_t response = recvfrom(udp_socket, &msg_buffer, sizeof(msg_buffer), 0, ( struct sockaddr *) &server_addr,&msg_length);
            if (response == -1) {
                perror("recvfrom() failed\n");
                exit(EXIT_FAILURE);
            }

            //Print out the answer
            std::cout << msg_buffer << std::endl;
        }
    }

    return 0;
}