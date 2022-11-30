<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <!-- 1117일 추가 --> 
 <% String pjName = "/semiProject"; %>   
    
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="resources/css/join.css">

    <meta charset="UTF-8">
    <title>VINTEGER 회원가입</title>
    
 
    <link rel="stylesheet" href="<%=pjName %>/resources/css/style.css">
   <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script  src="<%=pjName %>/resources/js/joinInput.js"></script>
    

</head>

<body>

    <div class="main-signup">
        <!--웹페이지 상단-->
        <header>
            <!--빈티저 LOGO 사진 과 누르면 메인화면으로 돌아가요!-->
            <div class="logo">
                <a href="http://localhost:8080/semiProject/index.jsp" target="_blank" title="빈티져 홈페이지"><img src="/semiProject/resources/images/회원가입배너.jpg"
                        class="image" width="300" height="500"></a>
            </div>
        </header>

        <!--회원가입 부분--> <!-- 11.17전송을위해 form태그를 만듬  insertJoin.do -->
      <form method ="post" action = "insertJoin.do" name = "insertjoin" class = "insertjoin">
        <section class="signup-wrap">

            <div>
                <!--아이디,비번,이메일,이름,핸드폰,우편번호,주소,상세주소-->

                <h3>아이디</h3>
                <span class="signup-input">
                    <input id="signup-id" name='m_Id' type="text" required></input>
                    <span id="idCheckResult" class="signup-at" ></span>
                </span>

                <h3>비밀번호</h3>
                <span class="signup-input">
                    <input id="signup-pw" name='m_Pass' type="text" required></input>
                    <span class="pw-lock"></span>
                </span>

                <h3>이메일</h3>
                <span class="signup-input">
                    <input id="signup-pww" name='m_Email'  type="text" placeholder="ex)abc@naver.com" required></input>
                </span>

            </div>

            <div style="margin-top: 35px;">
                <!--이름,생년월일,성별,이메일-->
                <h3>이름</h3>
                <span class="signup-input">
                    <input id="signup-name" name='m_Name' type="text" required></input>
                </span>

                <h3>핸드폰</h3>
                <span class="signup-input">
                    <input id="signup-tel" name='m_Tell' style='border:0 solid black' type="text" required></input>
                </span>

               
           	  <p>빈티저주소찾기</p>
 				 <h3>우편번호</h3> <!-- 1117일추가 -->
                <span class="signup-input">
                  <input class="signup-input" id="member_post" name='m_Num' style="border:0 solid black"  type="text" placeholder="우편번호" readonly onclick="findAddr()" required>
                </span>
                
                 <h3>주소</h3> <!-- 1117일추가 -->
                <span class="signup-input">
                   <input class="signup-input" id="member_addr"  name='m_Addr' style='border:0 solid black' type="text" placeholder="주소" required><br>
                </span>
 				 
                 <h3>상세주소</h3> <!-- 1117일추가 -->
                <span class="signup-input">
                    <input class="signup-input" id="member_subaddr" name='m_SubAddr' style='border:0 solid black' type="text" required></input>
                </span>

            </div>

            <div>
                <!--가입하기-->
                <div class="signup-btn-wrap">
                    <button id="signup-btn" >회원가입</button>
                </div>
            </div>
        </section>
       </form>
       
       

        <!--footer단-->
        <footer>
            <div class="copyright-wrap" style="font-size: 12px;">
                <div>© VINTEGER Corp.</div>
            </div>
        </footer>

    </div>

</body>
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</html>