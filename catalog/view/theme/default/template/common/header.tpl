<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>/" />
 
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?> 
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/zoomsl-3.0.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
 
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">

<header> 
    <div class="margin_bottom_toolbar">  
  <div id="fixmenu_new">
  <div class="container">   
    <div class="row">
	<div class="log">
      <div class="col-sm-3">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
    </div>
    <div class="toolbar_size">
      <div class="col-sm-5 sea"><?php echo $search; ?>  </div>
	  
      <div class="col-sm-3"><div id="top-links" class="nav pull-right"> 
      <ul class="list-inline none_se" >
	       
          <li class="dropdown"> <a href="<?php echo $account; ?>"   title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><div class="ima"> </div>   </a>
		  <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <li><div text-align="left"  class="toolbar_item_account_line" > </div></li>
			 <li><a href="<?php echo $wishlist;  ?>" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
			  <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>
			   <li><a href="index.php?route=product/compare" title="Сравнение товаров">Сравнение товаров</a></li>
			<li><a href="index.php?route=product/search" title="Поиск">Поиск</a></li>
            <?php } else { ?>
			 <!-- <li><a  text-align="center" style="background: #e5e3e3; color: grey;"  >  <b>Вход</b></a></li> -->
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
             <li><div text-align="left"  class="toolbar_item_account_line" > </div></li>
			 <li><a href="<?php echo $wishlist;  ?>" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
			  <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><?php echo $text_checkout; ?></a></li>
			   <li><a href="index.php?route=product/compare" title="Сравнение товаров">Сравнение товаров</a></li>
			<li><a href="index.php?route=product/search" title="Поиск">Поиск</a></li>
            <?php } ?>
          </ul>
        </li>  
        <li><a href="<?php echo $wishlist; ?>"  data-toggle="tooltip" data-placement="bottom" class="none1 btn_like" id="wishlist-total" title="<?php echo $text_wishlist; ?>"> <div class="imag"></div>     </a></li>
         <li><a href="<?php echo $checkout; ?>"  data-toggle="tooltip" data-placement="bottom"  class="none1" title="<?php echo $text_checkout; ?>"> <div class="oform"></div>   </a></li>
		   <li><a href="index.php?route=product/compare" data-toggle="tooltip" data-placement="bottom"  class="none1 btn_compare" title="Сравнение товаров"> <div class="compare1"></div>   </a></li>
	    <li class="olds none_se_cart">  <?php echo $cart; ?>  </li>  
      <li> </li>  		
	  </ul>
    </div>
  </div>
  
    </div>
  </div>
  </div>
  
  </div>
</div>
</header>


<div class="container">
  <div class="container_auto_size">
 <div class="slader">  <div class="rusel"><?php echo $content_ban; ?></div> <div class="rusel1">    <?php echo $content_ban1; ?></div>   
 <?php if ($categories) { ?>
  <div class="cater_min">
 <div class="cater_max">
 <ul class="main-menu">
     <?php foreach ($categories as $category) { ?>
	  <?php if ($category['children']) { ?>
            <li><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"> <?php echo $category['name']; ?><span class="str_rig"></span></a>
                 <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
				<ul class="sub-menu"  >
         <?php foreach ($children as $child) { ?>
         
                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
					<?php } ?>   
                </ul>
				<?php } ?>   
       		  
            </li>
           <?php } else { ?>
        <li  ><a href="<?php echo $category['href']; ?>"  ><?php echo $category['name']; ?></a></li>
    <?php } ?>
	  <?php } ?>	   
		 <?php } ?>	
		</ul>  
		</div>
		</div>
	 
  </div>
</div>
		<div class="menu_2">
      	<div class="sea_categor"><?php echo $search; ?> </div> 
		<button class="expand"  onclick="down()"> <i class="fa fa-align-justify list_left" ></i><span class="list_center">Категории</span> </button>
    <?php if ($categories) { ?>
      <?php echo $base; ?>
      <ul class="menu" id="menu_1" style="display: none" > 
     <?php foreach ($categories as $category) { ?>
    <?php if ($category['children']) { ?>
 
            <li ><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <?php echo $category['name']; ?><span class="submenu-link"></span></a>
                 <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
               
                  <ul class="dropdown-menu dropmenu"   >
          <?php foreach ($children as $child) { ?>

                    <li class="dropmenu_child_menu"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>   
                </ul> 
				<?php } ?>   
            </li>
           <?php } else { ?>
        <li> <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
    <?php } ?>
	  <?php } ?>	   
		 <?php } ?>	
		</ul> 
  </div>
 
 </div>     
<br>
 <script type="text/javascript">

			function down()
				{
      var a = document.getElementById('menu_1');
				if ( a.style.display == 'none' ){
				 $( "#menu_1" ).show("slow");
			a.style.display = 'block';
			 }
			else
			if ( a.style.display == 'block' )
			{
			$( "#menu_1" ).hide(2000);
			//a.style.display = 'none';
			}}
			</script>


<!-- 
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>  
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
       <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">  
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li ><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
  -->
 <style > 
    .slader {
      width: 100%;
      position: relative;
      /* background:  ; */
      }
      .rusel {
      position:absolute;
      border: 2px;
      width: 55%;
      left: 15%; 
      }
      .rusel1 { 
      position:relative;
      } 

      @media (max-width:1200px){

    
      .image_special_border {
        width: auto;
        height: 245px;
		   padding: 0px;
		   overflow:  hidden;
       }
      .special_min_1024 {
        width: auto;
        height: auto;
        background: black;
      }
      .rusel1 { 
      position:relative;
      height: auto;
      }  
    
      .main-menu {  
      width: 135px !important; 
      font-size: 10px;
      margin-right: 10px; 
      }
    
      .main-menu a {
      height: 31.0px !important; 
      padding: 3px 14px !important;
    }
    .main-menu a:hover {
	  box-shadow: inset 2px 0 0 #3f8654;
  	color: #3f8654;
    }
 


      }

      
       /* @media (max-width: 990px) 
      {
     .rusel {
      position:absolute;
      border: 10px solid;
      width: 80%;
      left: 40%; 
      } 
    
      }  */
      
    @media (max-width: 1024px) 
    {
    /* .rusel {
      position: absolute;
      border: 2px;
      width: 72%;
      left: 17%; 
      } */
       
      /* .rusel1 { 
      position:absolute;
      width: 8%;
      height: 100%;
      left: 87%; 
      padding: 0px 21px 0px;
      }   */

      /* .main-menu {  
        width: 135px !important; 
      font-size: 10px;
      margin-right: 10px;
      }
    
      .main-menu a { 
        height: 35.0px !important; 
      padding: 8px 14px !important;
    } */
    
    
    } 

    @media (max-width: 750px) {
      .main-menu { 
        opacity: 0.5;
      display: none;
      height: 25px;
      
      }
      .main-menu a { 
        height: 10px !important;
      
      }
        .rusel {
      height: auto !important; 
      position: relative !important;
      border: 2px;
      left: 8% !important;
      }
      }


    .rusel1 { 
      position:absolute;
        width: 29%;  
      height: 100%;
      right: 0%; 
        /* background:  ; */
      }  
      
    @media (max-width: 990px) {
     
      .rusel {
      position: absolute;
      width: 82%; 
      left: 18%; 
      }
      
  	.cater_min {
		  position: relative;
		 height: 296px;
		   
		}
     
      
      .str_rig {
      position: absolute;
      }
      .sub-menu {
      left: 130px  !important;
      
      }
      .cater_max {
          position: relative;
          
        height: 285px;
          
		}
 
  .main-menu {  
     width: 125px !important; 
	 font-size: 10px;
	 margin-right: 10px;
 }
 
  
 
 .main-menu a { 
    height: 35.5px !important; 
	padding: 8px 14px !important;
 }
 
 
 .rusel1 { 
    display: none;
  }  
 
 }
 
 /* @media (max-width: 1000px) {
	  .rusel1 { 
    display: none;
  } 
   .rusel {
   position: absolute;
   border: 2px;
   width: 90%;
   left: 20%; 
  }
} */
 

 
 .main-menu { 
   position: relative;
    background:  white;
     width: 160px; 
    margin: 0;
    padding: 0px;
    list-style: none;
	   z-index: 800;
		border-radius: 1px;
		 content: '';
		 box-shadow: -3px 1px 6px #e5e5e5, 1px 0  0px #EDEDED ;
	    
	  
}

  .str_rig {
   position: absolute;
   background: url(/catalog/view/theme/default/image/steer.png) no-repeat ;
   background-size: cover;
   width: 20px;
   height: 20px;
   float: right;
  }
  
  

.main-menu a {
	content: '';
	height: 37.2px;
    display: block;
	border-top: px solid #e5e5e5;
	border-bottom: 0.5px solid #e5e5e5;
    margin-bottom: 0px;
    padding: 8px 14px;
    text-decoration: none;
    color: #707070;
	box-shadow: 0px 0 0px #e5e5e5; 
	 
     
	    
}

.main-menu a:hover {
   
	 box-shadow: inset 2px 0 0 #3f8654;
	color: #3f8654;

 
}

.main-menu > li {
    position: relative;
}
   
    .sub-menu {
    position: absolute; 
    top: -1px;
    left: 160px;
    display: none;
    width: 250px; 
  	border-bottom: 0.5px solid #e5e5e5;
    color: #707070;
  	margin: 0;
    padding: 0px;
    list-style: none;
    background:  #FDFCFC; 
	z-index: 200;
	color: #3f8654;
    border-right: 1px solid #e5e5e5;
	 border-top: 1px solid #e5e5e5;
	 border-left: 1px solid #e5e5e5;
	  box-shadow: 0px 1px 5px #e5e5e5, -2px 0  5px #EDEDED ;
 } 
 
 .main-menu > li:hover .sub-menu {
    display: block;
	 
}
 </style>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-38697998-2', 'auto');
  ga('send', 'pageview');

</script>