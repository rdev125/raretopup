<html>
    <head>
    <meta content='width=device-width,initial-scale=1.0,minimum-scale=0.5,maximum-scale=0.85' name='viewport'/>
    <title>Maxxis Indonesia</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url('/assets/Perindustrian/login'); ?>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url('/assets/adminlte/plugins'); ?>/select2/select2.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <style>
        .container{
            max-width:550px;
        }
        .select2-container .select2-selection--single{
            height:38px;
        }
        body{
            background-image:url('<?php echo base_url('/assets/'); ?>img/400x800.jpg');
            background-size:cover;
        }
        .cover{
            background-color:#0000007d;
            height:100vh;
            width:100vw;
        }
        .card{
            background-color:#ffffff9e;
        }
        @media (min-width: 592px) {
            body{
                background-image:url('<?php echo base_url('/assets/'); ?>img/1000x800.jpg');
                background-size:cover;
            }
        }
    </style>
    </head>
    <body>
        <div class='cover'>
        <div class="container d-flex h-100 align-items-center">
          <div class='card'>
            <div class="card-body">    
            <h1 class="text-center p-1 rounded card-title"><strong><span style='color:#ce2114'>MAXXIS</span> INDONESIA</strong> </h1>
            <p class='text-center font-weight-bold'>Tetap Bagus Tanpa Bungkus</p>
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <form id='form-input' action="" method="post">
                        <div class="form-group">
                            <label class='font-weight-bold'>Nama</label>
                            <input type="text" required class="form-control input-nama" name="input[nama]" placeholder="Nama">
                        </div>
                        <div class="form-group">
                            <label class='font-weight-bold'>Nomor HP</label>
                            <input type="text" required class="form-control input-hp" name="input[hp]" placeholder="Nomor HP">
                        </div>
                        <div class="form-group">
                            <label class='font-weight-bold'>Email</label>
                            <input type="email" required class="form-control input-email" name="input[email]" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label class='font-weight-bold'>Toko</label><br/>
                            <select required class='form-control select2 form-control' name='input[distributor_id]'>
                                <option value=''>Pilih Nama Toko</option>
                                <?php foreach($distributors as $idx => $distributor): ?>
                                    <option value='<?=$distributor->id?>' <?=($distributor->id == $dist)?"selected":"";?>><?=$distributor->nama.'-'.$distributor->kota?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div>
                            <p class="text-danger"><?=@$message?></p> 
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary float-right" name="submit" value="KIRIM">
                            <img class='loading float-right d-none' width="29px" src="<?php echo base_url('/assets/'); ?>/img/loading.gif" alt="loading gif"/>
                        </div>
                    </form>
                </div>
            </div>
            </div>
           </div>
        </div>
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Masukan Kode OTP</h5>
              </div>
              <div class="modal-body">
                <form method='post' id='form-modal'>
                    <input type='hidden' class='input-hp' value='' name='input[hp]' />
                    <div class='form-group'>
                        <input type='text' required class='form-control' maxlength='4' name='input[otp]' placeholder='Masukan kode OTP disini' />
                    </div>
                    <di>
                        <p class='message'></p>
                    </di>
                    <div>
                        <input type='submit' class='btn btn-sm btn-success float-right' value='SUBMIT' />
                        <img class='loading float-right d-none' width="29px" src="<?php echo base_url('/assets/'); ?>/img/loading.gif" alt="loading gif"/>
                    </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <script src='<?php echo base_url('/assets/adminlte/plugins'); ?>/jquery/jquery.min.js'></script>
        <script src='<?php echo base_url('/assets/adminlte/plugins'); ?>/bootstrap/js/bootstrap.bundle.min.js'></script>
        <script src='<?php echo base_url('/assets/adminlte/plugins'); ?>/select2/select2.min.js'></script>
        <script>
             $('.select2').select2();
             $(document).ready(function(){
                 $('#form-input').on('submit',function(e){
                    e.preventDefault();
                    var loading = document.querySelector('#form-input .loading');
                    loading.classList.remove('d-none');
                    document.querySelector('#form-modal .input-hp').value = document.querySelector('#form-input .input-hp').value;
                    var formData = new FormData(document.getElementById('form-input'));
                    var xhttp = new XMLHttpRequest();
                    xhttp.open("POST",'<?=base_url(uri_string())?>form/store', true);
                    xhttp.onreadystatechange = function() {
                        if (this.readyState == 4 && this.status == 200) {
                            var json = JSON.parse(this.responseText);
                            loading.classList.add('d-none');
                            if(json.message==='') $('#exampleModalCenter').modal({backdrop: 'static', keyboard: false});
                            else swal("Oops!", json.message, "error");
                        }else if(this.readyState == 4){
                            loading.classList.add('d-none');
                        }
                    };
                    xhttp.send(formData);
                })
                $('#form-modal').on('submit',function(e){
                    e.preventDefault();
                    var loading = document.querySelector('#form-modal .loading');
                    loading.classList.remove('d-none');
                    var message = document.querySelector('#form-modal .message');
                    message.innerHTML='';
                    var formData = new FormData(document.getElementById('form-modal'));
                    var xhttp = new XMLHttpRequest();
                    xhttp.open("POST",'<?=base_url(uri_string())?>form/checkotp', true);
                    xhttp.onreadystatechange = function() {
                        if (this.readyState == 4 && this.status == 200) {
                            var json = JSON.parse(this.responseText);
                            loading.classList.add('d-none');
                            if(json.status=='SUCCESS'){
                                 $('#exampleModalCenter').modal('toggle');
                                 swal("Success!", json.message, "success");
                                 document.querySelector('#form-input').reset();
                                 document.querySelector('#form-modal').reset();
                            }else{
                                 message.innerHTML = json.message
                            }
                        }else if(this.readyState == 4){
                            loading.classList.add('d-none');
                        }
                    };
                    xhttp.send(formData);
                })
             })
        </script>
        </div>
    </body>
</html>