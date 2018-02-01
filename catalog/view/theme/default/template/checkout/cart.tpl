<?php echo $header; ?>
<div   class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
	
    <div id="content" class="<?php echo $class; ?> "><?php echo $content_top; ?>
      <div class="category_background">
      <legend>  <h1 ><?php echo $heading_title; ?>
        <?php if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php } ?>
      </h1>
      </legend>
      
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <?php foreach ($products as $product) { ?>
                <div class="cart_product_background">
                <div class="row text-center">  
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 cart_product_margin">
                <?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?>
				  </br>
				  <?php if (!$product['stock']) { ?>
                  <span class="text-danger"  style="font-size: 16px;  font-weight:bold;">Товар закончился</span>
                  <?php } ?>
          </div>
          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12  cart_product_margin">
              <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger" >***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
                  </div>
                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-12 cart_product_margin cart_product_display_none">
               <?php echo $product['model']; ?>
               </div>
               <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 cart_product_margin cart_product_margin">
                    <form >
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-6 col-md-offset-0 col-md-7 col-sm-offset-0 col-sm-10 col-xs-offset-3 col-xs-6">
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />кол-во
                  </div>
                  <button  type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="cart_btn_refl"><i class="fa fa-refresh fa-3xx "></i></button> 
                </div>
                </form>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-12 cart_product_margin">
               <?php echo $product['price']; ?> (шт.)
              </div>
              <div class="col-lg-1  col-md-1 col-sm-1 col-xs-12 cart_product_margin cart_product_display_none">
               <?php echo $product['total']; ?> 
                  </div>
                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-12 cart_product_margin">
                  <button type="button"  title="<?php echo $button_remove; ?>" class="cart_product_btn_delete" id="delete_product" onclick="cart.remove('<?php echo $product['cart_id']; ?>'); func();">  <?php echo $button_remove; ?></button>
                </div>
                </div>
              </div> 
              <br>
              <?php } ?>
            </div>
              <?php foreach ($vouchers as $voucher) { ?>
                <div class="text-left"><?php echo $voucher['description']; ?>  </div>
                <div class="text-left">  </div>
               <div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div>
                <div class="text-right"><?php echo $voucher['amount']; ?></div>
                <div class="text-right"><?php echo $voucher['amount']; ?></div>
                
              <?php } ?>
             
            </form>
      <?php if ($modules) { ?>
      <!-- Kupon sales
         <p><?php echo $text_next_choice; ?></p> -->
      <div class="panel-group" id="accordion">
        <?php foreach ($modules as $module) { break;  ?>
        <?php echo $module; ?>
        <?php  } ?> 
      </div>
      <?php } ?>
      <br />
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
          <table  class="table table-bordered cart_ten">
            <?php foreach ($totals as $total) {    ?>
            <tr>
              <td class="text-right "><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right "> <b class="<?php $io++; if($io == 2)  echo "prod_price" ?> reload_total"><?php echo  $total['text'];   ?></b></td>
            </tr>
            <?php } ?>
          </table>
        </div>
      </div>
      <div class="buttons ">
	   <div class="pull-right cart_product_margin"> <a href="<?php echo $checkout; ?>" class="btn cart_next   "> <?php echo $button_checkout; ?><i style="padding:5px; color: #6EC99E" class="fa fa-chevron-right"  ></i></a></div>
        <div class="pull-right cart_product_margin"><a href="<?php echo $continue; ?>" class="btn cart_next "><i style="padding:5px; color:#D05D5D " class="fa fa-chevron-left"  ></i><?php echo $button_shopping; ?>  </a>  </div> 
      </div>
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
 <br>
<?php echo $footer; ?> 
<script>
function func (){
  setTimeout(function() {
    $('#content').load('cart #content');
}, 1000); 
  // $('.reload_total').html('<b><?php echo  $total['text']; ?></b>');
  // alert("<?php echo $action; ?>"  +"   "  +  "<?php echo $product['cart_id']; ?>"  + "    " + "<?php echo $product['quantity']; ?>"  );   
}
$(document).on('click', '#delete_product', function(){
  // Если div
  
});

  </script>