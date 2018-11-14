#include <sys/types.h>
#include <iostream>
#include <sys/socket.h>>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <assert.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <fcntl.h>
int main() {
    const char *ip = "127.0.0.1";
    int port = 8998;

    int ret = 0;
    struct sockaddr_in address;
    bzero(&address, sizeof(address));
    address.sin_family = AF_INET;
    inet_pton(AF_INET,ip,&address.sin_addr);
    address.sin_port = htons(port);

    int listenfd = socket(PF_INET,SOCK_STREAM,0);
    assert(listenfd >= 0);
    ret = bind(listenfd, (struct sockaddr*)&address, sizeof(address));
    assert(ret != -1);
    ret = listen(listenfd,5);
    assert(ret != -1);

    struct sockaddr_in client_address;
    socklen_t client_addrlength = sizeof(client_address);
    int connfd = accept(listenfd,(struct sockaddr*)&client_address,&client_addrlength);

    if(connfd<0){
        printf("error");
        close(listenfd);
    }

    char buf[1024];
    fd_set read_fds;
    fd_set exception_fds;
    FD_ZERO(&read_fds);
    FD_ZERO(&exception_fds);

    while (1){
        memset(buf,'\0', sizeof(buf));
        FD_SET(connfd,&read_fds);
        FD_SET(connfd,&exception_fds);
        ret = select(connfd+1,&read_fds,NULL,&exception_fds,NULL);
        if(ret < 0){
            printf("selection failure!\n");
        }
        if(FD_ISSET(connfd,&read_fds)){
            ret = recv(connfd,buf, sizeof(buf) - 1,0);
            if(ret <= 0){
                break;
            }
            printf("get %d bytes of data:%s\n",ret,buf);
        }
        else if(FD_ISSET(connfd,&exception_fds)) {
            ret = recv(connfd, buf, sizeof(buf) - 1, MSG_OOB);
            if (ret <= 0) {
                break;
            }
        }

    }
    close(connfd);
    close(listenfd);

    //std::cout << "Hello, World!" << std::endl;
    return 0;
}