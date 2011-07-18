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
  	<p><?php echo $text_description; ?></p>
  	<p>
		<label for="code"><?php echo $text_code; ?></label>
		<br />
    	<textarea name="code" cols="40" rows="5"><?php echo $code; ?></textarea>
  	</p>
  	<p>
		<label for="product"><?php echo $text_generator; ?></label>
		<br />
    	<input type="text" name="product" value="" />
  	</p>
  	<p>
		<label for="link"><?php echo $text_link; ?></label>
		<br />
    	<textarea name="link" cols="40" rows="5"></textarea>
  	</p>
  	<div class="buttons">
    	<div class="right">
			<a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
		</div>
  	</div>
  	<?php echo $content_bottom; ?>
</section>
<script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
	delay: 0,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=affiliate/tracking/autocomplete',
			type: 'POST',
			dataType: 'json',
			data: 'filter_name=' +  encodeURIComponent(request.term),
			success: function(data) {		
				response($.map(data, function(item) {
					return {
						label: item.name,
						value: item.link
					}
				}));
			}
		});
		
	},
	select: function(event, ui) {
		$('input[name=\'product\']').attr('value', ui.item.label);
		$('textarea[name=\'link\']').attr('value', ui.item.value);
						
		return false;
	}
});
//--></script> 
<?php echo $footer; ?>