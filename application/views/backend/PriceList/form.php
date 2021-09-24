  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Hadiah</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Hadiah</li>
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
                <h3 class="card-title">Form Hadiah</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="id_event">Event</label>
                    <?php if(isset($data->id)){?>
                      <input type="hidden" class="form-control" id="id" name="id" value="<?=(isset($data))?$data->id:'';?>">
                      <input type="hidden" class="form-control" id="path_image" name="input[path_image]" value="<?=(isset($data))?$data->path_image:'';?>">
                      <input type="hidden" class="form-control" id="image" name="input[image]" value="<?=(isset($data))?$data->image:'';?>">
                    <?php } ?>

                    <select class="form-control select2bs4" name="input[id_event]" id="id_event">
                        <option value="" selected disabled>---  Pilih Event ---</option>
                        <?php foreach($event as $keyevent => $valevent){ ?>
                            <option value="<?=$valevent->id;?>"  <?=(isset($data)&&$data->id_event==$valevent->id)?"selected":"";?>> <?=$valevent->nama_event;?></option>
                        <?php } ?>
                    </select>
                    <!-- <input type="text" class="form-control" id="id_event" placeholder="Chose Event" name="input[id_event]" value="<?=(isset($data))?$data->id_event:'';?>"> -->
                  </div>
                  <div class="form-group">
                    <label for="nama">Nama Hadiah</label>
                    <input type="text" class="form-control" id="nama" placeholder="Nama Hadiah" name="input[nama]" value="<?=(isset($data))?$data->nama:'';?>">
                  </div>
                  <div class="form-group">
                    <label for="jumlah">Jumlah</label>
                    <input type="text" class="form-control" id="jumlah" placeholder="Jumlah Hadiah" name="input[jumlah]" value="<?=(isset($data))?$data->jumlah:'';?>">
                  </div>
                  <div class="form-group">
                    <label for="upload">Upload Gambar</label>
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" id="customFile" name="upload">
                      <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="keterangan">Keterangan</label>
                    <input type="text" class="form-control" id="keterangan" placeholder="Keterangan" name="input[keterangan]" value="<?=(isset($data))?$data->keterangan:'';?>">
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <input type="submit" class="btn btn-success" name="submit" value="Submit">
                  <a class="btn btn-warning" href="<?=site_url('hadiah');?>">Back</a>
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