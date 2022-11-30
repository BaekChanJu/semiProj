$(function(){


	$("#register_Btn").click(function(){
		const select = $("#can_Message1 option:selected").val();
		console.log(select);
  		let message2 = $("#can_Message2").val();
  		let b_Id = $("#b_Id").val();
  		let can_Id = $("#can_Id").val();

		if( can_Id == 50){
   		 $(".delivery").val("취소 요청");
    	} else if (can_Id == 60){
    	$(".delivery").val("반품 요청");
   		 } else {
    	$(".delivery").val("교환 요청");
	    }

  		run();
   });
   

   
   
   function run(){
    $(".cancelForm").submit();
   }
});