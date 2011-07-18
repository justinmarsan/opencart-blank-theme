<div class="buttons">
  	<div class="right">
		<a id="button-confirm" class="button"><?php echo $button_confirm; ?></a>
	</div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
	$.ajax({ 
		type: 'GET',
		url: 'index.php?route=payment/cod/confirm',
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});
});
//--></script> 
