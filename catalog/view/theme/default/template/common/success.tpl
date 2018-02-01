<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> "><?php echo $content_top; ?>
      <div class="register_sucses">
	 
	 <h1 "><i class="fa fa-user fa-2xx"></i> <?php echo $heading_title; ?> <i class="fa fa-check-circle fa-2_5xx green"></i></h1>  
     <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-success"><?php echo $button_continue; ?></a></div>
      </div>
	  </br>
	  </br>
	    </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>


  <style>
  
  .register_sucses {
		
		background: white;
		padding: 25px;
		border-radius: 10px;
		border: 1px solid green;
	}
  
  </style>