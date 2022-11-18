<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
      <link rel="stylesheet" href="resources/css/login.css">
        <meta name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
    </head>
    <body>
        <header>
            <h2>Login</h2>
        </header>
        
	<!--1117 로그인시 세션저장을위해  
	index.jsp 에서 loginMember.do 로 바꾸고 컨트롤러에서
	 다시 로그인시 index존으로 보내게 수정하겠습니다-->
        <form action="loginMember.do" method="POST">

            <div class="input-box">
            <!-- 아이디와 비밀번호 MemberVO와 이름이 같아야해서 VO 이름(name)으로 다 맞춤 -->
                <input id="username" type="text" name="m_Id" placeholder="아이디">
                <label for="username">아이디</label>
            </div>

            <div class="input-box">
                <input id="password" type="password" name="m_Pass" placeholder="비밀번호">
                <label for="password">비밀번호</label>
            </div>
            
         
            <input type="submit" value="로그인">
             
             
            <a href = "join.do">
            <input type="button" value="회원가입" >
            </a>

        </form>

</body>
</html>