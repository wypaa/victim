<?php if (!isset($redirect)) { ?>
<div class="table-responsive">
  <table class="table table-bordered table-hover cart_basket">
    <thead>
      <tr>
        <td  style="box-shadow:  0px 3px 4px -2px #E4CD96" class="text-left"><?php echo $column_name; ?></td>
        <td  style="box-shadow:  0px 3px 4px  -2px #EA837B" class="text-left"><?php echo $column_model; ?></td>
        <td  style="box-shadow: 0px 3px 4px  -2px #D2D7D0" class="text-right"><?php echo $column_quantity; ?></td>
        <td style="box-shadow: 0px 3px 4px -2px #7BC6EA"  class="text-right"><?php echo $column_price; ?></td>
        <td  style="box-shadow: 0px 3px 4px -2px #93EA7B" class="text-right"><?php echo $column_total; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>
      <tr>
        <td class="text-left"> <a href="<?php echo $product['href']; ?> "><?php echo $product['name']; ?></a>
		 <?php foreach ($product['option'] as $option) { ?>
          <br />
          &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
          <?php } ?>
          <?php if($product['recurring']) { ?>
          <br />
          <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
          <?php } ?></td>
        <td class="text-left"><?php echo $product['model']; ?></td>
        <td class="text-right"><?php echo $product['quantity']; ?></td>
        <td class="text-right"><?php echo $product['price']; ?></td>
        <td class="text-right">    <?php echo $product['total']; ?> </td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td class="text-left"><?php echo $voucher['description']; ?></td>
        <td class="text-left"></td>
        <td class="text-right">1</td>
        <td class="text-right"><?php echo $voucher['amount']; ?></td>
        <td class="text-right"><?php echo $voucher['amount']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
    <tfoot>
      <?php  foreach ($totals as $total)   {  ?>
      <tr>
        <td colspan="4" class="text-right"><strong>  <?php echo $total['title']; ?>: </strong></td>
        <td class="text-right fa-2xx"> <?php echo $total['text']; ?> </td>
      </tr>
      <?php break; } ?>
	 <?php $i = 0; foreach ($totals as $total) {  $i++; ?>
      <?php if($i > 2) {  ?>
	   <tr>
        <td colspan="4" class="text-right"><strong>  <?php echo $total['title']; ?>: </strong></td>
        <td class="text-right"><span class="label label-success fa-2xx"><?php echo $total['text']; ?></span></td>
      </tr>
      <?php  }  }  ?>
	  
    </tfoot>
  </table>
</div>
<?php echo $payment; ?>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script>
<?php } ?>
