<form action="<?php echo $action; ?>" method="post" id="payment">
  	<input type="hidden" name="operation_xml" value="<?php echo $xml; ?>">
  	<input type="hidden" name="signature" value="<?php echo $signature; ?>">
  	<div class="buttons">
    	<div class="right">	
			<a onclick="$('#payment').submit();" class="button"><?php echo $button_confirm; ?></a>
		</div>
  	</div>
</form>
