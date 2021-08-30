<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>PT Maxxis International Indonesia | Admin</title>
  <link rel="shortcut icon" href="https://maxxis.id/wp-content/themes/maxxis/favicon.ico?v=2">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<?=base_url();?>/assets/adminlte/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?=base_url();?>/assets/adminlte/dist/css/adminlte.min.css">
    <!-- DataTables -->
  <link rel="stylesheet" href="<?=base_url();?>/assets/adminlte/dist/css/dataTables.bootstrap4.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?=base_url();?>assets/adminlte/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="<?=base_url();?>assets/adminlte/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="<?=base_url();?>assets/adminlte/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">

  <!-- REQUIRED SCRIPTS -->

  <!-- jQuery -->
  <script src="<?=base_url();?>assets/adminlte/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="<?=base_url();?>assets/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="<?=base_url();?>assets/adminlte/dist/js/adminlte.min.js"></script>
  <!-- DataTables -->
  <script src="<?=base_url();?>assets/adminlte/dist/js/jquery.dataTables.js"></script>
  <script src="<?=base_url();?>assets/adminlte/dist/js/dataTables.bootstrap4.js"></script>
  <!-- bs-custom-file-input -->
  <script src="<?=base_url();?>assets/adminlte/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
  <!-- Select2 -->
  <script src="<?=base_url();?>assets/adminlte/plugins/select2/js/select2.full.min.js"></script>
  <!-- SweetAlert2 -->
  <script src="<?=base_url();?>assets/adminlte/plugins/sweetalert2/sweetalert2.min.js"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge"></span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">Admin
          <i class="far fa-user"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <div class="dropdown-divider"></div>
          <div class="dropdown-divider"></div>
          <a href="<?= base_url() ?>/auth/logout" class="dropdown-item float-right">
            <i class="fas fa-sign-out-alt mr-2"></i> Logout
          </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->