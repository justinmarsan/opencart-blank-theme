<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<section id="content">
	<?php echo $content_top; ?>
  	<section class="breadcrumb">
    	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    	<?php } ?>
  	</section>
  	<h1><?php echo $heading_title; ?></h1>
  	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="payment">
    	<h2><?php echo $text_your_payment; ?></h2>
    	<section class="content">
      		<table class="form">
        		<tbody>
          			<tr>
            			<td>
							<label for="tax"><?php echo $entry_tax; ?></label>
						</td>
            			<td><input type="text" name="tax" value="<?php echo $tax; ?>" /></td>
          			</tr>
          			<tr>
            			<td>
							<label for="payment"><?php echo $entry_payment; ?></label>
						</td>
            			<td>
							<?php if ($payment == 'cheque') { ?>
              					<input type="radio" name="payment" value="cheque" id="cheque" checked="checked" />
              				<?php } else { ?>
              					<input type="radio" name="payment" value="cheque" id="cheque" />
              				<?php } ?>
              				<label for="cheque"><?php echo $text_cheque; ?></label>
              				<?php if ($payment == 'paypal') { ?>
              					<input type="radio" name="payment" value="paypal" id="paypal" checked="checked" />
              				<?php } else { ?>
              					<input type="radio" name="payment" value="paypal" id="paypal" />
              				<?php } ?>
              				<label for="paypal"><?php echo $text_paypal; ?></label>
              				<?php if ($payment == 'bank') { ?>
              					<input type="radio" name="payment" value="bank" id="bank" checked="checked" />
              				<?php } else { ?>
              					<input type="radio" name="payment" value="bank" id="bank" />
              				<?php } ?>
              				<label for="bank"><?php echo $text_bank; ?></label>
						</td>
          			</tr>
        		</tbody>
        		<tbody id="payment-cheque" class="payment">
          			<tr>
            			<td>
							<label for="cheque"><?php echo $entry_cheque; ?></label>
						</td>
            			<td><input type="text" name="cheque" value="<?php echo $cheque; ?>" /></td>
          			</tr>
        		</tbody>
        		<tbody class="payment" id="payment-paypal">
          			<tr>
            			<td>
							<label for="paypal"><?php echo $entry_paypal; ?></label>
						</td>
            			<td><input type="text" name="paypal" value="<?php echo $paypal; ?>" /></td>
          			</tr>
        		</tbody>
        		<tbody id="payment-bank" class="payment">
          			<tr>
            			<td>
							<label for="bank_name"><?php echo $entry_bank_name; ?></label>
						</td>
            			<td><input type="text" name="bank_name" value="<?php echo $bank_name; ?>" /></td>
          			</tr>
          			<tr>
            			<td>
							<label for="bank_branch_number"><?php echo $entry_bank_branch_number; ?></label>
						</td>
            			<td><input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" /></td>
          			</tr>
          			<tr>
            			<td>
							<label for="bank_swift_code"><?php echo $entry_bank_swift_code; ?></label>
						</td>
            			<td><input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" /></td>
          			</tr>
          			<tr>
            			<td>
							<label for="bank_account_name"><?php echo $entry_bank_account_name; ?></label>
						</td>
            			<td><input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" /></td>
          			</tr>
          			<tr>
            			<td>
							<label for="bank_account_number"><?php echo $entry_bank_account_number; ?></label>
						</td>
            			<td><input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" /></td>
          			</tr>
        		</tbody>
      		</table>
    	</section>
    	<div class="buttons">
      		<div class="left">
				<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
			</div>
      		<div class="right">
				<a onclick="$('#payment').submit();" class="button"><?php echo $button_continue; ?></a>
			</div>
    	</div>
  	</form>
  	<?php echo $content_bottom; ?>
</section>
<script type="text/javascript"><!--
$('input[name=\'payment\']').bind('change', function() {
	$('.payment').hide();
	
	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
//--></script> 
<?php echo $footer; ?> 