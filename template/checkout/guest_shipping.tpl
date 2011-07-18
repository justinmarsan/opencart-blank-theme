<table class="form">
  	<tr>
    	<td>
			<label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
		</td>
    	<td><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" /></td>
  	</tr>
  	<tr>
    	<td>
			<label for="lastname" class="required"><?php echo $entry_lastname; ?></label>
		</td>
    	<td><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" /></td>
  	</tr>
  	<tr>
    	<td>
    		<label for="company"><?php echo $entry_company; ?></label>
    	</td>
    	<td><input type="text" name="company" value="<?php echo $company; ?>" class="large-field" /></td>
  	</tr>
  	<tr>
    	<td>
			<label for="address_1" class="required"><?php echo $entry_address_1; ?></label>
		</td>
    	<td><input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field" /></td>
  	</tr>
  	<tr>
    	<td>
    		<label for="address_2"><?php echo $entry_address_2; ?></label>
    	</td>
    	<td><input type="text" name="address_2" value="<?php echo $address_2; ?>" class="large-field" /></td>
  	</tr>
  	<tr>
    	<td>
			<label for="city" class="required"><?php echo $entry_city; ?></label>
		</td>
    	<td><input type="text" name="city" value="<?php echo $city; ?>" class="large-field" /></td>
  	</tr>
  	<tr>
    	<td>
			<label for="postcode" class="required"><?php echo $entry_postcode; ?></label>
		</td>
    	<td><input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field" /></td>
  	</tr>
	<tr>
   		<td>
			<label for="country_id" class="required"><?php echo $entry_country; ?></label>
		</td>
   		<td>
			<select name="country_id" class="large-field" onchange="$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=' + this.value);">
       			<option value=""><?php echo $text_select; ?></option>
       			<?php foreach ($countries as $country) { ?>
       				<?php if ($country['country_id'] == $country_id) { ?>
       					<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
       				<?php } else { ?>
       					<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
       				<?php } ?>
       			<?php } ?>
   			</select>
		</td>
	</tr>
	<tr>
   		<td>
			<label for="zone_id" class="required"><?php echo $entry_zone; ?></label>
		</td>
   		<td>
			<select name="zone_id" class="large-field"></select>
		</td>
	</tr>
</table>
<br />
<div class="buttons">
  	<div class="right">
		<a id="button-guest-shipping" class="button"><?php echo $button_continue; ?></a>
	</div>
</div>
<script type="text/javascript"><!--
$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 