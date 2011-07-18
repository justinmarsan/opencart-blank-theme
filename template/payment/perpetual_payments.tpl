<h2><?php echo $text_credit_card; ?></h2>
<div id="payment">
  	<table class="form">
    	<tr>
      		<td>
      			<label for="cc_number"><?php echo $entry_cc_number; ?></label>
      		</td>
      		<td><input type="text" name="cc_number" value="" /></td>
    	</tr>
    	<tr>
      		<td>
      			<label for="cc_start_date_month"><?php echo $entry_cc_start_date; ?></label>
      		</td>
      		<td>
				<select name="cc_start_date_month">
          			<?php foreach ($months as $month) { ?>
          				<option value="<?php echo $month['value']; ?>"><?php echo $month['text']; ?></option>
          			<?php } ?>
        		</select>
        		/
        		<select name="cc_start_date_year">
          			<?php foreach ($year_valid as $year) { ?>
          				<option value="<?php echo $year['value']; ?>"><?php echo $year['text']; ?></option>
          			<?php } ?>
        		</select>
        		<?php echo $text_start_date; ?>
			</td>
    	</tr>
    	<tr>
      		<td>
      			<label for="cc_expire_date_month"></label>
      		</td>
      		<td>
				<select name="cc_expire_date_month">
          			<?php foreach ($months as $month) { ?>
          				<option value="<?php echo $month['value']; ?>"><?php echo $month['text']; ?></option>
          			<?php } ?>
        		</select>
        		/
        		<select name="cc_expire_date_year">
          			<?php foreach ($year_expire as $year) { ?>
          				<option value="<?php echo $year['value']; ?>"><?php echo $year['text']; ?></option>
          			<?php } ?>
        		</select>
			</td>
    	</tr>
    	<tr>
      		<td>
      			<label for="cc_cvv2"><?php echo $entry_cc_cvv2; ?></label>
      		</td>
      		<td><input type="text" name="cc_cvv2" value="" size="3" /></td>
    	</tr>
    	<tr>
      		<td>
      			<label for="cc_issue"><?php echo $entry_cc_issue; ?></label>
      		</td>
      		<td>
				<input type="text" name="cc_issue" value="" size="1" />
        		<?php echo $text_issue; ?>
			</td>
    	</tr>
  	</table>
</div>
<div class="buttons">
  	<div class="right">
		<a id="button-confirm" class="button"><?php echo $button_confirm; ?></a>
	</div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=payment/perpetual_payments/send',
		data: $('#payment :input'),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-confirm').attr('disabled', true);
			
			$('#payment').before('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		success: function(json) {
			if (json['error']) {
				alert(json['error']);
				
				$('#button-confirm').attr('disabled', false);
			}
			
			$('.attention').remove();
			
			if (json['success']) {
				location = json['success'];
			}
		}
	});
});
//--></script> 