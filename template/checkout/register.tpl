<div class="left">
  	<h2><?php echo $text_your_details; ?></h2>
  	<label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
	<br />
  	<input type="text" name="firstname" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="lastname" class="requires"><?php echo $entry_lastname; ?></label>
	<br />
  	<input type="text" name="lastname" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="email" class="required"><?php echo $entry_email; ?></label>
	<br />
  	<input type="text" name="email" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="telephone" class="required"><?php echo $entry_telephone; ?></label>
	<br />
  	<input type="text" name="telephone" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="fax"><?php echo $entry_fax; ?></label>
	<br />
  	<input type="text" name="fax" value="" class="large-field" />
  	<br />
  	<br />
  	<h2><?php echo $text_your_password; ?></h2>
  	<label for="password" class="required"><?php echo $entry_password; ?></label>
	<br />
  	<input type="password" name="password" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="confirm" class="required"><?php echo $entry_confirm; ?></label>
	<br />
  	<input type="password" name="confirm" value="" class="large-field" />
  	<br />
  	<br />
  	<br />
</div>
<div class="right">
  	<h2><?php echo $text_your_address; ?></h2>
  	<label for="company"><?php echo $entry_company; ?></label>
	<br />
  	<input type="text" name="company" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="address_1" class="required"><?php echo $entry_address_1; ?></label>
	<br />
  	<input type="text" name="address_1" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="address_2"><?php echo $entry_address_2; ?></label>
	<br />
  	<input type="text" name="address_2" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="city" class="required"><?php echo $entry_city; ?></label>
	<br />
  	<input type="text" name="city" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="postcode" class="required"><?php echo $entry_postcode; ?></label>
	<br />
  	<input type="text" name="postcode" value="" class="large-field" />
  	<br />
  	<br />
  	<label for="country_id" class="required"><?php echo $entry_country; ?></label>
	<br />
  	<select name="country_id" class="large-field" onchange="$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=' + this.value);">
    	<option value=""><?php echo $text_select; ?></option>
    	<?php foreach ($countries as $country) { ?>
    		<?php if ($country['country_id'] == $country_id) { ?>
    			<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
    		<?php } else { ?>
    			<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
    		<?php } ?>
    	<?php } ?>
  	</select>
  	<br />
  	<br />
  	<label for="zone_id" class="required"><?php echo $entry_zone; ?></label>
	<br />
  	<select name="zone_id" class="large-field"></select>
  	<br />
  	<br />
  	<br />
</div>
<div style="clear: both; padding-top: 15px; border-top: 1px solid #EEEEEE;">
  	<input type="checkbox" name="newsletter" value="1" id="newsletter" />
  	<label for="newsletter"><?php echo $entry_newsletter; ?></label>
  	<br />
  	<?php if ($shipping_required) { ?>
  		<input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
  		<label for="shipping"><?php echo $entry_shipping; ?></label>
  		<br />
  	<?php } ?>
  	<br />
  	<br />
</div>
<?php if ($text_agree) { ?>
	<div class="buttons">
  		<div class="right">
			<?php echo $text_agree; ?>
    		<input type="checkbox" name="agree" value="1" />
    		<a id="button-register" class="button"><?php echo $button_continue; ?></a>
		</div>
	</div>
<?php } else { ?>
	<div class="buttons">
  		<div class="right">
			<a id="button-register" class="button"><?php echo $button_continue; ?></a>
		</div>
	</div>
<?php } ?>
<script type="text/javascript"><!--
$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>');
//--></script>
<script type="text/javascript"><!--
$('.fancybox').fancybox({
	width: 560,
	height: 560,
	autoDimensions: false
});
//--></script>  