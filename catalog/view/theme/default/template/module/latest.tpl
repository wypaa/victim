<div class="bestseller_title_up"> <?php echo $heading_title; ?> </div>
<br>
<div class="row"> 
  <?php foreach ($products as $product) { ?>
  <div class="product-layout  col-lg-3 col-md-3 col-sm-6 col-xs-12  ">
   <div class="product-thumb bestseller_product transition item3 ">
	<?php if ($product['price']) { ?> 
	<?php if ($product['special']) { ?>
	   <?php  $minus = $product['price'] - $product['special'];
		       $tax = 100*$minus/$product['price'];?>
			   <span class="sale_latest" style=" text-decoration: line-through" >    <?php echo $product['price']; ?> </span>
			   <?php }  ?>
	   <?php }  ?>
     <div class="image_scale"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />  </a> </div>
	 <div class="captionnew">
        <h4><a class="bestseller_text_title"   href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
       <div class="group"> 
          <button  class="bestseller_button" type="button"    data-toggle="modal" data-target="#modal_like_latest" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"> </i></button> 
          <button class="bestseller_button" type="button" data-toggle="modal" data-target="#modal_compare_best" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
          <button  class="bestseller_button" type="button"  data-toggle="modal" data-target="#basicModal_new_latest"  onclick="cart.add('<?php echo $product['product_id']; ?>')" ><i class="fa fa-shopping-cart"></i>   	</button> 
          <span class="bestseller_text_price" style="margin-left:20px;" > 	<?php if ($product['price']) { ?> <?php if (!$product['special']) { ?>   <?php echo $product['price']; ?> <?php } else { ?>  <?php echo $product['special']; ?>  <?php } } ?> </span>
         </div>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
  <div class="modal fade" id="modal_like_latest" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel">   </h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		  <div class = "centerr"><i class="fa fa-heart-o fa-5xx rid"></i>
			<br> <br><h4> Товар добавлен в список <a href="index.php?route=account/wishlist">закладок!</a> </h4></div>
				</div>
					</div>	
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default " type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>
  
  
  
  
  
  
  

  