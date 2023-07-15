# 1. keycloak
## 1.1. keycloak 설치
- https://www.keycloak.org/downloads에 접속하여 설치하고자하는 버전을 선택한 후 설치한다.





## 1.2. keycloak 환경설정
### 1.2.1. 실행
- 다운로드를 받은 후 'keycloak-15.0.2/bin' 경로의 'standalone.bat'을 실행한다.
- 쉘 실행이 완료되면, 'http://localhost:8080/auth'로 접속한다.


### 1.2.2. 계정생성
- 계정 및 패스워드를 입력하고 Create 버튼을 누른다.   
<img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/create_account.PNG" width="900px" height="500px"></img><br><br>


### 1.2.3. 로그인
- 계정과 패스워드를 입력한 후 로그인한다.   
<img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/login.PNG" width="900px" height="500px"></img><br><br>


### 1.2.4. Realm 생성
- Add realm 버튼을 클릭한다.   
<img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/realm_1.PNG" width="900px" height="500px"></img><br><br>
- Name을 입력하고 'Create' 버튼을 클릭한다.   
<img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/realm_2.PNG" width="900px" height="500px"></img><br><br>


### 1.2.5. Client 생성
- 좌측메뉴 중 'Clients'를 클릭후 나오는 화면에서 'Create' 버튼을 클릭한다.   
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/client_1.PNG" width="900px" height="500px"></img><br><br>
- 정보를 입력 후 'Save' 버튼을 클릭한다.   
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/client_2.PNG" width="900px" height="500px"></img><br><br>
- 화면과 같이 정보를 수정한 후 'Save' 버튼을 클릭한다.   
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/client_3.PNG" width="900px" height="500px"></img><br><br>


### 1.2.6. Role 생성
- 좌측메뉴 중 'Roles'를 클릭후 나오는 화면에서 'Add Role' 버튼을 클릭한다.   
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/role_1.PNG" width="900px" height="500px"></img><br><br>
- 정보를 입력 후 'Save' 버튼을 클릭한다.      
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/role_2.PNG" width="900px" height="500px"></img><br><br>


### 1.2.7. User 생성
- 좌측메뉴 중 'Users'를 클릭후 나오는 화면에서 'Add user' 버튼을 클릭한다.   
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/user_1.PNG" width="900px" height="500px"></img><br><br>
- 정보를 입력 후 'Save' 버튼을 클릭한다.   
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/user_2.PNG" width="900px" height="500px"></img><br><br>
- 생성이 완료되었으면, 'Credentials' 탭으로 이동하여 비밀번호를 설정한다.      
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/user_3.PNG" width="900px" height="500px"></img><br><br>
- 'Details' 탭으로 이동 후 'Required User Actions'의 설정 값을 지운다.          
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/user_4.PNG" width="900px" height="500px"></img><br><br>
- 'Role Mappings' 탭으로 이동 후, 알맞은 권한을 부여한다.       
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/user_5.PNG" width="900px" height="500px"></img><br><br>





## 1.3. keycloak 토큰 발급
### 1.3.1. client의 secret 확인
- 생성한 client를 클릭한 후, 'Credentials' 탭으로 들어가 secret 값을 확인한다.   
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/token_1.PNG" width="900px" height="500px"></img><br><br>


### 1.3.1. 토큰생성
- client_id, client_secret, user_name, password를 입력한 후 서버로 요청을 보낸다.      
  <img src="https://github.com/Young-Geun/Keycloak/blob/main/docs/token_2.PNG" width="900px" height="500px"></img>
