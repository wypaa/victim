 <div class="recomend_1200">
 <div class="newi">   <?php echo $heading_title; ?>    </div>
   <div class="recomend">
<div class="row">  
 <?php $i=0;   foreach ($products as $product) { ?>  
   
   <div class="product-layout col-lg-b"> 
    <div class="product-thumb1 transition ">  
	      
       
     <div class="captionnew"  > <div class="image" style="margin-left: 20%; width: 200px; height: 195px;"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
       <div class="name_recoment"> <a  href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a></div>  
            
       
       	<?php if ($product['price']) { ?>
		     
	   <?php if (!$product['special']) { ?>
	 <div class="buya_recomend">
		 <button type="button"  data-toggle="modal" data-target="#basicModa" title="Купить"  onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md">   <?php echo $product['price']; ?> </button>   
		     
          <button type="button" data-toggle="modal" data-target="#modal_li" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>   </div>
	  
	   <?php } else { ?>
	   <div class="buya_recomend">
		 <button type="button"   onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><span class="price-new"><?php echo $product['special']; ?></span><span class="price-ol"> <?php echo $product['price']; ?></span></button>   
          <button type="button" data-toggle="modal" data-target="#modal_li" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>   </div> 
            <?php } ?><?php } ?>  
   
	 
      
      </div>
    </div>
  </div> 
  <div class="modal fade " id="basicModa" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog">
       <div class="modal-content">
          <div class="modal-header"><button class="close" type="button" data-dismiss="modal">x</button>
             <h4 class="modal-title" id="myModalLabel">Товар успешно добавлен в корзину  <i class="fa fa-check-circle fa-2_5xx green"></i></h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		 <div class="col-md-offset-3">
		<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
          <h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>  <p align="left"> <?php echo $product['price']; ?></p></h3>  
        </div>
		</div>
		 </div>
       <div class="modal-footer">
	   <button onclick="location.href='/index.php?route=checkout/checkout'" class="btn btn-primary" type="button">Оформить заказ</button> 
	   <button class="btn btn-default" type="button" data-dismiss="modal">Продолжить</button>
          </div>
    </div>
  </div>
</div>

<div class="modal fade" id="modal_li" tabindex="-1" role="dialog"  style="top: 150px;">
     <div class="modal-dialog modal-sm">
       <div class="modal-content">
          <div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel">   </h4>
          </div>
        <div class="modal-body">
		 <div class="row">
		  <div class = "centerr"><i class="fa fa-heart-o fa-5xx rid"></i>
			<br> <br> <h4> Товар добавлен в список <a href="index.php?route=account/wishlist">закладок!</a> </h4> </div>
				</div>
					</div>	
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default " type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>
 
  
  
  <?php  break; } ?>
  <?php foreach ($products as $key => $product) { ?>  
          <?php   if($key>0) {    ?> 
    
   <div class="product-layout col-lg-sg item4 item5">  
    <div class="product-thumb2 transition "> 
	   
     <div class="captionnew  "> <div class="image"> <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /> </a>   </div>
        
		 
         <?php if ($product['price']) { ?>
		  
	   <?php if (!$product['special']) { ?>
       	 
        
		 <div><span class="hidden-xs hidden-sm hidden-md full4"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" /> <h4> <?php echo $product['name']; ?> </h4></a><i style="color: #6ec96e; font-size: 16px;" class="fa fa-rub fa-2xx"  ></i> <span style="font-size: 16px;"><?php echo $product['price']; ?></span>     </div>       
	  
	  <?php } else { ?> 
	 
		 <div ><span class="hidden-xs hidden-sm hidden-md full5"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" /><h4> <?php echo $product['name']; ?> </h4></a><span class="price-new"><i style="color:  #E78583" class="fa fa-rub fa-2xx"   ></i><?php echo $product['special']; ?></span><span class="price-o"> <?php echo $product['price']; ?></span></div>      
           <?php } ?><?php } ?>  
      
	 </div> 
    </div>
  </div> 
   <?php } ?>
  <?php   } ?>
   
   
</div>
</div>
 </div>

