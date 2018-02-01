 
<div class="row"  >
  <?php foreach ($products as $product) { ?>
    <!-- col-lg-3 col-md-3 col-sm-6 col-xs-12  -->
      <div class="product-layout col-xs-12  "> 
    <div class="product-thumb transition">
     <div class="image_special_border"  >       
         
	    <div class="image "><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive image_special" /></a> </div>
      <div class="image_bottom_background">
          <h4><a class="special_text_link" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
  
      
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class=" " >
          <?php if (!$product['special']) { ?>
		   <span class="prod_price" style="font-size: 15px">  <?php echo $product['price']; ?></span>
          <?php } else { ?>
          <span class="special_text_price "><?php echo $product['special']; ?></span> <span class="special_text_price_old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
        
      </div>
       
      </div>
     <!-- <div class="button-group"> 
	    <?php if (!$product['special']) { ?>  
        <button type="button" data-toggle="modal" data-target="#basicModal_special"  onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
           <?php } else { ?>
		 <button type="button" data-toggle="toggle"   onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
          <?php } ?>
		
		<button type="button"  data-toggle="modal" data-target="#modal_like_special" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="modal" data-target="#modal_compare_special" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    -->
    </div>
  </div>
  <?php } ?>
</div>

	<!--	 <div class="modal fade " id="basicModal_special" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel"> </h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		
	         <div class = "centerr"> <i class="fa fa-check-circle fa-5xx green"></i>
			 
			 <br> <br> <h4>Товар успешно добавлен в <a href="index.php?route=checkout/cart">корзину</a>   </h4> </div>
		</div>
		 </div>
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default " type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div> -->  
 
     
 
  <div class="modal fade" id="modal_like_special" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel">   </h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		  <div class = "centerr"><i class="fa fa-heart-o fa-5xx rid"></i>
			<br> <br> <h4> Товар добавлен в список <a href="index.php?route=account/wishlist">закладок!</a> </h4></div>
				</div>
					</div>	
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default" type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>
		   
	<div class="modal fade" id="modal_compare_special" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel">   </h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		  <div class = "centerr"><i class="fa fa-exchange fa-5xx grey"></i>
			<br> <br> Ваш товар добавлен в список <a href="index.php?route=product/compare"> сравнения</a> </div>
				</div>
					</div>	
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default " type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>   


