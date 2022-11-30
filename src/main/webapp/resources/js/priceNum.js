$(function(){


	$("#priceNum").change(function(evt) {
		evt.stopPropagation();
   		evt.preventDefault();
		alert($(this).val());
		$(this).val()
		alert($(this).children("option:selected").text());
		});
		
		//$("#priceNumForm").submit();
   
 
});