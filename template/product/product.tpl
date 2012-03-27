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
  	<div class="product-info">
    	<?php if ($thumb || $images) { ?>
    		<div class="left">
      			<?php if ($thumb) { ?>
      				<div class="image">
						<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox">
							<img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" id="image" />
						</a>
					</div>
      			<?php } ?>
      			<?php if ($images) { ?>
      				<div class="image-additional">
        				<?php foreach ($images as $image) { ?>
        					<a href="<?php echo $image['popup']; ?>" class="colorbox" rel="colorbox">
								<img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>" />
							</a>
        				<?php } ?>
      				</div>
      			<?php } ?>
    		</div>
    	<?php } ?>
    	<div class="right">
      		<div class="description">
        		<?php if ($manufacturer) { ?>
        			<span><?php echo $text_manufacturer; ?></span> 
					<a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a>
					<br />
        		<?php } ?>
        		<span><?php echo $text_model; ?></span> 
				<?php echo $model; ?><br />
        		<span><?php echo $text_reward; ?></span> 
				<?php echo $reward; ?><br />
        		<span><?php echo $text_stock; ?></span> 
				<?php echo $stock; ?></div>
      			<?php if ($price) { ?>
      				<div class="price">
						<?php echo $text_price; ?>
        				<?php if (!$special) { ?>
        					<?php echo $price; ?>
        				<?php } else { ?>
        					<span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        				<?php } ?>
        				<br />
        				<?php if ($tax) { ?>
        					<span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        				<?php } ?>
        				<?php if ($points) { ?>
        					<span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span> <br />
        				<?php } ?>
        				<?php if ($discounts) { ?>
        					<br />
        					<div class="discount">
          						<?php foreach ($discounts as $discount) { ?>
          							<?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          						<?php } ?>
        					</div>
        				<?php } ?>
      				</div>
      			<?php } ?>
      			<?php if ($options) { ?>
      				<div class="options">
        				<h2><?php echo $text_option; ?></h2>
        				<br />
        				<?php foreach ($options as $option) { ?>
        					<?php if ($option['type'] == 'select') { ?>
        						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          							<?php if ($option['required']) { ?>
          								<label for="option[<?php echo $option['product_option_id']; ?>]" class="required">
          							<?php } else { ?>
										<label for="option[<?php echo $option['product_option_id']; ?>]">
									<?php } ?>
          							<b><?php echo $option['name']; ?>:</b></label>
									<br />
          							<select name="option[<?php echo $option['product_option_id']; ?>]">
            							<option value=""><?php echo $text_select; ?></option>
            							<?php foreach ($option['option_value'] as $option_value) { ?>
            								<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            									<?php if ($option_value['price']) { ?>
            										(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            									<?php } ?>
            								</option>
            							<?php } ?>
          							</select>
        						</div>
        					<br />
        				<?php } ?>
        				<?php if ($option['type'] == 'radio') { ?>
        					<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          						<?php if ($option['required']) { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]" class="required">
          						<?php } else { ?>
									<label for="option[<?php echo $option['product_option_id']; ?>]">
								<?php } ?>
          						<b><?php echo $option['name']; ?>:</b></label>
								<br />
          						<?php foreach ($option['option_value'] as $option_value) { ?>
          							<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          							<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            							<?php if ($option_value['price']) { ?>
            								(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            							<?php } ?>
          							</label>
          							<br />
          						<?php } ?>
        					</div>
        					<br />
        				<?php } ?>
        				<?php if ($option['type'] == 'checkbox') { ?>
        					<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          						<?php if ($option['required']) { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>][]" class="required">
          						<?php } else { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>][]">
								<?php } ?>
          						<b><?php echo $option['name']; ?>:</b></label>
								<br />
          						<?php foreach ($option['option_value'] as $option_value) { ?>
          							<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          							<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"> <?php echo $option_value['name']; ?>
            							<?php if ($option_value['price']) { ?>
            								(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            							<?php } ?>
          							</label>
          							<br />
          						<?php } ?>
        					</div>
        					<br />
        				<?php } ?>
        				<?php if ($option['type'] == 'text') { ?>
        					<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          						<?php if ($option['required']) { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]" class="required">
          						<?php } else { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]">
								<?php } ?>
          						<b><?php echo $option['name']; ?>:</b></label>
								<br />
          						<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
        					</div>
        					<br />
        				<?php } ?>
        				<?php if ($option['type'] == 'textarea') { ?>
        					<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          						<?php if ($option['required']) { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]" class="required">
          						<?php } else { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]">
								<?php } ?>
          						<b><?php echo $option['name']; ?>:</b></label>
								<br />
          						<textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5">
									<?php echo $option['option_value']; ?>
								</textarea>
        					</div>
        					<br />
        				<?php } ?>
        				<?php if ($option['type'] == 'file') { ?>
        					<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          						<?php if ($option['required']) { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]" class="required">
          						<?php } else { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]">
								<?php } ?>
          						<b><?php echo $option['name']; ?>:</b></label>
								<br />
          						<a id="button-option-<?php echo $option['product_option_id']; ?>" class="button"><?php echo $button_upload; ?></a>
          						<input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
        					</div>
        					<br />
        				<?php } ?>
        				<?php if ($option['type'] == 'date') { ?>
        					<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          						<?php if ($option['required']) { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]" class="required">
          						<?php } else { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]">
								<?php } ?>
          						<b><?php echo $option['name']; ?>:</b></label>
								<br />
          						<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
        					</div>
        					<br />
        				<?php } ?>
        				<?php if ($option['type'] == 'datetime') { ?>
        					<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          						<?php if ($option['required']) { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]" class="required">
          						<?php } else { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]">
								<?php } ?>
          						<b><?php echo $option['name']; ?>:</b></label>
								<br />
          						<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
        					</div>
        					<br />
        				<?php } ?>
        				<?php if ($option['type'] == 'time') { ?>
        					<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          						<?php if ($option['required']) { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]" class="required">
          						<?php } else { ?>
          							<label for="option[<?php echo $option['product_option_id']; ?>]">
								<?php } ?>
          						<b><?php echo $option['name']; ?>:</b></label>
								<br />
          						<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
        					</div>
        					<br />
        				<?php } ?>
        			<?php } ?>
      			</div>
      		<?php } ?>
      		<section class="cart">
        		<div>
					<?php echo $text_qty; ?>
          			<input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
          			<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
          			&nbsp;
					<a id="button-cart" class="button"><?php echo $button_cart; ?></a>
				</div>
        		<div>
					<span>
						&nbsp;&nbsp;&nbsp;
						<?php echo $text_or; ?>
						&nbsp;&nbsp;&nbsp;
					</span>
				</div>
        		<div>
					<a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a><br />
          			<a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a>
				</div>
        		<?php if ($minimum > 1) { ?>
        			<div class="minimum"><?php echo $text_minimum; ?></div>
        		<?php } ?>
      		</section>
      		<?php if ($review_status) { ?>
      			<section class="review">
        			<div>
						<img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />
						&nbsp;&nbsp;
						<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>
						&nbsp;&nbsp;|&nbsp;&nbsp;
						<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
					</div>
        			<div class="share">
          				<div class="addthis_default_style">
							<a class="addthis_button_compact"><?php echo $text_share; ?></a> 
							<a class="addthis_button_email"></a><a class="addthis_button_print"></a> 
							<a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a>
						</div>
          				<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js"></script> 
         			</div>
      			</section>
      		<?php } ?>
		</div>
	</div>
	<section id="tabs" class="htabs">
		<a href="#tab-description"><?php echo $tab_description; ?></a>
		<?php if ($attribute_groups) { ?>
    		<a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
		<?php } ?>
		<?php if ($review_status) { ?>
    		<a href="#tab-review"><?php echo $tab_review; ?></a>
		<?php } ?>
		<?php if ($products) { ?>
    		<a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>
		<?php } ?>
	</section>
	<section id="tab-description" class="tab-content"><?php echo $description; ?></section>
	<?php if ($attribute_groups) { ?>
  		<section id="tab-attribute" class="tab-content">
    		<table class="attribute">
      			<?php foreach ($attribute_groups as $attribute_group) { ?>
      				<thead>
        				<tr>
          					<td colspan="2"><?php echo $attribute_group['name']; ?></td>
        				</tr>
      				</thead>
      				<tbody>
        				<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        					<tr>
          						<td><?php echo $attribute['name']; ?></td>
          						<td><?php echo $attribute['text']; ?></td>
        					</tr>
        				<?php } ?>
      				</tbody>
      			<?php } ?>
    		</table>
  		</section>
	<?php } ?>
	<?php if ($review_status) { ?>
  		<section id="tab-review" class="tab-content">
    		<div id="review"></div>
    		<h2 id="review-title"><?php echo $text_write; ?></h2>
    		<label for="name"><b><?php echo $entry_name; ?></b></label>
			<br />
    		<input type="text" name="name" value="" />
    		<br />
    		<br />
    		<label for="text"><b><?php echo $entry_review; ?></b></label>
    		<textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    		<span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    		<br />
    		<label for="rating"><b><?php echo $entry_rating; ?></b></label>
			<span><?php echo $entry_bad; ?></span>&nbsp;
    		<input type="radio" name="rating" value="1" />
    		&nbsp;
    		<input type="radio" name="rating" value="2" />
    		&nbsp;
    		<input type="radio" name="rating" value="3" />
    		&nbsp;
    		<input type="radio" name="rating" value="4" />
    		&nbsp;
    		<input type="radio" name="rating" value="5" />
    		&nbsp; <span><?php echo $entry_good; ?></span><br />
    		<br />
    		<label for="captcha"><b><?php echo $entry_captcha; ?></b></label>
			<br />
    		<input type="text" name="captcha" value="" />
    		<br />
    		<img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    		<br />
    		<div class="buttons">
      			<div class="right">
					<a id="button-review" class="button"><?php echo $button_continue; ?></a>
				</div>
    		</div>
  		</section>
	<?php } ?>
	<?php if ($products) { ?>
  		<section id="tab-related" class="tab-content">
    		<div class="box-product">
      			<?php foreach ($products as $product) { ?>
      				<div>
        				<?php if ($product['thumb']) { ?>
        					<div class="image">
								<a href="<?php echo $product['href']; ?>">
									<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
								</a>
							</div>
        				<?php } ?>
        				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        				<?php if ($product['price']) { ?>
        					<div class="price">
          						<?php if (!$product['special']) { ?>
          							<?php echo $product['price']; ?>
          						<?php } else { ?>
          							<span class="price-old"><?php echo $product['price']; ?></span> 
									<span class="price-new"><?php echo $product['special']; ?></span>
          						<?php } ?>
        					</div>
        				<?php } ?>
        				<?php if ($product['rating']) { ?>
        					<div class="rating">
								<img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
							</div>
        				<?php } ?>
        				<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a>
					</div>
      			<?php } ?>
    		</div>
  		</section>
	<?php } ?>
	<?php if ($tags) { ?>
  		<section class="tags">
			<b><?php echo $text_tags; ?></b>
    		<?php foreach ($tags as $tag) { ?>
    			<a href="<?php echo $tag['href']; ?>"><?php echo $tag['tag']; ?></a>,
    		<?php } ?>
		</section>
	<?php } ?>
  	<?php echo $content_bottom; ?>
</section>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
  overlayClose: true,
  opacity: 0.5
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
					$('.warning').fadeIn('slow');
				}
				
				for (i in json['error']) {
					$('#option-' + i).after('<span class="error">' + json['error'][i] + '</span>');
				}
			}	 
						
			if (json['success']) {
				$('#notification').html('<div class="attention" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.attention').fadeIn('slow');
					
				$('#cart_total').html(json['total']);
								
				var image = $('#image').offset();
				var cart  = $('#cart').offset();
	
				$('#image').before('<img src="' + $('#image').attr('src') + '" id="temp" style="position: absolute; top: ' + image.top + 'px; left: ' + image.left + 'px;" />');
	
				params = {
					top : cart.top + 'px',
					left : cart.left + 'px',
					opacity : 0.0,
					width : $('#cart').width(),  
					height : $('#cart').height()
				};		
	
				$('#temp').animate(params, 'slow', false, function () {
					$('#temp').remove();
				});		
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" id="loading" style="padding-left: 5px;" />');
	},
	onComplete: function(file, json) {
		$('.error').remove();
		
		if (json.success) {
			alert(json.success);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json.file);
		}
		
		if (json.error) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json.error + '</span>');
		}
		
		$('#loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');
		
	$('#review').load(this.href);
	
	$('#review').slideDown('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#review-title').after('<div class="warning">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('#review-title').after('<div class="success">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}
$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<?php echo $footer; ?>