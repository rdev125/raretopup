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
              <a class='btn btn-sm btn-success' href='<?=site_url();?>distributor/add'>Tambah</a>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <form action="" class="form-inline mb-5">
                <div class="form-group">
                  <input type="text" class="form-control " placeholder="Nama | HP | Email" value="<?=$search?>" name="search">
                  <input type="submit" class="ml-4 btn btn-primary" value="SEARCH">
                </div>
              </form>
              <div style="overflow-x:auto">
              <table id="" boder="1" class="table table-hover table-bordered table-striped">
                <thead>
                <tr class="bg-secondary text-light">
                  <th>No</th>
                  <th>Nama</th>
                  <th>Kota</th>
                  <th>Deskripsi</th>
                  <th>QR Code</th>
                  <th></th>
                </tr>
                </thead>
                <tbody>
                  <?php foreach($data as $i => $row): ?>
                    <tr>
                      <td><?=$i + 1?></td>
                      <td><?=$row->nama?></td>
                      <td><?=$row->kota?></td>
                      <td><?=$row->deskripsi?></td>
                      <td align="center"><img src="<?=site_url('distributor/QRCode/'.$row->id);?>" width="100"></td>
                      <td>
                          <a class='btn btn-xs btn-primary' href='<?=site_url();?>distributor/edit/<?=$row->id?>'>Edit</a>
                          <button class='btn btn-xs btn-warning' onclick="alertDelete('<?=$row->id?>')">Delete</button>
                      </td>
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
  <script>
    function alertDelete(id){
        if(confirm("Do you want to delete data?")){
            window.location.href = "<?=site_url();?>distributor/delete/"+id;
        }
    }
  </script>