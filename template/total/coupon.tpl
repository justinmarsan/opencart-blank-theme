<div>
  	<div class="cart-heading"><?php echo $heading_title; ?></div>
  	<section class="cart-content" id="coupon">
		<label for="coupon"><?php echo $entry_coupon; ?></label>
		&nbsp;
    	<input type="text" name="coupon" value="<?php echo $coupon; ?>" />
    	&nbsp;
		<a id="button-coupon" class="button"><?php echo $button_coupon; ?></a>
	</section>
</div>
<script type="text/javascript"><!--
$('#button-coupon').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=total/coupon/calculate',
		data: $('#coupon :input'),
		dataType: 'json',		
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-coupon').attr('disabled', true);
			$('#button-coupon').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-coupon').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			if (json['error']) {
				$('#basket').before('<div class="warning">' + json['error'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
			}
			
			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
//--></script> 