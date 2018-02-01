<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
 
<table class="table table-striped ">
  <tr><div class="bord">
    <td style="width: 50%;" class="bord_l"><strong><?php echo $review['author']; ?></strong></td>
    <td class="text-right" ><span class="b_white"><?php echo $review['date_added']; ?></span></td>
  </tr>
  <tr>
    <td colspan="2" class="bord_l"><p class="commend "><?php echo $review['text']; ?></p>
	</tr>
	<tr><td colspan="2" class="bord">
      <?php for ($i = 1; $i <= 5; $i++) { ?>
      <?php if ($review['rating'] < $i) { ?>
      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
      <?php } else { ?>
      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
      <?php } ?>
      <?php } ?> </td>
  </tr>
</table>
</div>
<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>
