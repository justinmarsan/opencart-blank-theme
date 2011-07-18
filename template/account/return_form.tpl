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
  	<?php echo $text_description; ?>
  	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="return">
    	<h2><?php echo $text_order; ?></h2>
    	<section class="content">
      		<div class="left">
				<label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
				<br />
        		<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" />
        		<br />
        		<?php if ($error_firstname) { ?>
        			<span class="error"><?php echo $error_firstname; ?></span>
        		<?php } ?>
        		<br />
        		<label for="lastname" class="required"><?php echo $entry_lastname; ?></label>
				<br />
        		<input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" />
        		<br />
        		<?php if ($error_lastname) { ?>
        			<span class="error"><?php echo $error_lastname; ?></span>
        		<?php } ?>
        		<br />
        		<label for="email" class="required"><?php echo $entry_email; ?></label>
				<br />
        		<input type="text" name="email" value="<?php echo $email; ?>" class="large-field" />
        		<br />
        		<?php if ($error_email) { ?>
        			<span class="error"><?php echo $error_email; ?></span>
        		<?php } ?>
        		<br />
        		<label for="telephone" class="required"><?php echo $entry_telephone; ?></label>
				<br />
        		<input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field" />
        		<br />
        		<?php if ($error_telephone) { ?>
        			<span class="error"><?php echo $error_telephone; ?></span>
        		<?php } ?>
        		<br />
      		</div>
      		<div class="right">
				<label for="order_id" class="required"><?php echo $entry_order_id; ?></label>
				<br />
        		<input type="text" name="order_id" value="<?php echo $order_id; ?>" class="large-field" />
        		<br />
        		<?php if ($error_order_id) { ?>
        			<span class="error"><?php echo $error_order_id; ?></span>
        		<?php } ?>
        		<br />
        		<label for="date_ordered"><?php echo $entry_date_ordered; ?></label>
				<br />
        		<input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="large-field date" />
        		<br />
      		</div>
    	</section>
    	<h2><?php echo $text_product; ?></h2>
    	<section id="return-product">
      		<?php $return_product_row = 0; ?>
      		<?php foreach ($return_products as $return_product) { ?>
      			<article id="return-product-row<?php echo $return_product_row; ?>">
        			<section class="content">
          				<section class="return-product">
            				<div class="return-name">
								<label for="return_product[<?php echo $return_product_row; ?>][name]" class="required">
									<b><?php echo $entry_product; ?></b>
								</label>
								<br />
              					<input type="text" name="return_product[<?php echo $return_product_row; ?>][name]" value="<?php echo $return_product['name']; ?>" />
              					<br />
              					<?php if (isset($error_name[$return_product_row])) { ?>
              						<span class="error"><?php echo $error_name[$return_product_row]; ?></span>
              					<?php } ?>
            				</div>
            				<div class="return-model">
								<label for="return_product[<?php echo $return_product_row; ?>][model]" class="required">
									<b><?php echo $entry_model; ?></b>
								</label>
								<br />
              					<input type="text" name="return_product[<?php echo $return_product_row; ?>][model]" value="<?php echo $return_product['model']; ?>" />
              					<br />
              					<?php if (isset($error_model[$return_product_row])) { ?>
              						<span class="error"><?php echo $error_model[$return_product_row]; ?></span>
              					<?php } ?>
            				</div>
            				<div class="return-quantity">
								<label for="return_product[<?php echo $return_product_row; ?>][quantity]">
									<b><?php echo $entry_quantity; ?></b>
								</label>
								<br />
              					<input type="text" name="return_product[<?php echo $return_product_row; ?>][quantity]" value="<?php echo $return_product['quantity']; ?>" />
            				</div>
          				</section>
          				<section class="return-detail">
            				<div class="return-reason">
								<span class="required">
									<b><?php echo $entry_reason; ?></b>
								</span>
								<br />
              					<table>
                					<?php foreach ($return_reasons as $return_reason) { ?>
                						<?php if (isset($return_product['return_reason_id']) && $return_reason['return_reason_id'] == $return_product['return_reason_id']) { ?>
                							<tr>
                  								<td width="1">
													<input type="radio" name="return_product[<?php echo $return_product_row; ?>][return_reason_id]" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_product_row; ?><?php echo $return_reason['return_reason_id']; ?>" checked="checked" />
												</td>
                  								<td>
													<label for="return-reason-id<?php echo $return_product_row; ?><?php echo $return_reason['return_reason_id']; ?>">
														<?php echo $return_reason['name']; ?>
													</label>
												</td>
                							</tr>
                						<?php } else { ?>
                							<tr>
                  								<td width="1">
													<input type="radio" name="return_product[<?php echo $return_product_row; ?>][return_reason_id]" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_product_row; ?><?php echo $return_reason['return_reason_id']; ?>" />
												</td>
                  								<td>
													<label for="return-reason_id<?php echo $return_product_row; ?><?php echo $return_reason['return_reason_id']; ?>">
														<?php echo $return_reason['name']; ?>
													</label>
												</td>
                							</tr>
                						<?php  } ?>
                					<?php  } ?>
              					</table>
              					<?php if (isset($error_reason[$return_product_row])) { ?>
              						<span class="error"><?php echo $error_reason[$return_product_row]; ?></span>
              					<?php } ?>
            				</div>
            				<div class="return-opened">
								<label for="return_product[<?php echo $return_product_row; ?>][opened]">
									<b><?php echo $entry_opened; ?></b>
								</label>
								<br />
              					<?php if ($return_product['opened']) { ?>
              						<input type="radio" name="return_product[<?php echo $return_product_row; ?>][opened]" value="1" id="opened<?php echo $return_product_row; ?>" checked="checked" />
              					<?php } else { ?>
              						<input type="radio" name="return_product[<?php echo $return_product_row; ?>][opened]" value="1" id="opened<?php echo $return_product_row; ?>" />
              					<?php } ?>
              					<label for="opened<?php echo $return_product_row; ?>"><?php echo $text_yes; ?></label>
              					<?php if (!$return_product['opened']) { ?>
              						<input type="radio" name="return_product[<?php echo $return_product_row; ?>][opened]" value="0" id="unopened<?php echo $return_product_row; ?>" checked="checked" />
              					<?php } else { ?>
              						<input type="radio" name="return_product[<?php echo $return_product_row; ?>][opened]" value="0" id="unopened<?php echo $return_product_row; ?>" />
              					<?php } ?>
              					<label for="unopened<?php echo $return_product_row; ?>"><?php echo $text_no; ?></label>
              					<br />
              					<br />
              					<label for="return_product[<?php echo $return_product_row; ?>][comment]">
									<?php echo $entry_fault_detail; ?>
								</label>
								<br />
              					<textarea name="return_product[<?php echo $return_product_row; ?>][comment]" cols="45" rows="6">
									<?php echo $return_product['comment']; ?>
								</textarea>
            				</div>
            				<div class="return-remove">
								<a onclick="$('#return-product-row<?php echo $return_product_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a>
							</div>
          				</section>
        			</section>
      			</article>
      			<?php $return_product_row++; ?>
      		<?php } ?>
    	</section>
    	<div class="buttons">
      		<div class="right">
				<a onclick="addReturnProduct();" class="button"><?php echo $button_add_product; ?></a>
			</div>
    	</div>
    	<h2><?php echo $text_additional; ?></h2>
    	<section class="return-additional">
      		<div class="return-comment">
        		<textarea name="comment" cols="50" rows="6"><?php echo $comment; ?></textarea>
      		</div>
      		<div class="return-captcha">
				<label for="captcha" class="required">
					<b><?php echo $entry_captcha; ?></b>
				</label>
				<br />
        		<input type="text" name="captcha" value="<?php echo $captcha; ?>" />
        		<br />
        		<img src="index.php?route=account/return/captcha" alt="" />
        		<?php if ($error_captcha) { ?>
        			<span class="error"><?php echo $error_captcha; ?></span>
        		<?php } ?>
      		</div>
    	</section>
    	<div class="buttons">
      		<div class="left">
				<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
			</div>
      		<div class="right">
				<a onclick="$('#return').submit();" class="button"><?php echo $button_continue; ?></a>
			</div>
    	</div>
  	</form>
  	<?php echo $content_bottom; ?>
</section>
<script type="text/javascript"><!--
var return_product_row = <?php echo $return_product_row; ?>;

function addReturnProduct() {
	html  = '<div id="return-product-row' + return_product_row + '">';
	html += '  <div class="content">';
	html += '    <div class="return-product">';
	html += '      <div class="return-name"><span class="required">*</span> <?php echo $entry_product; ?><br /><input type="text" name="return_product[' + return_product_row + '][name]" value="" /></div>';
	html += '      <div class="return-model"><span class="required">*</span> <?php echo $entry_model; ?><br /><input type="text" name="return_product[' + return_product_row + '][model]" value="" /></div>';
	html += '      <div class="return-quantity"><?php echo $entry_quantity; ?><br /><input type="text" name="return_product[' + return_product_row + '][quantity]" value="1" /></div>';
	html += '    </div>';
	html += '    <div class="return-detail">';
	html += '      <div class="return-reason"><span class="required">*</span> <?php echo $entry_reason; ?><br />';
	html += '        <table>';
	<?php foreach ($return_reasons as $return_reason) { ?>
	html += '          <tr>';
	html += '            <td width="1"><input type="radio" name="return_product[' + return_product_row + '][return_reason_id]" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id' + return_product_row + '<?php echo $return_reason['return_reason_id']; ?>" /></td>';
	html += '            <td><label for="return-reason-id' + return_product_row + '<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label></td>';
	html += '          </tr>';
	<?php  } ?>
	html += '        </table>';
	html += '    </div>';
	html += '    <div class="return-opened"><?php echo $entry_opened; ?><br />';
	html += '      <input type="radio" name="return_product[' + return_product_row + '][opened]" value="1" id="opened' + return_product_row + '" checked="checked" /><?php echo $text_yes; ?><label for="opened' + return_product_row + '"></label> <input type="radio" name="return_product[' + return_product_row + '][opened]" value="0" id="unopened' + return_product_row + '" /><label for="unopened' + return_product_row + '"><?php echo $text_no; ?></label><br /><br />';	
	html += '	   <?php echo $entry_fault_detail; ?><br /><textarea name="return_product[' + return_product_row + '][comment]" cols="45" rows="6"></textarea>';
	html += '    </div>';
    html += '    <div class="return-remove"><a onclick="$(\'#return-product-row' + return_product_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></div>';
	html += '  </div>';
	html += '</div>';
	
	$('#return-product').append(html);
 
	$('#return-product-row' + return_product_row + ' .date').datepicker({dateFormat: 'yy-mm-dd'});
	
	return_product_row++;
}
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<?php echo $footer; ?>