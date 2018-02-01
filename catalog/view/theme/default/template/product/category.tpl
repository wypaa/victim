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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
	<div class="category_background"> 
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <legend>
      <!--  Category chebox 
         <?php if ($categories) { ?>
      <h3  ><?php echo $text_refine; ?></h3>
      <?php } ?>
     -->
      </legend>
      <?php if ($products) { ?>
      <div class="row">
        <div class="col-md-4">
          <div class="btn-group hidden-xs">
            <button type="button" id="list-view" class="btn product_btn " data-toggle="tooltip" title="<?php echo $button_list; ?>"><i  style="color:rgb(43, 43, 43)" class="fa fa-bars "></i></button>
            <button type="button" id="grid-view" class="btn product_btn" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i  style="color:rgb(53, 53, 53)" class="fa fa-th-large"></i></button>
		         <p class="btn product_btn category_compare"><a href="<?php echo $compare; ?>" id="compare-total"> <?php echo $text_compare; ?> </a> </p>
       
		</div>   </div>
		
        <div class="col-md-2 text-right">
          <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-1 text-right">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div> </div>
      <br />
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb bestseller_product">
		  <?php if ($product['price']) { ?> 
	<?php if ($product['special']) { ?>
	   <?php  $minus = $product['price'] - $product['special'];
		     $tax = 100*$minus/$product['price'];?>
         <span class="sale_latest" style=" text-decoration: line-through" >    <?php echo $product['price']; ?> </span>
			   <?php }  ?>
	   <?php }  ?>
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a class="bestseller_text_title"  href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['rating']) { ?>
                <div class="rating" style="float: right">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
               
              </div>
              <div class="group">
                 <button type="button" class="bestseller_button"  data-toggle="modal" data-target="#modal_like_cater" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                 <button type="button"  class="bestseller_button" data-toggle="modal" data-target="#modal_compare_cater" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-compress"></i></button>
                 <button type="button" class="bestseller_button"  data-toggle="modal" data-target="#basicModal_cater" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md "><?php echo $button_cart; ?></span></button>
                <span class="bestseller_text_price" style="margin-left:20px;" > 	<?php if ($product['price']) { ?> <?php if (!$product['special']) { ?>   <?php echo $product['price']; ?> <?php } else { ?>  <?php echo $product['special']; ?>  <?php } } ?> </span>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
        <?php } ?>
      </div>
      
      
  <div class="modal fade" id="modal_like_cater" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel">   </h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		  <div class = "centerr"><i class="fa fa-heart-o fa-5xx rid"></i>
			<br> <br><h4> Товар добавлен в список <a href="index.php?route=account/wishlist">закладок!</a> </h4> </div>
				</div>
					</div>	
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default " type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>
		   
	<div class="modal fade" id="modal_compare_cater" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel">   </h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		  <div class = "centerr"><i class="fa fa-exchange fa-5xx grey"></i>
			<br> <br> Ваш товар добавлен в список сравнения </div>
				</div>
					</div>	
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default  btn_like" type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>  
 
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      
      <?php if (!$categories && !$products) { ?>
      <p class="categor_null"> <i style="font-size: 25px; margin-right: 5px; color:#DB7575" class="fa fa-times"></i> <?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
    
</div>
<?php echo $footer; ?>
