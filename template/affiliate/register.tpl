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
  	<?php if ($error_warning) { ?>
  		<div class="warning"><?php echo $error_warning; ?></div>
  	<?php } ?>
  	<p><?php echo $text_account_already; ?></p>
  	<p><?php echo $text_signup; ?></p>
  	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="register">
    	<h2><?php echo $text_your_details; ?></h2>
    	<section class="content">
      		<table class="form">
        		<tr>
          			<td>
						<label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
					</td>
          			<td>
						<input type="text" name="firstname" value="<?php echo $firstname; ?>" />
            			<?php if ($error_firstname) { ?>
            				<span class="error"><?php echo $error_firstname; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="lastname" class="required"><?php echo $entry_lastname; ?></label>
					</td>
          			<td>
						<input type="text" name="lastname" value="<?php echo $lastname; ?>" />
            			<?php if ($error_lastname) { ?>
            				<span class="error"><?php echo $error_lastname; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="email" class="required"><?php echo $entry_email; ?></label>
					</td>
          			<td>
						<input type="text" name="email" value="<?php echo $email; ?>" />
            			<?php if ($error_email) { ?>
            				<span class="error"><?php echo $error_email; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="telephone" class="required"><?php echo $entry_telephone; ?></label>
					</td>
          			<td>
						<input type="text" name="telephone" value="<?php echo $telephone; ?>" />
            			<?php if ($error_telephone) { ?>
            				<span class="error"><?php echo $error_telephone; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="fax"><?php echo $entry_fax; ?></label>
					</td>
          			<td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
        		</tr>
      		</table>
    	</section>
    	<h2><?php echo $text_your_address; ?></h2>
    	<section class="content">
      		<table class="form">
        		<tr>
          			<td>
						<label for="company"><?php echo $entry_company; ?></label>
					</td>
          			<td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
        		</tr>
        		<tr>
          			<td>
						<label for="website"><?php echo $entry_website; ?></label>
					</td>
          			<td><input type="text" name="website" value="<?php echo $website; ?>" /></td>
        		</tr>
        		<tr>
          			<td>
						<label for="address_1" class="required"><?php echo $entry_address_1; ?></label>
					</td>
          			<td>
						<input type="text" name="address_1" value="<?php echo $address_1; ?>" />
            			<?php if ($error_address_1) { ?>
            				<span class="error"><?php echo $error_address_1; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="address_2"><?php echo $entry_address_2; ?></label>
					</td>
          			<td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
        		</tr>
        		<tr>
          			<td>
						<label for="city" class="required"><?php echo $entry_city; ?></label>
					</td>
          			<td><input type="text" name="city" value="<?php echo $city; ?>" />
            			<?php if ($error_city) { ?>
            				<span class="error"><?php echo $error_city; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="postcode" class="required"><?php echo $entry_postcode; ?></label>
					</td>
          			<td>
						<input type="text" name="postcode" value="<?php echo $postcode; ?>" />
            			<?php if ($error_postcode) { ?>
            				<span class="error"><?php echo $error_postcode; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="country_id" class="required"><?php echo $entry_country; ?></label>
					</td>
          			<td>
						<select name="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=account/register/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');">
              				<option value="false"><?php echo $text_select; ?></option>
              				<?php foreach ($countries as $country) { ?>
              					<?php if ($country['country_id'] == $country_id) { ?>
              						<option value="<?php echo $country['country_id']; ?>" selected="selected">
										<?php echo $country['name']; ?>
									</option>
              					<?php } else { ?>
              						<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              					<?php } ?>
              				<?php } ?>
            			</select>
            			<?php if ($error_country) { ?>
            				<span class="error"><?php echo $error_country; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="zone_id" class="required"><?php echo $entry_zone; ?></label>
					</td>
          			<td>
						<select name="zone_id"></select>
            			<?php if ($error_zone) { ?>
            				<span class="error"><?php echo $error_zone; ?></span>
            			<?php } ?>
					</td>
        		</tr>
      		</table>
    	</section>
    	<h2><?php echo $text_payment; ?></h2>
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
    	<h2><?php echo $text_your_password; ?></h2>
    	<section class="content">
      		<table class="form">
        		<tr>
          			<td>
						<label for="password"><?php echo $entry_password; ?></label>
					</td>
          			<td>
						<input type="password" name="password" value="<?php echo $password; ?>" />
            			<?php if ($error_password) { ?>
            				<span class="error"><?php echo $error_password; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="confirm" class="required"><?php echo $entry_confirm; ?></label>
					</td>
          			<td>
						<input type="password" name="confirm" value="<?php echo $confirm; ?>" />
            			<?php if ($error_confirm) { ?>
            				<span class="error"><?php echo $error_confirm; ?></span>
            			<?php } ?>
					</td>
        		</tr>
      		</table>
    	</section>
    	<?php if ($text_agree) { ?>
    		<div class="buttons">
      			<div class="right">
					<?php echo $text_agree; ?>
        			<?php if ($agree) { ?>
        				<input type="checkbox" name="agree" value="1" checked="checked" />
        			<?php } else { ?>
        				<input type="checkbox" name="agree" value="1" />
        			<?php } ?>
        				<a onclick="$('#register').submit();" class="button"><?php echo $button_continue; ?></a>
					</div>
    			</div>
    		<?php } else { ?>
    		<div class="buttons">
      			<div class="right">
					<a onclick="$('#register').submit();" class="button"><?php echo $button_continue; ?></a>
				</div>
    		</div>
    	<?php } ?>
  	</form>
  	<?php echo $content_bottom; ?>
</section>
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=account/register/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 
<script type="text/javascript"><!--
$('input[name=\'payment\']').bind('change', function() {
	$('.payment').hide();
	
	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('.fancybox').fancybox({
	width: 560,
	height: 560,
	autoDimensions: false
});
//--></script>  
<?php echo $footer; ?>