<div class="left">
  	<h2><?php echo $text_your_details; ?></h2>
  	<label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
	<br />
  	<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" />
  	<br />
  	<br />
  	<label for="lastname" class="required"><?php echo $entry_lastname; ?></label>
	<br />
  	<input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" />
  	<br />
  	<br />
  	<label for="email" class="required"><?php echo $entry_email; ?></label>
	<br />
  	<input type="text" name="email" value="<?php echo $email; ?>" class="large-field" />
  	<br />
  	<br />
  	<label for="telephone" class="required"><?php echo $entry_telephone; ?></label>
	<br />
  	<input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field" />
  	<br />
  	<br />
  	<label for="fax"><?php echo $entry_fax; ?></label>
	<br />
  	<input type="text" name="fax" value="<?php echo $fax; ?>" class="large-field" />
  	<br />
  	<br />
</div>
<div class="right">
  	<h2><?php echo $text_your_address; ?></h2>
  	<label for="company"><?php echo $entry_company; ?></label>
	<br />
  	<input type="text" name="company" value="<?php echo $company; ?>" class="large-field" />
  	<br />
  	<br />
  	<label for="address_1" class="required"><?php echo $entry_address_1; ?></label>
	<br />
  	<input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field" />
  	<br />
  	<br />
  	<label for="address_2"><?php echo $entry_address_2; ?></label>
	<br />
  	<input type="text" name="address_2" value="<?php echo $address_2; ?>" class="large-field" />
  	<br />
  	<br />
  	<label for="city" class="required"><?php echo $entry_city; ?></label>
	<br />
  	<input type="text" name="city" value="<?php echo $city; ?>" class="large-field" />
  	<br />
  	<br />
  	<label for="postcode" class="required"><?php echo $entry_postcode; ?></label>
	<br />
  	<input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field" />
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
  	<select name="zone_id" class="large-field">
  	</select>
  	<br />
  	<br />
  	<br />
</div>
<?php if ($shipping_required) { ?>
	<div style="clear: both; padding-top: 15px; border-top: 1px solid #DDDDDD;">
  		<?php if ($shipping_address) { ?>
  			<input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
  		<?php } else { ?>
  			<input type="checkbox" name="shipping_address" value="1" id="shipping" />
  		<?php } ?>
  		<label for="shipping"><?php echo $entry_shipping; ?></label>
  		<br />
  		<br />
  		<br />
	</div>
<?php } ?>
<div class="buttons">
  	<div class="right">
		<a id="button-guest" class="button">
			<span><?php echo $button_continue; ?></span>
		</a>
	</div>
</div>
<script type="text/javascript"><!--
$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 