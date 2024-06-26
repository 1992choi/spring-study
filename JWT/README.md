# JWT



## 1. 인증방식
### 1.1. 인증 방식 종류
- 서버가 클라이언트를 인증하는 방식으로는 대표적으로 '세션/쿠키'을 이용하는 방식과 '토큰'을 이용하는 방식이 있다.  
  \- 세션/쿠키   
  <img src="https://github.com/1992choi/spring-study/blob/main/JWT/docs/session.png" width="800" /><br><br><br><br><br>
  \- 토큰   
  <img src="https://github.com/1992choi/spring-study/blob/main/JWT/docs/token.png" width="800" /><br><br><br><br><br>
### 1.2. 인증 방식별 장단점
- 세션/쿠키 장점   
  \- 세션 ID를 즉시 무효화할 수 있다.   
  \- 민감한 정보를 담고있지 않아 토큰에 비해 안전하다.   
- 세션/쿠키 단점   
  \- 위조 공격에 노출될 수 있다.   
  \- 세션 ID를 가로채서 서버에 유해한 요청을 할 수 있다.   
  \- 서버에 저장되기 때문에 한꺼번에 다중 접속자가 발생한다면 과부하가 발생할 수 있다.      
- 토큰 장점   
  \- 서버의 메모리나 스토리지 등에 저장하던 세션 방식과 달리 클라이언트에 저장되기 때문에 서버의 부담을 줄일 수 있다.      
  \- Header와 Payload를 가지고 Signature를 생성하기 때문에 데이터 위변조를 막을 수 있다.   
  \- 세션방식과 다르게 서버는 무상태(Stateless)이기 때문에 확정성이 우수하다.   
- 토큰 단점   
  \- 토큰을 탈취당하면 정상적으로 인증되지 않은 제 3자에게 정보를 제공하게 된다.   



## 2. JWT 개요
### 2.1. JWT란?
- JWT(Json Web Token)는 인증에 필요한 정보들을 암호화시킨 JSON 형태의 토큰을 말한다.
### 2.2. JWT 구조
- JWT는 Header, Payload, Signature로 구성된다.   
  \- Header : 알고리즘 및 토큰타입을 담고있다.   
  \- Payload : 클라이언트의 고유ID, 유효 기간 등을 담고있다.      
  \- Signature : 인코딩된 Header와 Payload를 더한 뒤 비밀키로 해싱한 정보를 담고있다.    



## 3. JWT 보안 전략
### 3.1. Refresh토큰의 도입
- JWT도 제 3자에게 토큰 탈취의 위험성이 있다.   
위험을 줄이기 위하여 유효기간을 짧게 선택할 경우, 인증을 자주 받아야하는 불편함이 있다.   
이러한 문제를 해결하기 위하여 토큰을 그대로 사용하는 것이 아닌 Access토큰과 Refresh토큰으로 나누어 이중으로 구성하게 된다. 
### 3.2. Access토큰과 Refresh토큰
- Access토큰 : 요청에 사용되는 토큰으로, 생명주기가 짧기 때문에 탈취 당하더라도 위험성이 낮아진다.
- Refresh토큰 : 만료기간이 짧은 Access토큰을 재발급받기 위한 토큰으로 생명주기가 보다 길다. 정상적인 Refresh토큰을 통해 Access토큰을 재발급 받을 수 있다.   

## 4. JWT 인증
### 4.1. JWT 인증과정
<img src="https://github.com/1992choi/spring-study/blob/main/JWT/docs/jwt.png" width="800" /><br>
1. 클라이언트는 ID와 PASSWORD를 사용하여 로그인을 시도한다. 
2. 서버는 로그인 정보를 토대로 유효한 사용자인지 판단한다.
3. 유효한 사용자인 경우, Access토큰과 Refresh토큰을 발급한다.
4. 발급한 토큰을 클라이언트로 전달한다.
5. 클라이언트는 매 요청마다 발급받은 Access토큰을 헤더에 담아 요청한다.
6. 서버는 Access토큰이 유효한 토큰인지 검증한다.
7. 유효한 Access토큰이라면 클라이언트의 요청에 응답한다.
8. Access토큰이 만료
9. [5]번과 동일하게 Access토큰을 헤더에 담아 요청
10. 서버는 Access토큰이 유효한지 검증하는 과정에서 만료된 토큰임을 확인한다.
11. 서버는 Access토큰이 만료된 토큰이라고 응답을 한다.
12. 클라이언트는 최초에 발급받은 Access토큰과 Refresh토큰을 사용하여 서버에 Access토큰 재발급 요청을 한다.
13. 서버는 Access토큰과 Refresh토큰이 모두 유효한 토큰이면, 재발급한 Access토큰을 전달한다.

