 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Hadiah</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Hadiah</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
<?php
$date_start = date('Y-m-d');
$date_to = date('Y-m-d');
$search = "";
if(isset($_REQUEST["date_start"])):
  $date_start = $_REQUEST["date_start"];
  $date_to = $_REQUEST["date_to"];
  $search = $_REQUEST["search"];
endif;
?>
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Data Hadiah</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <a href="<?=site_url()?>hadiah/add" class="btn btn-sm btn-primary">Add</a><br/><br/>
              <table id="" boder="1" class="table table-hover table-bordered table-striped">
                <thead>
                <tr class="bg-secondary text-light">
                  <th>No</th>
                  <th>Nama Event</th>
                  <th>Nama Hadiah</th>
                  <th>Jumlah</th>
                  <th>Image</th>
                  <th>Keterangan</th>
                  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                  <?php foreach($data as $i => $row): ?>
                    <tr>
                      <td><?=$i + 1?></td>
                      <td><?=$row->nama_event?></td>
                      <td><?=$row->nama?></td>
                      <td><?=$row->jumlah?></td>
                      <td align="center"><img src="<?=base_url($row->path_image.$row->image);?>" width="100"></td>
                      <td><?=$row->keterangan?></td>
                      <td>
                        <a href="<?=site_url()?>hadiah/edit/<?=$row->id?>" class="btn btn-sm btn-warning">Edit</a>
                        <a href="<?=site_url()?>hadiah/delete/<?=$row->id?>" class="btn btn-sm btn-danger">Delete</a>
                      </td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
                <!-- <tfoot>
                <tr>
                  <th>Nama</th>
                  <th>Telp</th>
                  <th>Email</th>
                  <th>IG</th>
                  <th>Kota</th>
                  <th>Barcode</th>
                  <th>Struk</th>
                </tr>
                </tfoot> -->
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
          </div>
          <!-- /col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->