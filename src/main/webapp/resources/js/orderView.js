$(function(){
	
$(".delivery1_btn").click(function(){
    $(".delivery").val("배송 중");
    run();
   });
   
   $(".delivery2_btn").click(function(){
    $(".delivery").val("배송 완료");
    run();
    
   });
   

   
   function run(){
    $(".deliveryForm").submit();
   }

});