#include <WinSock2.h>
#include <stdio.h>

#pragma comment(lib, "Ws2_32.lib")

#define PORT 8080
#define BACKLOG 5	// listen 대기 queue
					// 클라이언트의 연결 요청을 대기

void error_handling(char* message) {
	fprintf(stderr, "%s: %d\n", message, WSAGetLastError());
	exit(1);
}

/*
	구조체 문법
	typedef struct { ... } WSADATA;
	위와 같을 경우 구조체 사용시 struct를 생략하고
	WSADATA wsaData; 와 같은 형식으로 사용이 가능하다.
*/
int main() {
	WSADATA wsaData; // WSADATA 구조체 생성
	SOCKET server_sockfd; // SOCKET 구조체 생성 
	SOCKET client_sockfd;
	struct sockaddr_in server_addr, client_addr;
	int client_addr_size;

	// 1. Winsock 초기화
	if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
		error_handling("WSAStartup() error, Winsock 초기화 에러입니다");
	}

	// 2. 소켓 생성
	server_sockfd = socket(PF_INET, SOCK_STREAM, 0);
	if (server_sockfd == INVALID_SOCKET) {
		error_handling("socket() error, 소켓 생성 에러입니다");
	}

	// 3. 주소 바인딩 전 초기화 및 설정
	memset(&server_addr, 0, sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	server_addr.sin_port = htons(PORT);

	// 3-2. 주소 바인딩
	if (bind(server_sockfd, (struct sockaddr*)&server_addr, sizeof(server_addr)) == SOCKET_ERROR) {
		error_handling("bind() error, 주소 바인딩 에러입니다");
	}

	// 4. 연결 대기
	if (listen(server_sockfd, BACKLOG) == SOCKET_ERROR) {
		error_handling("listen() error, 연결 대기 오류입니다");
	}

	// 5. 클라이언트 연결 수락
	client_addr_size = sizeof(client_addr); // 클라이언트의 주소 크기
	client_sockfd = accept(server_sockfd, (struct sockaddr*)&client_addr, &client_addr_size);
	if (client_sockfd == INVALID_SOCKET) {
		error_handling("accept() error, 클리이언트 연결 오류(수락x)");
	}

	// 6. 데이터 수신 및 전송, recv() 데이터 수신, send() 클라 전송

	// 7. 소켓 종료
	closesocket(client_sockfd);
	closesocket(server_sockfd);

	// 8. Winsock 종료
	WSACleanup();

	return 0;
}