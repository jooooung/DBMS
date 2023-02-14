# ✨세션(session)
- jsp 파일에서는 session이 내장객체라서 바로 사용가능. 
- 자바(,서블릿)에서 session 사용하기 : `HttpSession 세션명 = request.getSession();`

## ✔세션이란
- 서버와의 관계를 유지하기 위한 수단
- 세션은 서버상에 객체로 존재. 웹컨테이너에 정보를 저장할 수 있는 내장 객체 변수이다
- 세션 객체는 자동적으로 만들어진다
- 객체를 추가 할 수 있다
- 서버에 저장되기에 보안이 좋고(java로만 접근 가능) 데이터의 한계가 없다

## ✔ 세션문법
### (1)