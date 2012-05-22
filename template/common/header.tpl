<?php 
	if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n";
?>

<?php include('_config.tpl'); ?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title><?php echo $title; ?></title>
	
	<base href="<?php echo $base; ?>" >
	
	<?php if ($description) { ?>
		<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
		<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<meta name="author" content="<?php echo $name; ?>">
	
	<?php if ($icon) { ?>
		<link href="<?php echo $icon; ?>" rel="icon" />
		<link rel="shortcut icon" href="<?php echo $icon; ?>">
		<link rel="apple-touch-icon" href="<?php echo $icon; ?>">
	<?php } ?>
	
	<?php foreach ($links as $link) { ?>
		<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	<link rel="stylesheet" type="text/css" href="<?php echo TEMPLATE_FOLDER; ?>/stylesheet/stylesheet.css" />
	<?php foreach ($styles as $style) { ?>
		<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	
	<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
	<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
	<?php foreach ($scripts as $script) { ?>
		<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
	
	<!--[if IE 7]>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
	<![endif]-->
	<!--[if lt IE 7]>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
		<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
		<script type="text/javascript">
			DD_belatedPNG.fix('#logo img');
		</script>
	<![endif]-->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<?php echo $google_analytics; ?>
</head>

<body>
    <div id="container">
		<header id="header">
			<?php if ($logo) { ?>
  				<h1 id="logo">
					<a href="<?php echo $home; ?>">
						<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
					</a>
				</h1>
			<?php } ?>
  		<?php echo $language; ?>
			<?php echo $currency; ?>
  		<?php echo $cart; ?>
  			<section id="search">
    			<div class="button-search"></div>
    			<?php if ($filter_name) { ?>
    				<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
    			<?php } else { ?>
    				<input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
    			<?php } ?>
  			</section>
  			<section id="welcome">
    			<?php if (!$logged) { ?>
    				<?php echo $text_welcome; ?>
    			<?php } else { ?>
    				<?php echo $text_logged; ?>
    			<?php } ?>
  			</section>
  			<nav class="links">
				<a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
				<a href="<?php echo $wishlist; ?>" id="wishlist_total"><?php echo $text_wishlist; ?></a>
				<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
				<a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
			</nav>
		</header>
		<?php if ($categories) { ?>
			<nav id="menu">
  				<ul>
    				<?php foreach ($categories as $category) { ?>
    					<li>
							<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      						<?php if ($category['children']) { ?>
      							<div>
        							<?php for ($i = 0; $i < count($category['children']);) { ?>
        								<ul>
        									<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
        									<?php for (; $i < $j; $i++) { ?>
        										<?php if (isset($category['children'][$i])) { ?>
        											<li>
														<a href="<?php echo $category['children'][$i]['href']; ?>">
															<?php echo $category['children'][$i]['name']; ?>
														</a>
													</li>
        										<?php } ?>
        									<?php } ?>
        								</ul>
        							<?php } ?>
      							</div>
      						<?php } ?>
    					</li>
    				<?php } ?>
  				</ul>
			</nav>
		<?php } ?>
		<section id="notification"></section>
