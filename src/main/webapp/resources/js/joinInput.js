$(function(){

//아이디 중복체크 > 추후에는 [아이디 중복 확인] 버튼 클릭으로 변경하기!
	$('#signup-id').keyup(function(){
        
       
        
        $.ajax({
        	url : 'idCheck.do',
        	data : { m_Id : $('#signup-id').val() },
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


})
	

	
	
	
	
	
	
	
	
	