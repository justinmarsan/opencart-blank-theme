<div class="box">
  	<div class="box-heading"><?php echo $heading_title; ?></div>
  	<section class="box-content">
    	<div class="box-product">
      		<?php foreach ($products as $product) { ?>
      			<article>
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
        			<div class="cart">
						<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a>
					</div>
      			</article>
      		<?php } ?>
    	</div>
  	</section>
</div>
