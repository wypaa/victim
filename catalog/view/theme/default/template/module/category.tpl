<div class="list-group ">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <div class="category_list_border"><a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a></div>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?> 
    <a href="<?php echo $child['href']; ?>" class="list-group-item category_list_item" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item " style="background: #f7f7f7;">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>
