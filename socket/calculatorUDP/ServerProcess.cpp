#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <stdio.h>
#include <thread>
#include <iostream>
#include <vector>

int main() {
    int opt = 1;
    int udp_socket;
    //our socket's address
    struct sockaddr_in my_addr;
    //address of the client that sends us message
    struct sockaddr src_addr;
    socklen_t src_addr_length = sizeof(src_addr);
    char msg_buffer[1024];

    /**
     * Create socket. SOCK_DGRAM specifies it's an UDP socket
     */
    if ((udp_socket = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
        perror("socket() failed\n");
        exit(EXIT_FAILURE);
    } else {
        printf("Socket created.\n");
    }

    /**
     * Set socket options
     */
    if (setsockopt(udp_socket, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt))) {
        perror("setsockopt() failed\n");
        exit(EXIT_FAILURE);
    }

    my_addr.sin_family = AF_INET;
    my_addr.sin_addr.s_addr = INADDR_ANY;
    my_addr.sin_port = htons(8080);

    /**
     * Bind our socket with an IP address and port
     */
    int binding = bind(udp_socket, (struct sockaddr *) &my_addr, sizeof(my_addr));

    if (binding < 0) {
        perror("bind() failed\n");
        exit(EXIT_FAILURE);
    }

    /**
     * Spin our server
     */
    while(true) {
        /**
         * Wait for a message from the client.
         * On return, recvfrom() assigns the client's address to the empty buffer in src_addr, as well as the length of it in src_addr_length
         */
        ssize_t msg_from_client = recvfrom(udp_socket, &msg_buffer, sizeof(msg_buffer), 0, &src_addr, &src_addr_length);

        if (msg_from_client == -1) {
            perror("recvfrom() failed\n");
            exit(EXIT_FAILURE);
        }

        //Do some input processing, in this case, calculate given equation
        //TODO make better (more robust) calculator
        std::string message((char *)msg_buffer);
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

        /**
         * Send the message (answer to the equation) back
         */
        ssize_t msg_size = sendto(udp_socket, answer_string.c_str(), answer_string.size(), 0, &src_addr, src_addr_length);

        if (msg_size <= 0) {
            perror("sendto() 2 failed\n");
            exit(EXIT_FAILURE);
        }
        //Reset message buffer
        memset(&msg_buffer, 0, sizeof(msg_buffer));
    }
}


