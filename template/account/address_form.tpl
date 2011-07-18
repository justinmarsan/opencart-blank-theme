<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<section id="content">
	<?php echo $content_top; ?>
  	<section class="breadcrumb">
    	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    		<?php echo $breadcrumb['separator']; ?>
			<a href="<?php echo $breadcrumb['href']; ?>">
				<?php echo $breadcrumb['text']; ?>
			</a>
    	<?php } ?>
  	</section>
  	<h1><?php echo $heading_title; ?></h1>
  	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="address">
    	<h2><?php echo $text_edit_address; ?></h2>
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
            			<?php } ?></td>
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
          				<label for="company"><?php echo $entry_company; ?></label>
          			</td>
          			<td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
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
          			<td>
						<input type="text" name="city" value="<?php echo $city; ?>" />
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
						<select name="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');">
              				<option value=""><?php echo $text_select; ?></option>
              				<?php foreach ($countries as $country) { ?>
              					<?php if ($country['country_id'] == $country_id) { ?>
              						<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
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
        		<tr>
          			<td>
						<label for="default"><?php echo $entry_default; ?></label>
					</td>
          			<td>
						<?php if ($default) { ?>
            				<input type="radio" name="default" value="1" checked="checked" />
            				<?php echo $text_yes; ?>
            				<input type="radio" name="default" value="0" />
            					<?php echo $text_no; ?>
            			<?php } else { ?>
            				<input type="radio" name="default" value="1" />
            				<?php echo $text_yes; ?>
            				<input type="radio" name="default" value="0" checked="checked" />
            				<?php echo $text_no; ?>
            			<?php } ?>
					</td>
        		</tr>
      		</table>
    	</section>
    	<div class="buttons">
      		<div class="left">
				<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
			</div>
      		<div class="right">
				<a onclick="$('#address').submit();" class="button"><?php echo $button_continue; ?></a>
			</div>
    	</div>
  	</form>
  	<?php echo $content_bottom; ?>
</section>
<script type="text/javascript"><!--
	$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 
<?php echo $footer; ?>