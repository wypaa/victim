<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
	<div class="register_sucse"  >
 
      <h2 ><?php echo $text_my_account; ?>  </h2>
      <div class="list-group  " style="width: 250px;">
        <a class="list-group-item "  href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a> 
        <a class="list-group-item"  href="<?php echo $password; ?>"><?php echo $text_password; ?></a>
        <a class="list-group-item"  href="<?php echo $address; ?>"><?php echo $text_address; ?></a> 
       <a class="list-group-item"  href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a> 
      </div>
      <?php if ($credit_cards) { ?>
      <h2><?php echo $text_credit_card; ?></h2>
     <div class="list-group  " style="width: 250px;">
        <?php foreach ($credit_cards as $credit_card) { ?>
         <a class="list-group-item" href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a> 
        <?php } ?>
      </div>
      <?php } ?>
      <h2><?php echo $text_my_orders; ?></h2>
       <div class="list-group  " style="width: 250px;">
        <a  class="list-group-item" href="<?php echo $order; ?>"><?php echo $text_order; ?></a>
        <a  class="list-group-item" href="<?php echo $download; ?>"><?php echo $text_download; ?></a>
        <?php if ($reward) { ?>
         <a class="list-group-item"  href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a>
        <?php } ?>
         <a class="list-group-item"  href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
         <a class="list-group-item"  href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a>
         <a class="list-group-item"  href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a>
     </div>
      <h2><?php echo $text_my_newsletter; ?></h2>
      <ul class="list-unstyled">
        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
	  </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 


  