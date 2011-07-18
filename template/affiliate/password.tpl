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
  	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="password">
   		<h2><?php echo $text_password; ?></h2>
   		<section class="content">
     			<table class="form">
       			<tr>
       				<td>
						<span class="required">*</span> 
						<?php echo $entry_password; ?>
					</td>
       				<td>
						<input type="password" name="password" value="<?php echo $password; ?>" />
           				<?php if ($error_password) { ?>
           					<span class="error"><?php echo $error_password; ?></span>
           				<?php } ?>
					</td>
       			</tr>
       			<tr>
       				<td>
						<span class="required">*</span> 
						<?php echo $entry_confirm; ?>
					</td>
       				<td>
						<input type="password" name="confirm" value="<?php echo $confirm; ?>" />
           				<?php if ($error_confirm) { ?>
           					<span class="error"><?php echo $error_confirm; ?></span>
           				<?php } ?>
					</td>
       			</tr>
   			</table>
   		</section>
   		<div class="buttons">
   			<div class="left">
				<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
			</div>
   			<div class="right">
				<a onclick="$('#password').submit();" class="button"><?php echo $button_continue; ?></a>
			</div>
    	</div>
  	</form>
  	<?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>