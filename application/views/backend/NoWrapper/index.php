 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Data Toko</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">No Wrapper</li>
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
              <h3 class="card-title">Data Pelanggan</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <form action="<?=base_url()?>/nowrapper/export" class="form-inline mb-5">
                    <input type="hidden" name="date_start" value="<?=$date_start?>">
                    <input type="hidden" name="date_to" value="<?=$date_to?>">
                    <input type="hidden" value="<?=$search?>" name="search">
                    <input type="submit" class="btn btn-sm btn-primary" value="Export Data To Excel">
                </form>
              <form action="" class="form-inline mb-5">
                <div class="form-group">
                  <label for="" class="mr-3 ml-4">Start Date</label>
                  <input type="date" class="form-control" name="date_start" value="<?=$date_start?>" required>
                  <label for="" class="mr-3 ml-4">To Date</label>
                  <input type="date" class="form-control" name="date_to" value="<?=$date_to?>" required>
                  <label for="" class="mr-3 ml-4">Search</label>
                  <input type="text" class="form-control " placeholder="Nama | HP | Email" value="<?=$search?>" name="search">
                  <input type="submit" class="ml-4 btn btn-primary" value="Filter">
                </div>
              </form>
              <div style="overflow-x:auto">
              <table id="" boder="1" class="table table-hover table-bordered table-striped">
                <thead>
                <tr class="bg-secondary text-light">
                  <th>No</th>
                  <th>Nama</th>
                  <th>No HP</th>
                  <th>Email</th>
                  <th>Toko</th>
                </tr>
                </thead>
                <tbody>
                  <?php foreach($data as $i => $row): ?>
                    <tr>
                      <td><?=$i + 1?></td>
                      <td><?=$row->nama?></td>
                      <td><?=$row->hp?></td>
                      <td><?=$row->email?></td>
                      <td><?=$row->distributor?>-<?=$row->kota?></td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
              </div>
            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
  </div>