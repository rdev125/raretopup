<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Maxxis Indonesia - Event Ramadhan Sale</title>

	<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
	
	<meta name="viewport" content="width=device-width, initial-scale=0.7">
	<!-- Animate.css -->
	<link rel="stylesheet" href="<?=base_url('assets/orange');?>/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<?=base_url('assets/orange');?>/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<?=base_url('assets/orange');?>/css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="<?=base_url('assets/orange');?>/css/style.css">

	<!-- Modernizr JS -->
	<script src="<?=base_url('assets/orange'); ?>/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="<?=base_url('assets/orange'); ?>/js/respond.min.js"></script>
	<![endif]-->
	<!-- jQuery -->
	<script src="<?=base_url('assets/orange');?>/js/jquery.min.js"></script>
	<!-- jQuery -->
	<script src="<?=base_url();?>assets/adminlte/plugins/jquery/jquery.min.js"></script>

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	    <div class="" style="margin-bottom:-20px">
	        <nav class="navbar navbar-default " style="border:none;background-color: transparent;">
            <div class="container-fluid" style="position: fixed;width: 100%;z-index: 1;background-color: #ffffffe0;">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" style="border: none;">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img height="100%" src="https://maxxis.id/wp-content/uploads/2017/01/default.png" alt="Maxxis Tires Indonesia"></a>
              </div>
              <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
                <ul class="nav navbar-nav">
                  <li><a href="https://maxxis.id/about/pt-maxxis-international-indonesia/">Home</a></li>
                  <li><a href="https://maxxis.id/about/pt-maxxis-international-indonesia/">About Us</a></li>
                </ul>
              </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
          </nav>
	        
	    </div>
	<nav class="fh5co-nav" role="navigation">
		<div class="container">
			<div class="row">
				<?php /*<div class="logo text-center">
					<div id="fh5co-logo"><a href="<?=base_url();?>">Maxxis Event</a></div>
				</div>
				<div class="left-menu text-right menu-1">
					<ul>
						<li><a href="work.html">Work</a></li>
						<li><a href="about.html">About</a></li>
						<li class="has-dropdown">
							<a href="services.html">Services</a>
							<ul class="dropdown">
								<li><a href="#">Web Design</a></li>
								<li><a href="#">eCommerce</a></li>
								<li><a href="#">Branding</a></li>
								<li><a href="#">API</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="right-menu text-left menu-1 pull-right">
					<ul>
						<li><a href="blog.html">Blog</a></li>
						<li class="has-dropdown">
							<a href="#">Tools</a>
							<ul class="dropdown">
								<li><a href="#">HTML5</a></li>
								<li><a href="#">CSS3</a></li>
								<li><a href="#">Sass</a></li>
								<li><a href="#">jQuery</a></li>
							</ul>
						</li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>*/ ?>
			</div>
			
		</div>
	</nav>

	<header id="fh5co-header" class="fh5co-cover" role="banner" style="background-image:url(<?=base_url('assets/orange').'/';?>images/maxxis_event.jpg);height:calc(100vw/2.4);">
		<?php /*<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h1><?=$judul;?></h1>
							<h2><?=$keterangan;?></h2>
						</div>
					</div>
				</div>
			</div>
		</div> */ ?>
	</header>

	<?php $this->load->view($content);?>

	<!-- <div id="map" class="fh5co-map"></div> -->

	<?php /*<div id="fh5co-started">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Pelaksanaan Undian</h2>
					<p>Undian akan di laksanakan setiap minggunya di bulan Ramadhan dengan hadiah yang telah kami tentukan. untuk grand price akan diundi pada ....</p>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					<a class="form-inline" href="#">
						<div class="col-md-6 col-md-offset-3 col-sm-6">
							<button type="submit" class="btn btn-default btn-block">Pemenang Undian</button>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div> */ ?>

	<footer id="fh5co-footer" role="contentinfo">
		<div class="container">
			<?php /*<div class="row row-pb-md">
				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="fh5co-footer-links">
						<li><a href="#">About</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="fh5co-footer-links">
						<li><a href="#">Shop</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Testimonials</a></li>
						<li><a href="#">Handbook</a></li>
						<li><a href="#">Held Desk</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="fh5co-footer-links">
						<li><a href="#">Find Designers</a></li>
						<li><a href="#">Find Developers</a></li>
						<li><a href="#">Teams</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">API</a></li>
					</ul>
				</div>
				<div class="col-md-4 col-sm-12 col-xs-12 fh5co-widget col-md-push-1">
					<h3>Tentang Maxxis Indonesia</h3>
					<p>Maxxis Indonesia dengan lengkap menghadirkan produk ban untuk kebutuhan dari berbagai jenis kendaraan dan pengendara.</p>
					<p><a href="https://maxxis.id">Selengkapnya</a></p>
				</div>
			</div> */ ?>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; <?=date('Y');?> Maxxis Indonesia. All Rights Reserved.</small> 
						<small class="block">Developed by <a href="http://maxxis.id/" target="_blank">IT MAXXIS</small>
					</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	<!-- <link rel="stylesheet" href="{{ asset('vendor/validator/') }}/vendor/bootstrap/css/bootstrap.css"/> -->
	<link rel="stylesheet" href="<?=base_url('assets/orange/validator');?>/dist/css/bootstrapValidator.css"/>

	<!-- <script type="text/javascript" src="{{ asset('vendor/validator/') }}/vendor/jquery/jquery-1.10.2.min.js"></script> -->
	<script type="text/javascript" src="<?=base_url('assets/orange/validator');?>/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?=base_url('assets/orange/validator');?>/dist/js/bootstrapValidator.js"></script>
	
	<!-- jQuery Easing -->
	<script src="<?=base_url('assets/orange');?>/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="<?=base_url('assets/orange');?>/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="<?=base_url('assets/orange');?>/js/jquery.waypoints.min.js"></script>
	<!-- Main -->
	<!-- Google Map -->
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="<?=base_url('assets/orange');?>/js/google_map.js"></script> -->

	<script src="<?=base_url('assets/orange');?>/js/main.js"></script>

	</body>
</html>

