$(function(){
	// 승인 버튼 클릭시
	$("#register_Btn").click(function(evt){
	evt.stopPropagation();
   		evt.preventDefault();
	let can_Id = $("#can_Id").val();
		
		if( can_Id == 50){
   		 $(".delivery").val("취소 완료");

    	} else if (can_Id == 60){
    	$(".delivery").val("반품 완료");
   		 } else {
    	$(".delivery").val("교환 완료");
	    }

		//alert("ok00000");
		//alert(can_Id);
  		//run();
  		$(".cancelForm").submit();
   });
   
   // 반려 버튼 클릭시
   	$("#register_Btn2").click(function(evt){

   		
   	let can_Id = $("#can_Id").val();
		alert(can_Id);
		if( can_Id == 50){
   		 $(".delivery").val("취소 반려");

    	} else if (can_Id == 60){
    	$(".delivery").val("반품 반려");
   		 } else {
    	$(".delivery").val("교환 반려");
	    }

		$(".cancelForm").submit();
  		
   });
   

   
 
});