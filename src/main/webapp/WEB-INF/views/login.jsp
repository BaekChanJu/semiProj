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

        <form action="index.jsp" method="POST">

            <div class="input-box">
                <input id="username" type="text" name="username" placeholder="아이디">
                <label for="username">아이디</label>
            </div>

            <div class="input-box">
                <input id="password" type="password" name="password" placeholder="비밀번호">
                <label for="password">비밀번호</label>
            </div>
            
            <input type="submit" value="로그인">
            
            <a href = "join.do">
            <input type="button" value="회원가입" >
            </a>

        </form>

</body>
</html>