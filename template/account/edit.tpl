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
  	<?php if ($error_warning) { ?>
  		<div class="warning"><?php echo $error_warning; ?></div>
  	<?php } ?>
  	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="edit">
    	<h2><?php echo $text_your_details; ?></h2>
    	<section class="content">
      		<table class="form">
        		<tr>
          			<td>
						<label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
					</td>
          			<td>
						<input type="text" name="firstname" value="<?php echo $firstname; ?>" />
            			<?php if ($error_firstname) { ?>
            				<span class="error"><?php echo $error_firstname; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="lastname" class="required"><?php echo $entry_lastname; ?></label>
					</td>
          			<td>
						<input type="text" name="lastname" value="<?php echo $lastname; ?>" />
            			<?php if ($error_lastname) { ?>
            				<span class="error"><?php echo $error_lastname; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="email" class="required"><?php echo $entry_email; ?></label>
					</td>
          			<td>
						<input type="text" name="email" value="<?php echo $email; ?>" />
            			<?php if ($error_email) { ?>
            				<span class="error"><?php echo $error_email; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="telephone" class="required"><?php echo $entry_telephone; ?></label>
					</td>
          			<td>
						<input type="text" name="telephone" value="<?php echo $telephone; ?>" />
            			<?php if ($error_telephone) { ?>
            				<span class="error"><?php echo $error_telephone; ?></span>
            			<?php } ?>
					</td>
        		</tr>
        		<tr>
          			<td>
						<label for="fax"><?php echo $entry_fax; ?></label>
					</td>
          			<td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
        		</tr>
      		</table>
    	</section>
    	<div class="buttons">
      		<div class="left">
				<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
			</div>
      		<div class="right">
				<a onclick="$('#edit').submit();" class="button"><?php echo $button_continue; ?></a>
			</div>
    	</div>
  	</form>
  	<?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>