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
	<p>
		<?php echo $text_total; ?>
		<b> <?php echo $total; ?></b>.
	</p>
	<table class="list">
   		<thead>
   			<tr>
       			<td class="left"><?php echo $column_date_added; ?></td>
       			<td class="left"><?php echo $column_description; ?></td>
       			<td class="right"><?php echo $column_points; ?></td>
   			</tr>
   		</thead>
   		<tbody>
   			<?php if ($rewards) { ?>
   				<?php foreach ($rewards  as $reward) { ?>
  					<tr>
       					<td class="left"><?php echo $reward['date_added']; ?></td>
       					<td class="left">
							<?php if ($reward['order_id']) { ?>
       							<a href="<?php echo $reward['href']; ?>"><?php echo $reward['description']; ?></a>
       						<?php } else { ?>
       							<?php echo $reward['description']; ?>
       						<?php } ?>
						</td>
       					<td class="right"><?php echo $reward['points']; ?></td>
   					</tr>
   				<?php } ?>
   			<?php } else { ?>
   				<tr>
       				<td class="center" colspan="5"><?php echo $text_empty; ?></td>
   				</tr>
   			<?php } ?>
   		</tbody>
	</table>
	<section class="pagination"><?php echo $pagination; ?></section>
	<div class="buttons">
   		<div class="right">
			<a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
		</div>
	</div>
	<?php echo $content_bottom; ?>
</section>
<?php echo $footer; ?>