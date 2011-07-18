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
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
   		<h2><?php echo $text_location; ?></h2>
   		<section class="contact-info">
   			<section class="content">
				<div class="left">
					<b><?php echo $text_address; ?></b><br />
       				<?php echo $store; ?><br />
       				<?php echo $address; ?>
				</div>
   				<div class="right">
       				<?php if ($telephone) { ?>
       					<b><?php echo $text_telephone; ?></b><br />
       					<?php echo $telephone; ?><br />
       					<br />
       				<?php } ?>
       				<?php if ($fax) { ?>
       					<b><?php echo $text_fax; ?></b><br />
       					<?php echo $fax; ?>
       				<?php } ?>
   				</div>
    		</section>
    	</section>
    	<h2><?php echo $text_contact; ?></h2>
    	<section class="content">
    		<label for="name"><b><?php echo $entry_name; ?></b></label>
			<br />
    		<input type="text" name="name" value="<?php echo $name; ?>" />
    		<br />
    		<?php if ($error_name) { ?>
    			<span class="error"><?php echo $error_name; ?></span>
    		<?php } ?>
    		<br />
    		<label for="email"><b><?php echo $entry_email; ?></b></label>
			<br />
    		<input type="text" name="email" value="<?php echo $email; ?>" />
    		<br />
    		<?php if ($error_email) { ?>
    			<span class="error"><?php echo $error_email; ?></span>
    		<?php } ?>
    		<br />
    		<label for="enquiry"><b><?php echo $entry_enquiry; ?></b></label>
			<br />
    		<textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
    		<br />
    		<?php if ($error_enquiry) { ?>
    			<span class="error"><?php echo $error_enquiry; ?></span>
    		<?php } ?>
    		<br />
    		<label for="captcha"><b><?php echo $entry_captcha; ?></b></label>
			<br />
    		<input type="text" name="captcha" value="<?php echo $captcha; ?>" />
    		<br />
    		<img src="index.php?route=information/contact/captcha" alt="" />
    		<?php if ($error_captcha) { ?>
    			<span class="error"><?php echo $error_captcha; ?></span>
    		<?php } ?>
    	</section>
    	<div class="buttons">
      		<div class="right">
				<a onclick="$('#contact').submit();" class="button"><?php echo $button_continue; ?></a>
			</div>
		</div>
	</form>
	<?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>