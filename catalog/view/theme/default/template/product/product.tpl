<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a   href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?> </a></li>
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
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } ?>
        <!-- prod_left  -->
        <div class="prod_left col-lg-6 col-md-6 col-sm-8 col-xs-12">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
		
            <li><a id="kooy" class="thumbnail"  href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"> <img  class="my-foto" id="clo"  src="<?php echo $popup; ?>"  data-large="<?php echo $popup; ?>"  title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
		 <?php } ?>
            <?php if ($images) { ?>
		   <li class="image-additional img_product_border thumbnail"  > <img src="<?php echo $thumb; ?>" class="joob" href="<?php echo $popup; ?>"    title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"  /></img></li>
           <?php foreach ($images as $image) { ?>
           <div style="display:none"> <a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"></a></div>
            <li class="image-additional img_product_border thumbnail" id="item_list" >    <img src="<?php echo $image['thumb']; ?>" class="joob" href="<?php  echo $image['popup']; ?>"  title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"    /></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
		 
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab" style="background: white;"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li ><a href="#tab-specification" data-toggle="tab" style="background: white;"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
             
          </ul> <div class="prod_des">
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
          </div>
		  </div>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <!-- prod_center  -->
		          <div class="prod_center col-lg-3 col-md-3 col-sm-4 col-xs-12">
		         <div class="newi_1">     <?php echo $heading_title; ?> </div>
            <div class="btn-group"> </div>  
                
  <div class="prod_inf">
		<ul class="list-unstyled">  
            <?php if ($manufacturer) { ?>  
            <li>  <?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?>  <?php echo $stock; ?> </li>
			 </div>
          </ul>   
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><span class="prod_price "><?php echo $price; ?></span></h2>
            </li>
            <?php } else { ?>
            <li> </li>
            <li>
              <h2><span class="prod_new"><?php echo $special; ?></span> <span   style="text-decoration: line-through;  "><?php echo $price; ?></span></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <div id="product">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio" >
                  <label >
                    <input   type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
		 
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
             <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" data-toggle="modal"  id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-lg product_btn_buy "><i class="fa fa-dol"></i><?php echo $button_cart; ?></button>
              <button type="button"  data-toggle="modal" data-target="#modal_like"   class="btn   btn-lg  product_btn" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart "></i></button>
             <button type="button"  data-toggle="modal" data-target="#modal_compare" class="btn  btn-lg product_btn" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
        
		   </div>
		   
		   <div class="modal fade " id="basicModal_new" tabindex="-1" role="dialog"  style="top: 150px;">
			<div class="modal-dialog modal-sm">
			<div class="modal-content">
			<div class="modal-header"> 
             <h4 class="modal-title" id="myModalLabel"> </h4>
			</div>
			<div class="modal-body">
			<div class="row">
		
	         <div class = "centerr" > <i class="fa fa-check-circle fa-5xx green"></i>
			 
			 <br> <br> <h4>Товар успешно добавлен в <a href="index.php?route=checkout/cart">корзину</a>  </h4> </div>
			 
		</div>
		 </div>
       <div class="modal-footer  ">
	   <div class = "centerr">
	   <button class="btn btn-default " type="button" data-dismiss="modal"  style="padding: 8px 30px;">Ok</button></div>
          </div>
    </div>
  </div>
</div>  
 
     
 
  <div class="modal fade" id="modal_like" tabindex="-1" role="dialog"  style="top: 150px;">
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
		   
	<div class="modal fade" id="modal_compare" tabindex="-1" role="dialog"  style="top: 150px;">
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
   
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr>
           <script type="text/javascript">(function() {
  if (window.pluso)if (typeof window.pluso.start == "function") return;
  if (window.ifpluso==undefined) { window.ifpluso = 1;
    var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
    s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
    s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
    var h=d[g]('body')[0];
    h.appendChild(s);
  }})();</script>
<div class="pluso" data-background="transparent" data-options="medium,square,line,horizontal,nocounter,theme=08" data-services="vkontakte,facebook,odnoklassniki,twitter,google,moimir,print"></div>
          </div>
		  
		  
          <?php } ?>
        </div> 
        <!-- prod_right -->
        <div class="prod_right  col-xs-12">
          <table border="0" width="100%">
          <tr  color="green"> <strong> <i   class="fa fa-truck fa-3xx" aria-hidden="true"  ></i> &nbsp;   Самовывоз    </tr>
          <tr>
            <td > Новой Почтой</td> <td></td>
          </tr>
          <tr>
              <td> из точки выдачи</td><td></td>
          </tr>
        <tr> 
        <tr> 
           <td colspan="2"> <br></td>
          </tr>
              <td colspan="2"><strong> <i class="fa fa-car fa-3xx" aria-hidden="true" ></i> &nbsp;   Курьер</td>
          </tr>
        <tr > 
              <td colspan="2">Мы доставим этот товар курьером службы доставки
       </td>
          </tr>
        <tr > 
              <td colspan="2"> <br></td>
          </tr>
        <tr > 
              <td colspan="2"> <strong> <i class="fa fa-cc-visa fa-3xx" aria-hidden="true"></i> &nbsp;  Оплата</td>
          </tr>
        <tr > 
              <td colspan="2">Наличными, Безналичными, Кредит, Visa/MasterCard, Мгновенная рассрочка </td>
          </tr>
        <tr > 
            <td colspan="2"> <br></td>
          </tr>
        </tr>
        <tr> 
            <td colspan="2"> <strong><i class="fa fa-shield  fa-3xx" aria-hidden="true"></i> &nbsp; Гарантия</td>
          </tr>
        <tr > 
              <td colspan="2"> 12 месяцев официальной гарантии от производителя обмен/возврат товара в течение 14 дней</td>
        </tr>
      </table> 
          </div>
		
		<div class="prod_reviev">
		 <?php if ($review_status) { ?>
		  <span class="newi" > <?php echo $tab_review; ?> </span>
            <div class="tab-pane" id="tab-review" >
              <form class="form-horizontal" id="form-review">
                 <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
		</div>
      </div>
   
      <?php if ($products) { ?>
      <h3 class="bestseller_title_up" ><?php echo $text_related; ?></h3>
      <div class="row"> 
          <div id="carousel" class="owl-carousel">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-xs-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb bestseller_product transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a class="bestseller_text_title" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
           
              <p><?php echo $product['description']; ?></p>
             
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
              <span class="bestseller_text_price" >  <?php echo $product['price']; ?></span>
                <?php } else { ?>
                <span class="bestseller_text_price" style="font-size: 15px"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax "><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div class="group">
              <button type="button" class="bestseller_buy_name"   onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?> </button>
              </div>
          </div>
        </div>
      
        <?php $i++; ?>
        <?php } ?>
      </div>
    </div>
      <?php } ?>

      <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif ($i % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>

      <?php if ($tags) { ?>
        <div class="product_tags">
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
        </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
  </div>

<script type="text/javascript">


$('#carousel').owlCarousel({
	items: 4,
	autoPlay: 3000,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: false
});


     $('.joob').on("click", function () {
		   var src = $(this).attr('href');
			document.getElementById("clo").src = src;
			document.getElementById("kooy").href = src;
			$("#clo").attr('data-large',src);
		 }
       ); 
   jQuery(function(){
    if(document.documentElement.clientWidth >= "1024"){
		$(".my-foto").imagezoomsl({
          zoomrange: [1, 10],
          magnifiersize: [340, 340],
          scrollspeedanimate: 10,
          loopspeedanimate: 5,
          cursorshadeborder: "10px solid black",
          magnifiereffectanimate: "slideIns"					
      });
	}
	   $(document).click(function(e){
		   var element = $(e.target);
		   if(element.attr("class") == "tracker"){
			   $("#kooy").click();
		   }
	   });
   });   
</script>
<script type="text/javascript">
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript">
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger alert alert-danger">' + json['error']['option'][i] + '</div>');
						} else {
						element.after('<div class="text-danger alert alert-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger" >' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$("#basicModal_new").modal('show');
				//$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				//$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);
                 $('#cena').html('<span id="cart-total"> ' + json['total'] + '</span>');
				 

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript">
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
