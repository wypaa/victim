<div id="cart"   class="btn-group btn-block">  
 <button type="button"  class="btn-inverse mobile_425_none"   data-toggle="dropdown"   data-loading-text="</br><?php echo $text_loading; ?>"  >   <span id="cart-total">   </span>  <div id="cena" data-loading-text="</br><?php echo $text_loading; ?>" class="pric"    ><?php echo $text_items; ?></div></button>
  <div class="mobile_425" >
 <button  onClick='location.href="/index.php?route=checkout/cart"'  type="button" class="btn-inverse"   data-toggle="dropdown"   data-loading-text="</br><?php echo $text_loading; ?>"  >   <span id="cart-total">   </span>  <div id="cena" data-loading-text="</br><?php echo $text_loading; ?>" class="pric"    > <?php echo $text_items; ?></div></button>
 </div>
 <ul class="dropdown-menu pull-right"> 
    <?php if ($products || $vouchers) { ?>
    <li >
      <table class="table table-striped"   > 
        <?php foreach ($products as $product) { ?>
        <tr class="cart_ten" >
          <td class="text-center "><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
          <td class="text-left"><a class="cart_product_dropdown_title" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          <td class="text-right">x <?php echo $product['quantity']; ?> </td>
          <td class="text-right" font-color="green"><?php echo $product['total']; ?></td>
          <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="cart_btn_del"><i class="fa fa-times fa-3xx"></i></button></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
		 
      </table>
    </li> 
    <li>
      <div class="title_cart">
	  
   <table class="table  ">
          <?php foreach ($totals as $total) { ?>
          <tr>  
            <td class="text-left"> </td>
            <td class="text-right"><strong><?php echo $total['title']; ?></strong>&nbsp;&nbsp;<?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
 <p class="text-right" ><a href="<?php echo $cart; ?>" class="cart_hover"><strong  ><i class="fa fa-shopping-cart "> </i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>" class="cart_hover" ><strong ><i class="fa fa-share"></i> <?php echo $text_checkout; ?></strong></a></p> 
      </div>
    </li>
    <?php } else { ?>
    <li>
          <p class="ca_ull"><?php echo $text_empty; ?> </p> 
    </li>
    <?php } ?>
  </ul>  
</div>
