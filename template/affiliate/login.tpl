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
  	<?php if ($success) { ?>
  		<div class="success"><?php echo $success; ?></div>
  	<?php } ?>
  	<?php if ($error_warning) { ?>
  		<div class="warning"><?php echo $error_warning; ?></div>
  	<?php } ?>
  	<?php echo $text_description; ?>
  	<section class="login-content">
    	<div class="left">
      		<h2><?php echo $text_new_affiliate; ?></h2>
      		<section class="content">
				<?php echo $text_register_account; ?> 
				<a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a>
			</section>
    	</div>
    	<div class="right">
      		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="login">
        		<h2><?php echo $text_returning_affiliate; ?></h2>
        		<section class="content">
          			<p><?php echo $text_i_am_returning_affiliate; ?></p>
          			<b><?php echo $entry_email; ?></b>
					<br />
          			<input type="text" name="email" value="" />
          			<br />
          			<br />
          			<b><?php echo $entry_password; ?></b>
					<br />
          			<input type="password" name="password" value="" />
          			<br />
          			<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
					<br />
          			<br />
          			<a onclick="$('#login').submit();" class="button"><?php echo $button_login; ?></a>
          			<?php if ($redirect) { ?>
          				<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          			<?php } ?>
        		</section>
      		</form>
    	</div>
  	</section>
  	<?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>