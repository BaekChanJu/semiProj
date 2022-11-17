$(function(){
	
	
		//아이디
	$('#signup-btn').click(function(){ 
	
    	if( $.trim($("#signup-id").val()) == '' ){
            alert("아이디를 입력해주세요.");
            $("#signup-id").focus();
            return;
        }
        
        
        
    		//비밀번호
    	if($.trim($('#signup-input').val())==''){
    		alert("비밀번호를 입력해주세요.");
    		$('#signup-input').focus();
    		return;
    	}
    	
    
    	
    	
    	//이메일유효성검사1
    	var email = $('#signup-pww').val();
         	
  
    	if($.trim(email).length == 0){
    		alert("이메일엔터쳐라");
    		e.preventDefault();
    	}
    	if(validateEmail(email)){
    		alert('올바른 이메일입니다.')
    	}else {
    	alert('잘못된 이메일입니다.');
			e.preventDefault();
    	}
    	
    		
    	//이메일유효성검사2
    	function validateEmail(email){
    	var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    	if (filter.test(email)) {
			return true;
			}else {
			return false;
					}
    	
    	} //end of validateEmail 이메일형식유효성
    	
    	
    	
    	
    	//이름
    	if($.trim($('#signup-name').val())==''){
    		alert("이름을 입력해주세요.");
    		$('#signup-name').foucs();
    		return;
    	}
    	
    	
    	
    	//핸드폰
    	 var phonenum = $('#signup-tel').val();
    	 var regPhone = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;
    	 
    	if(!regPhone.test(phonenum)){
  			alert('잘못된 휴대폰번호입니다.');
  			$('#signup-tel').focus();
  			return false;    
 		}
 		
 		
 		//우편번호
    	if($.trim($('#member_post').val())==''){
    		alert("우편번호를 입력해주세요.");
    		$('#member_post').focus();
    		return;
    	}
    	
    	//주소
    	if($.trim($('#member_addr').val())==''){
    		alert("주소을 입력해주세요.");
    		$('#member_addr').focus();
    		return;
    	}
    	
    	//상세주소
    	if($.trim($('#member_subaddr').val())==''){
    		alert("상세주소을 입력해주세요.");
    		$('#member_subaddr').focus();
    		return;
    	}


    	
       
        // 자료를 전송합니다.
        document.joinInput.submit();
	});
	
	
	//아이디 중복체크 > 추후에는 [아이디 중복 확인] 버튼 클릭으로 변경하기!
	$('#signup-id').keyup(function(){
        
        $.ajax({
        	url : 'idCheck.do',
        	data : { userId : $('#signup-id').val() },
        	// dataType : '주로 json/xml',
        	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
        	success : checkId,
        	error : function(err){
        		alert('error');
        		console.log(err);
        	}
        });
        
        
        
        function checkId(result){
        
        	$('#idCheckResult').text(result);
        
        
        
    	} // end fo checkId()   
    	
	}) // end of keyup
	
	
	
})//main
	
	
	
	
	
	
	
	
	