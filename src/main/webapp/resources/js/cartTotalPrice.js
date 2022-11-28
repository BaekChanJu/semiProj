$(function(){
	
	let sum = 0;
	let price = 0;
	
	$(".totalPrice").each(function(index, item){
		price = $(this).text();
		price = Number(price);

		
		sum += price;
		

	})

	
	$("#totalPrices").text(sum);
	$('#hiddenTotalPrice').val(sum);

	


});