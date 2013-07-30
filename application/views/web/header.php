<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>Alvaro Painceira</title>
<meta name="description" content="Alvaro Painceira">
<meta name="author" content="Jonas Gonzalez">
<!-- Mobile Specific Metas
  ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS
  ================================================== -->
<!-- Bootstrap  -->
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets-web/bootstrap/css/bootstrap.min.css">
<!-- web font  -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,800" rel="stylesheet" type="text/css">
<!-- plugin css  -->
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets-web/js-plugin/rs-plugin/css/settings.css" media="screen" />
    <!-- plugin css  -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets-web/js-plugin/pretty-photo/css/prettyPhoto.css" />
    <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets-web/js-plugin/isotope/css/style.css">
    <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets-web/js-plugin/hoverdir/css/style.css">

<!-- icon fonts -->
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets-web/font-icons/custom-icons/css/custom-icons.css">
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets-web/font-icons/custom-icons/css/custom-icons-ie7.css">
<!-- Custom css -->
<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets-web/css/layout.css">
<link type="text/css" id="colors" rel="stylesheet" href="<?php echo base_url(); ?>assets-web/css/green.css">
<!--<link type="text/css" id="colors" rel="stylesheet" href="css/red.css">
--><!--<link type="text/css" id="colors" rel="stylesheet" href="css/blue.css">-->
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->
<script src="<?php echo base_url(); ?>assets-web/js/modernizr-2.6.1.min.js"></script>
<!-- Favicons
  ================================================== -->
<link rel="shortcut icon" href="<?php echo base_url(); ?>assets-web/images/favicon.ico">
<link rel="apple-touch-icon" href="<?php echo base_url(); ?>assets-web/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="<?php echo base_url(); ?>assets-web/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="<?php echo base_url(); ?>assets-web/images/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="144x144" href="<?php echo base_url(); ?>assets-web/images/apple-touch-icon-144x144.png">

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-42688899-1', 'meigasoft.net');
  ga('send', 'pageview');

</script>

</head>

<body>
<!-- Primary Page Layout 
 ================================================== -->
<!-- globalWrapper -->
<div id="globalWrapper">
  <!-- header -->
  <header id="mainHeader" class="clearfix">
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner preHeader">
        <div class="container">
          <div class="row-fluid">
            <div class="span6 clearfix">
              <ul class="quickMenu">
                <li><a href="template-site-map.html" class="linkLeft">Registrarse</a></li>
                <li><a href="#myModal" data-toggle="modal">Area privada</a></li>
                <li><a href="<?php echo base_url().'inicio/archivos/'.$this->session->userdata('cliente_id').'/'.$this->session->userdata('nombre') ;?>" class="linkRight">Ver archivos</a></li>
                <li>
                <span id="logged">
                <?php if($this->session): ?>
                    Hola: <?php echo $this->session->userdata('nombre'); ?>
                </span>
                </li>
                
                <?php endif; ?>
              </ul>
            </div>
            <div class="span6 clearfix">
              <ul class="socialNetwork">
                <li><a href="#" class="icon-rss socialIcon tips"  title="Our rss feed"><span>rss feed</span></a></li>
                <li><a href="#" class="icon-facebook socialIcon tips"  title="follow us on Facebook"><span>facebook</span></a></li>
                <li><a href="#" class="icon-twitter-bird socialIcon tips"  title="follow us on Twitter"><span>twitter</span></a></li>
                <li><a href="#" class="icon-gplus socialIcon tips"  title="follow us on Google +"><span>google +</span></a></li>
                <li><a href="#" class="icon-instagram socialIcon tips"  title="follow us on Instagram"><span>instagram</span></a></li>
                <li><a href="#" class="icon-linkedin socialIcon tips"  title="follow us on Linkedin"><span>linkedin</span></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="navbar navbar-fixed-top mainNav">
      <div class="navbar-inner">
      
        <div class="container" style="padding:0px"> <a href="index.php" class="brand"><img src="<?php echo base_url(); ?>assets-web/images/logo.png" alt="himalaya"/></a>
          <nav id="mainMenu">
            <ul>
              <li><a id="home" href="<?php echo base_url(); ?>inicio/" class="firstLevel <?php if(isset($active)): ?><?php echo $active; endif; ?>" >Home</a></li>
              <li><a id="servicios" href="<?php echo base_url(); ?>inicio/servicios" class="firstLevel <?php if(isset($active_servicios)): ?><?php echo $active_servicios; endif; ?>">Acerca de Alvaro</a></li>
              <li> <a id="portfolio" href="<?php echo base_url(); ?>inicio/portfolio" class="firstLevel <?php if(isset($active_portfolio)): ?><?php echo $active_portfolio; endif; ?>">Portfolio</a></li>
              <li><a id="blog" href="<?php echo base_url(); ?>inicio/blog" class="firstLevel <?php if(isset($active_blog)): ?><?php echo $active_blog; endif; ?>">Blog</a></li></li>
              <li><a id="contacto" href="<?php echo base_url(); ?>inicio/contacto" class="firstLevel <?php if(isset($active_contacto)): ?><?php echo $active_contacto; endif; ?>">Contacto</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Loguearse</h3>
        </div>
        <form name="form" action="<?php echo base_url().'inicio/login'; ?>" method="post" enctype="application/x-www-form-urlencoded">
        <div class="modal-body">
        	<div class="row">
                <div class="span3">
                    <label for="newsletter-name">Mail</label>
                    <input type="text" class="input-field" id="newsletter-name" name="mail" value="">
                </div>
                <div class="span3">
                    <label for="newsletter-name">Password</label>
                    <input type="text" class="input-field" id="newsletter-name" name="pass" value="">
                </div>
            </div>
        </div>
        <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Cerrar</button>
        <button class="btn btn-primary">Aceptar</button>
        </div>
        </form>
    </div>
  </header>
  <!-- header -->
