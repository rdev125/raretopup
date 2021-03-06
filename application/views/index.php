<!DOCTYPE html>
<html lang="en">
	<head>
		<script type="text/javascript">
			var base_url = "<?=base_url();?>";
			var site_url = "<?=site_url();?>";
		</script>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" type="image/png" href="<?=base_url('assets/bookishow');?>/img/logo-iconR.png">
		<title>Bookishow - Movies, Events, Sports Website HTML Template</title>
		<link rel="stylesheet" type="text/css" href="<?=base_url('assets/bookishow');?>/vendor/slick/slick.min.css" />
		<link rel="stylesheet" type="text/css" href="<?=base_url('assets/bookishow');?>/vendor/slick/slick-theme.min.css" />

		<link href="<?=base_url('assets/bookishow');?>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

		<link href="<?=base_url('assets/bookishow');?>/css/osahan.min.css" rel="stylesheet">
		<style>
			.headroom {
				z-index: 997;
				padding: 15px 0;
				will-change: transform;
				transition: transform 200ms linear;
			}
			.headroom--pinned {
				transform: translateY(0%);
			}
			.headroom--unpinned {
				transform: translateY(-100%);
			}
		</style>
	</head>
	<body id="page-top">
		<div id="wrapper">
			<ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar">

				<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
					<!-- <div class="sidebar-brand-icon">
						<img src="<?=base_url('assets/bookishow');?>/img/logo-icon.png" alt="">
					</div>
					<div class="sidebar-brand-text mx-3"><img src="<?=base_url('assets/bookishow');?>/img/logo.png" alt=""></div> -->
				</a>

				<li class="nav-item active">
					<a class="nav-link" href="movies.html"><i class="fas fa-fw fa-film"></i><span>Movies</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="events.html"><i class="fas fa-fw fa-glass-cheers"></i><span>Events</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="people.html"><i class="fas fa-fw fa-users"></i><span>People</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="sports.html"><i class="fas fa-fw fa-futbol"></i><span>Sports</span></a>
				</li>
				<hr class="sidebar-divider">

				<div class="sidebar-heading">Extra</div>

				<li class="nav-item">
					<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"><i class="fas fa-fw fa-pager"></i><span>Pages</span></a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<h6 class="collapse-header">All Pages</h6>
							<a class="collapse-item" href="movies.html">Movies</a>
							<a class="collapse-item" href="movies-detail.html">Movie Detail</a>
							<a class="collapse-item" href="events.html">Events</a>
							<a class="collapse-item" href="events-detail.html">Event Detail</a>
							<a class="collapse-item" href="people.html">People</a>
							<a class="collapse-item" href="people-detail.html">People Detail</a>
							<a class="collapse-item" href="sports.html">Sports</a>
							<a class="collapse-item" href="sports-detail.html">Sport Detail</a>
						</div>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="offers.html"><i class="fas fa-fw fa-fire"></i><span>Offers</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages"><i class="fas fa-fw fa-clone"></i><span>Extra Pages</span></a>
					<div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<h6 class="collapse-header">Login Screens:</h6>
							<a class="collapse-item" href="login.html">Login</a>
							<a class="collapse-item" href="register.html">Register</a>
							<a class="collapse-item" href="forgot-password.html">Forgot Password</a>
							<div class="collapse-divider"></div>
							<h6 class="collapse-header">Other Pages:</h6>
							<a class="collapse-item" href="404.html">404 Page</a>
							<a class="collapse-item" href="blank.html">Blank Page</a>
						</div>
					</div>
				</li>
			</ul>

			<div id="content-wrapper" class="d-flex flex-column">

			<div id="content">
				<nav class="navbar navbar-expand navbar-dark topbar mb-4 pl-0 static-top shadow fixed-top headroom">

					<a class="sidebar d-flex align-items-center justify-content-center" href="index.html">
						<div class="sidebar-brand-icon">
							<img src="<?=base_url('assets/bookishow');?>/img/logo-icon.png" alt="">
						</div>
						<div class="sidebar-brand-text mx-3"><img src="<?=base_url('assets/bookishow');?>/img/logo.png" alt=""></div>
					</a>
					<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<form class="d-none d-sm-inline-block form-inline mr-auto my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-white border-0 small" placeholder="Search for Movies, Events, Plays, Sports and Activities..." aria-label="Search" aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn bg-white" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown no-arrow d-sm-none">
							<a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-search fa-fw"></i></a>

							<div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
										<div class="input-group-append">
										<button class="btn btn-primary" type="button">
											<i class="fas fa-search fa-sm"></i>
										</button>
										</div>
									</div>
								</form>
							</div>
						</li>

						<li class="nav-item no-arrow mx-1">
							<a class="nav-link" href="offers.html"><i class="fas fa-fire fa-fw"></i><span class="badge badge-danger bg-gradient-danger">NEW</span></a>
						</li>
						<li class="nav-item dropdown no-arrow mx-1">
							<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-bell fa-fw"></i><span class="badge badge-danger badge-counter">8+</span></a>
							<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary text-white">KN</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle w-60" src="<?=base_url('assets/bookishow');?>/img/s1.png" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Duis vel est sit amet ipsum egestas efficitur.</div>
										<div class="small text-gray-500">Gurdeep Osahan ?? 58m</div>
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle w-60" src="<?=base_url('assets/bookishow');?>/img/s2.png" alt="">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">Pellentesque euismod diam sit amet nibh molestie, imperdiet feugiat mi feugiat.</div>
										<div class="small text-gray-500">Jae Chun ?? 1d</div>
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle w-60" src="<?=base_url('assets/bookishow');?>/img/s3.png" alt="">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Quisque ac justo bibendum nunc fringilla pharetra nec sit amet mauris.</div>
										<div class="small text-gray-500">Morgan Alvarez ?? 2d</div>
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										Sed aliquet nibh nec odio congue, in condimentum massa dapibus.
									</div>
								</a>
								 <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
										<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Pellentesque sit amet nunc consectetur, porta sapien a, bibendum dolor.
									</div>
								</a>
								<a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
							</div>
						</li>

						<li class="nav-item dropdown no-arrow">
							<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span class="mr-2 d-none d-lg-inline text-gray-600 small">Askbootstrap</span>
								<img class="img-profile rounded-circle" src="<?=base_url('assets/bookishow');?>/img/s4.png">
							</a>

							<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
								<a class="dropdown-item" href="profile.html"><i class="fas fa-user-circle fa-sm fa-fw mr-2 text-gray-400"></i>Profile</a>
								<a class="dropdown-item" href="profile.html"><i class="fas fa-heart fa-sm fa-fw mr-2 text-gray-400"></i>Watchlist</a>
								<a class="dropdown-item" href="profile.html"><i class="fas fa-list-alt fa-sm fa-fw mr-2 text-gray-400"></i>Your Lists</a>
								<a class="dropdown-item" href="profile.html"><i class="fas fa-cog fa-sm fa-fw mr-2 text-gray-400"></i>Account Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="<?=site_url('auth');?>"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>Login</a>
								<!-- <a class="dropdown-item" href="<?=site_url('auth');?>" data-toggle="modal" data-target="#logoutModal"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>Logout</a> -->
							</div>
						</li>
					</ul>
				</nav>
				<div class="container-fluid" style="margin-top:90px">
					<?php $this->load->view($content);?>
				</div>
			</div>


			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Rare Top Up <?=date('Y');?> | Handcrafted Made with <!--<i class="fas fa-heart fa-fw text-danger"></i> by <a target="_blank" href="#"></a>--></span>
					</div>
				</div>
			</footer>

		</div>

		</div>


		<a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>

		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">??</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<script src="<?=base_url('assets/bookishow');?>/vendor/jquery/jquery.min.js" type="text/javascript"></script>
		<script src="<?=base_url('assets/bookishow');?>/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>

		<script src="<?=base_url('assets/bookishow');?>/vendor/slick/slick.min.js" type="text/javascript"></script>

		<script src="<?=base_url('assets/bookishow');?>/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>

		<script src="<?=base_url('assets/bookishow');?>/js/osahan.min.js" type="text/javascript"></script>
		<script src="<?=base_url('assets/bookishow');?>/vendor/headroom/headroom.min.js"></script>
		<script>
			var myElement = document.querySelector("nav");
			var headroom  = new Headroom(myElement);
			headroom.init();
			//$("#header").headroom();
		</script>
	</body>
</html>