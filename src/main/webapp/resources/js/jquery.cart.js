/**
 *  장바구니 jquery
 */
 
$(function(){

	// 장바구니 추가 버튼
	$("#cart_btn").on("click", function(e){
	/////// 로그인 여부 확인후 카트로 넘어가야함 안됫을시 로그인화면 페이지변환 방법확인
		if( $("#m_Id").val() == "" ) {
			  $('#cartForm').attr('action','login.do');
		}else {
		


		var param = $('#cartForm').serialize();
	$.ajax({
		url: 'cart.do',
		type: 'POST',
		data: param,
		success: function(result){
			cartAlert(result);
		},
		error : function(err){
			console.log(err)
		}
		
		}); // end of ajax
		
		}// end of else
		
	function cartAlert(result){
	
		//alert(result);
		
		if(result == '0'){
			alert("장바구니에 추가를 하지 못하였습니다.");
		} else if(result == '1'){
			alert("장바구니에 추가되었습니다.");
		} else if(result == '2'){
			alert("장바구니에 이미 추가되어져 있습니다.");
		} else if(result == '5'){
			alert("로그인이 필요합니다.");	
		}
	} //end of 	 cartAlert(result)
	
	});// end of #cart



});