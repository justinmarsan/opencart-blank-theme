<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<section id="content">
	<?php echo $content_top; ?>
  	<section class="breadcrumb">
    	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    		<?php echo $breadcrumb['separator']; ?>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    	<?php } ?>
  	</section>
  	<h1><?php echo $heading_title; ?></h1>
  	<?php if ($orders) { ?>
  		<?php foreach ($orders as $order) { ?>
  			<article class="order-list">
    			<section class="order-id">
					<b><?php echo $text_order_id; ?></b> 
					#<?php echo $order['order_id']; ?>
				</section>
    			<section class="order-status">
					<b><?php echo $text_status; ?></b> 
					<?php echo $order['status']; ?>
				</section>
    			<section class="order-content">
      				<div>
						<b><?php echo $text_date_added; ?></b> 
						<?php echo $order['date_added']; ?>
						<br />
        				<b><?php echo $text_products; ?></b> 
						<?php echo $order['products']; ?>
					</div>
      				<div>
						<b><?php echo $text_customer; ?></b> 
						<?php echo $order['name']; ?>
						<br />
        				<b><?php echo $text_total; ?></b> 
						<?php echo $order['total']; ?>
					</div>
      				<div class="order-info">
						<a href="<?php echo $order['href']; ?>" class="button"><?php echo $button_view; ?></a>
					</div>
    			</section>
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