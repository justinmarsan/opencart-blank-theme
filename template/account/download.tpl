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
  	<?php foreach ($downloads as $download) { ?>
  		<article class="download-list">
    		<section class="download-id">
				<b><?php echo $text_order; ?></b> 
				<?php echo $download['order_id']; ?>
			</section>
    		<section class="download-status">
				<b><?php echo $text_size; ?></b> 
				<?php echo $download['size']; ?>
			</section>
    		<section class="download-content">
      			<div>
					<b><?php echo $text_name; ?></b> 
					<?php echo $download['name']; ?>
					<br />
        			<b><?php echo $text_date_added; ?></b> 
					<?php echo $download['date_added']; ?>
				</div>
      			<div>
					<b><?php echo $text_remaining; ?></b> 
					<?php echo $download['remaining']; ?>
				</div>
      			<div class="download-info">
					<a href="<?php echo $download['href']; ?>" class="button"><?php echo $text_download; ?></a>
				</div>
    		</section>
  		</article>
  	<?php } ?>
  	<section class="pagination"><?php echo $pagination; ?></section>
  	<div class="buttons">
    	<div class="right">
			<a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
		</div>
  	</div>
  	<?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>