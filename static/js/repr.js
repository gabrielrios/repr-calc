function do_round(value) {
	return Math.round(value*100)/100
}

function do_the_math() {
	total = 0
	$('.qtd').each(function(index) {
		price = parseInt($(this).val()) * parseFloat($('#min_'+this.name).val())
		$('#price_'+this.name).text(do_round(price))
		total += price
	})
	$('#total').text(do_round(total))
}