# 윈도우 기준 서버 소켓 구현   
1. Winsock 초기화   
- WSAStartup(), Winsock 서비스를 초기화

2. 소켓 생성 
- socket()
3. 주소 바인딩   
- bind(), 서버 ip & port를 소켓에 바인딩   
4. 연결 대기   
- listen()   
5. 클라이언트 연결 수락   
- accept()   
 
6. 데이터 수신 및 전송   
- recv()로 데이터 수신, send()로 클라이언트 전송
7. 소켓 종료   
- closesocket() 
 
8. Winsock 종료   
- WSACleanup()
