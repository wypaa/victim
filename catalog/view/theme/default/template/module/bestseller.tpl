 <div class="bestseller_title_up"> <?php echo $heading_title; ?> </div> 
<br>
<div class="row">
  <div id="carousel" class="owl-carousel"    >
  <?php foreach ($products as $product) { ?>
  <div class="product-layout  col-xs-12" >
    <div class="product-thumb  bestseller_product transition">
      <div class="image_scale"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="bestseller_image_size" /></a></div>
      <div class="caption">
        <h4><a class="bestseller_text_title" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <?php if ($product['rating']) { ?>
        <div class="rating" style="float: right" >
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
          <?php if (!$product['special']) { ?>
            <span class="bestseller_text_price">   <?php echo $product['price']; ?></span>
          <?php } else { ?>
          <span class="bestseller_text_price"  style="font-size: 15px" ><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax prod_new"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        <?php } ?>
      </div>
       <div class="group">
          <button class="bestseller_buy_name" type="button"  data-toggle="modal" data-target="#basicModal_best" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i>  Купить</button>
             </div>   
    </div>
  </div>
  <?php } ?>
  </div>
</div>
 
  <div class="modal fade" id="modal_like_best" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel">   </h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		  <div class = "centerr"><i class="fa fa-heart-o fa-5xx rid"></i>
			<br> <br>  <h4> Товар добавлен в список <a href="index.php?route=account/wishlist">закладок!</a> </h4> </div>
				</div>
					</div>	
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default " type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>
		   
	<div class="modal fade" id="modal_compare_best" tabindex="-1" role="dialog"  style="top: 150px;">
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
	   <button class="btn btn-default  btn_like" type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>  

<script type="text/javascript">
  $('#carousel').owlCarousel({
    items: 4,
    autoPlay: 10000,
    navigation: true,
    navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
    pagination: false,
  });
  </script>