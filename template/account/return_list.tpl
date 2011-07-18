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
  	<?php if ($returns) { ?>
  		<?php foreach ($returns as $return) { ?>
  			<article class="return-list">
    			<div class="return-id">
					<b><?php echo $text_return_id; ?></b> 
					#<?php echo $return['return_id']; ?>
				</div>
    			<div class="return-status">
					<b><?php echo $text_status; ?></b> 
					<?php echo $return['status']; ?>
				</div>
    			<div class="return-content">
      				<div>
						<b><?php echo $text_date_added; ?></b> 
						<?php echo $return['date_added']; ?>
						<br />
        				<b><?php echo $text_order_id; ?></b> 
						<?php echo $return['order_id']; ?>
					</div>
      				<div>
						<b><?php echo $text_customer; ?></b> 
						<?php echo $return['name']; ?>
						<br />
        				<b><?php echo $text_products; ?></b> 
						<?php echo $return['products']; ?>
					</div>
      				<div class="return-info">
						<a href="<?php echo $return['href']; ?>" class="button"><?php echo $button_view; ?></a>
					</div>
    			</div>
  			</article>
  		<?php } ?>
  		<section class="pagination"><?php echo $pagination; ?></section>
  	<?php } else { ?>
  		<section class="content"><?php echo $text_empty; ?></section>
  	<?php } ?>
  	<div class="buttons">
    	<div class="right">
			<a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
		</div>
  	</div>
  	<?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>