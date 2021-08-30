  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Distributor</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Distributor</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Form Distributor</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="id_event">Nama</label>
                    <input type="text" class="form-control" id="nama" placeholder="Nama" name="input[nama]" value="<?=@$data->nama;?>">
                  </div>
                  <div class="form-group">
                    <label for="id_event">Kota</label>
                    <input type="text" class="form-control" id="nama" placeholder="Nama" name="input[kota]" value="<?=@$data->kota;?>">
                  </div>
                  <div class="form-group">
                    <label for="id_event">Deskripsi</label>
                    <input type="text" class="form-control" id="nama" placeholder="Nama" name="input[deskripsi]" value="<?=@$data->deskripsi;?>">
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <input type="submit" class="btn btn-success" name="submit" value="Submit">
                  <a class="btn btn-warning" href="<?=site_url('distributor');?>">Back</a>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<script>
$(function () {
  bsCustomFileInput.init();
});
$('.select2').select2({width: '100%'});
$('.select2bs4').select2({
  theme: 'bootstrap4'
});
</script>