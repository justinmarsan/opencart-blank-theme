<?php if ($reviews) { ?>
	<?php foreach ($reviews as $review) { ?>
		<article class="content">
			<b><?php echo $review['author']; ?></b> | 
			<img src="catalog/view/theme/default/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" />
			<br />
  			<?php echo $review['date_added']; ?><br />
  			<br />
  			<?php echo $review['text']; ?>
		</article>
	<?php } ?>
	<section class="pagination"><?php echo $pagination; ?></section>
<?php } else { ?>
	<section class="content"><?php echo $text_no_reviews; ?></section>
<?php } ?>
