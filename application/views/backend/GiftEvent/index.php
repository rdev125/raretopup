 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Gift Event</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Gift Event</li>
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
              <h3 class="card-title">Data Customer</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <form action="<?=base_url()?>/giftevent/export" class="form-inline mb-5">
                    <input type="hidden" name="date_start" value="<?=$date_start?>">
                    <input type="hidden" name="date_to" value="<?=$date_to?>">
                    <input type="hidden" value="<?=$search?>" name="search">
                    <input type="submit" class="btn btn-sm btn-primary" value="Export Data To Excel"> &nbsp; <input type="checkbox" name="iclude_kualifikasi" value="1" /> &nbsp;  Termasuk diskualifikasi
                </form>
              <form action="" class="form-inline mb-5">
                <div class="form-group">
                  <label for="" class="mr-3 ml-4">Start Date</label>
                  <input type="date" class="form-control" name="date_start" value="<?=$date_start?>" required>
                  <label for="" class="mr-3 ml-4">To Date</label>
                  <input type="date" class="form-control" name="date_to" value="<?=$date_to?>" required>
                  <label for="" class="mr-3 ml-4">Search</label>
                  <input type="text" class="form-control " placeholder="No Undian|Nama|Barcode" value="<?=$search?>" name="search">
                  <input type="submit" class="ml-4 btn btn-primary" value="Filter">
                </div>
              </form>
              <div style="overflow-x:auto">
              <table id="" boder="1" class="table table-hover table-bordered table-striped">
                <thead>
                <tr class="bg-secondary text-light">
                  <th>No</th>
                  <th>No Undian</th>
                  <th>Nama</th>
                  <th>Telp</th>
                  <th>Email</th>
                  <th>Jumlah Email Sama</th>
                  <th>Diskualifikasi</th>
                  <th>IG</th>
                  <th>Kota</th>
                  <th>Jenis Kendaraan</th>
                  <th>Barcode</th>
                  <th>Barcode Foto</th>
                  <th>Struk Foto</th>
                  <th>Date</th>
                  <th>Resend Email</th>
                </tr>
                </thead>
                <tbody>
                  <?php foreach($data as $i => $row): ?>
                    <tr>
                      <td><?=$i + 1?></td>
                      <td><?=$row->no_undian?></td>
                      <td><?=$row->nama?></td>
                      <td><?=$row->telp?></td>
                      <td><?=$row->email?></td>
                      <td class="<?=str_replace('@','',str_replace('.','',$row->email))?>"><?=isset($row->jmlemail)?$row->jmlemail:0?></td>
                      <td><input data-id="<?=$row->id?>" data-email="<?=$row->email?>" class="cb_diskualifikasi" type="checkbox" <?=($row->diskualifikasi==1)? "checked":"" ?>  /></td>
                      <td><?=$row->ig_username?></td>
                      <td><?=$row->nama_kota?></td>
                      <td><?=$row->jenis_kendaraan?></td>
                      <td><?=$row->barcode?></td>
                      <td><a href="<?=base_url()?><?=$row->path_barcode?>/<?=$row->foto_barcode?>">Show</a></td>
                      <td><a href="<?=base_url()?><?=$row->path_struck?>/<?=$row->foto_struck?>">Show</a></td>
                      <td><?=$row->created_date?></td>
                      <td><a href="<?=current_url()?>/sendMail?id=<?=$row->id?>">Resend Email</a></td>
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