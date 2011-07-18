<?php echo $header; ?>
<section class="container">
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
    	<section class="content"><?php echo $text_error; ?></section>
    	<div class="buttons">
      		<div class="right">
				<a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
			</div>
    	</div>
    	<?php echo $content_bottom; ?>
	</section>
</section>
<?php echo $footer; ?>