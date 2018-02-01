<footer>
  <div class="container">  
    <div class="row"> 
         <br>
       <?php if ($informations) { ?>
      <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6"> 
        <h5>VICTIM</h5>
        <ul class="list-unstyled">
          <li><p>Режим работы: <b>8:00 - 19:00</b><br>   
          <i class="fa fa-mobile"></i>  +380 (99) 9635310</p></li>
          <li><p><?php echo $powered; ?></p></li>
        </ul>  
       <br>
	  <!-- <a class="footer_mobile_show_none" target="_blank" href="http://ukraina.net.ua/?i=83875450"><img
src="http://ukraina.net.ua/images/ukraina.png"
title="ukraina.net.ua - каталог сайтов Украины"
alt="ukraina.net.ua - каталог сайтов Украины"
width="88" height="31" border="0" /></a> -->
 <div class="disp"><!--LiveInternet counter--><script type="text/javascript">
document.write("<a href='//www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t15.6;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: показано число просмотров за 24"+
" часа, посетителей за 24 часа и за сегодня' "+
"border='0' width='88' height='31'><\/a>")
</script><!--/LiveInternet--></div> 

<style>
.disp {
opacity: 0.0;
}
.disp:hover {
opacity: 0.6;
}
</style>
	  </div> 
	  <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6"> 
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>  
      <div class="footer_mobile_show_none">
	 <div class="nova_poshta "></div>  
    </div> 
	  </div>
      <?php } ?>
      <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 footer_mobile_show_none"> 
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled"> 
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
	  <br>
	 <div class="visa_master"> </div>  
    </div>  
     <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
        <ul class="list-unstyled"> 
        <script type="text/javascript" src="//vk.com/js/api/openapi.js?139"></script>
	<!-- VK Widget -->
	<div id="vk_groups"> 
  <script type="text/javascript">
	VK.Widgets.Group("vk_groups", {mode: 3, width: "220"}, 91666754);
  </script>
  </div>
        </ul>
      
	<br>
    </div>  
   </div> 
  
  </div></div>
</footer>
<!-- BEGIN JIVOSITE CODE {literal} -->
<script type='text/javascript'>
(function(){ var widget_id = 'fnektNUlyC';var d=document;var w=window;function l(){
var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}if(d.readyState=='complete'){l();}else{if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();</script>
<!-- {/literal} END JIVOSITE CODE -->
</body></html>