	<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<link rel="stylesheet" href="<?=base_url('assets/adminlte');?>/plugins/select2/select2.min.css">
	<div id="fh5co-contact">
		<div class="container">
			<!-- Display the countdown timer in an element -->
			<!-- <p id="demo"></p> -->

			<script>
			// Set the date we're counting down to
			var countDownDate = new Date("<?=$data['event']->tgl_mulai;?>");//.getTime();//new Date("<?=$data['event']->tgl_mulai;?>").getTime();

			// Update the count down every 1 second
			var x = setInterval(function() {

			  // Get today's date and time
			  var now = new Date();//.getTime();

			  // Find the distance between now and the count down date
			  var distance = countDownDate - now;

			  // Time calculations for days, hours, minutes and seconds
			  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
			  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
			  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

			  // Display the result in the element with id="demo"
			  document.getElementById("demo").innerHTML = days + " Hari " + hours + " Jam "
			  + minutes + " Menit " + seconds + " Detik ";

			  // If the count down is finished, write some text
			  if (distance < 0) {
			    clearInterval(x);
				$(".undian").show();
				$(".countdown").hide();
			    //document.getElementById("demo").innerHTML = "EXPIRED";
			  }
			}, 1000);
			</script>
			<div class="row countdown">
				<div class="col-md-12 animate-box" style="text-align: center;">
					<h5  style="font-family:system-ui;font-weight:bold;font-size:35px;"> Undian akan di mulai dalam waktu </h5>
					<h3 id="demo" style="font-family:system-ui;font-weight:bold;font-size:65px;"></h3>
				</div>
			</div>
			<?php if($data['event']->tgl_akhir > date('Y-m-d H:i:s')): ?>
				<div class="row undian">
    				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
    					<h2>Formulir Undian</h2>
    					<p>Silahkan isi formulir di bawah ini untuk mendapatkan nomor undian.</p>
    				</div>
					<!--<div class="col-md-5 col-md-push-1 animate-box">
						
						<div class="fh5co-contact-info">
							<h3>Contact Information</h3>
							<ul>
								<li class="address">Greenland International Industrial Center <br>(GIIC) Blok CG No.1, Kelurahan, Pasirranji, <br>Kec. Cikarang Pusat, Bekasi, <br>Jawa Barat 17530</li>
								<li class="phone"><a href="tel://02180677800">(021) 806 77 800 </a></li>
								<li class="email"><a href="mailto:ptmmaxxis@gmail.com">ptmmaxxis@gmail.com</a></li>
								<li class="url"><a href="https://maxxis.id">Maxxis.id</a></li>
							</ul>
						</div>

					</div>-->
					<div class="col-md-8 col-md-offset-2 animate-box">
						<!--<h3>Formulir Undian</h3>-->
						<?php if(isset($message)):?><h4 style="color:red;" align="center"><?=$message;?></h4><?php endif; ?>
						<form action="" enctype="multipart/form-data" method="post" id="form_undian">
							<div class="row form-group">
								<div class="col-md-12">
									<!-- <label for="fname">First Name</label> -->
									<input type="text" name="input[nama]" id="nama" class="form-control" placeholder="Nama Lengkap" value="<?=isset($data['input'])?$data['input']['nama']:"";?>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<!-- <label for="telp">Telp</label> -->
									<input type="text" name="input[telp]" id="telp" class="form-control" placeholder="Nomor Telpon" onkeypress="return hanyaAngka(event);" value="<?=isset($data['input'])?$data['input']['telp']:"";?>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<!-- <label for="email">Email</label> -->
									<input type="text" name="input[email]" id="email" class="form-control" placeholder="Email" value="<?=isset($data['input'])?$data['input']['email']:"";?>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-3">
									<button id="submit_valid_email" class="btn btn-primary">Validasi</button>
								</div>
								<div class="col-md-9">
									<input type="text" name="validasi_email" placeholder="Kode Validasi Email" class='form-control input-block-level'>
								</div>
								<small class="help-block" id="small-valid-email" style="display:none;padding-left: 20px;" data-bv-validator="notEmpty" data-bv-for="validasi_email" data-bv-result="INVALID" style=""></small>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<!-- <label for="ig_username">Instagram</label> -->
									<input type="text" name="input[ig_username]" id="ig_username" class="form-control" placeholder="Akun Instagram" value="<?=isset($data['input'])?$data['input']['ig_username']:"";?>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<!-- <label for="kota">Kota</label> -->
				                    <select class="form-control select2" name="input[kota]" id="kota" required>
				                        <option value="" selected disabled>---  Pilih Kota ---</option>
				                        <?php foreach($data['kota'] as $keykota => $valkota){ ?>
				                            <option value="<?=$valkota->id_kab;?>" <?=(isset($data['input'])&&$data['input']['kota']==$valkota->id_kab)?"selected":"";?>> <?=$valkota->nama.', '.$valkota->nama_provinsi;?></option>
				                        <?php } ?>
				                    </select>
									<!-- <input type="text" name="input[kota]" id="kota" class="form-control" placeholder="Kota"> -->
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<!-- <label for="jenis_kendaraan">Jenis Kendaraan</label> -->
									<input type="text" name="input[jenis_kendaraan]" id="jenis_kendaraan" class="form-control" placeholder="Jenis Kendaraan ex:Honda Vario" value="<?=isset($data['input'])?$data['input']['jenis_kendaraan']:"";?>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<!-- <label for="barcode">Jenis Kendaraan</label> -->
									<input type="text" name="input[barcode]" id="barcode" class="form-control" placeholder="Barcode ex:Bxxxxxxx" value="<?=isset($data['input'])?$data['input']['barcode']:"";?>">
								</div>
							</div>
                            contoh barcode :
                            <div style="width:50%;height: 100%;background-image: linear-gradient(358deg, #1d1c1cc9, transparent);">
                                <img class="img-responsive" src="<?=base_url('assets/orange'); ?>/images/barcode.jpg" alt="Barcode">
                            </div>
							<div class="row form-group">
								<div class="col-md-12">
									<label for="foto_barcode">Foto Barcode</label>
									<input type="file" name="foto_barcode" id="foto_barcode" class="form-control" placeholder="Foto Barcode" accept="image/*">
									Foto Maximal : 5 MB dan format file : .jpg, .png, .jpeg
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<label for="foto_struck">Foto Struk Pembelian</label>
									<input type="file" name="foto_struck" id="foto_struck" class="form-control" placeholder="Foto Struk" accept="image/*">
									Foto Maximal : 5 MB dan format file : .jpg, .png, .jpeg
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<label for="jenis_kendaraan"></label>
									<img src="<?php echo site_url();?>landing/captcha" id="captcha" onClick="change_captcha();"/>
									<input type="text" name="security_code" placeholder="Captcha" class='form-control input-block-level'>
								</div>
							</div>
							<script type="text/javascript">
								var base_url='<?=base_url();?>';
								function change_captcha(){
									document.getElementById('captcha').src=base_url + "landing/captcha?rnd=" + Math.random();
								}
							</script>

							<!-- <div class="row form-group">
								<div class="col-md-12">
									<label for="message">Message</label>
									<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
								</div>
							</div> -->
							<div class="form-group">
								<input type="submit" name="submit" value="Dapatkan Undian" class="btn btn-primary">
							</div>
							Note:<br>
                            •	1 Barcode hanya bisa didaftarkan 1x <br>
                            •	Pemenang yang telah ditetapkan tidak bisa diganggu gugat <br>
                            •	Pemenang Grand Prize wajib menunjukkan bukti pembelian asli <br>
                            lupa nomor undian? <a href="<?=site_url().'landing/undian';?>">Lihat Nomor Undian</a><br>
                            
						</form>		
					</div>
				</div>
			<?php else: ?>
				<div class="row">
					<div class="col-md-12 animate-box" style="text-align: center;">
						<h5  style="font-family:system-ui;font-size:35px;line-height:2;"> Mohon maaf, Undian sudah selesai. <br> Terima kasih atas partisipasi anda yang telah mengikuti event ini. <br> Sampai bertemu pada event tahun berikutnya ya... <br> salam hangat dari kami, Maxxis Indonesia </h5>
					</div>
				</div>
			<?php endif;?>
			
		</div>
	</div>
	<script src="<?=base_url('assets/adminlte');?>/plugins/select2/select2.full.min.js"></script>
	<script src="<?=base_url('assets/adminlte');?>/plugins/select2/select2.min.css"></script>
<script type="text/javascript">
$('.select2').select2({width: '100%'}).on('change', function() {
    $(this).bootstrapValidator();
}); //,width: 'auto'
function hanyaAngka(event) {
    var angka = (event.which) ? event.which : event.keyCode
    if (angka != 46 && angka > 31 && (angka < 48 || angka > 57))
        return false;
    return true;
}
$("#submit_valid_email").click(function(){
	var nama = $("#nama").val();
	if(nama==''){
		Swal.fire("Gagal Kirim Email!", "Harap Masukkan Nama Anda", "error");
	      	$("#small-valid-email").show();
	      	$("#small-valid-email").html("Harap Masukkan Nama Anda");
	}else{
		let timerInterval
		var data
		Swal.fire({
		  title: 'Auto close alert!',
		  html: 'Mohon Tunggu <b></b>.',
		  timer: 5000,
		  timerProgressBar: true,
		  didOpen: () => {
		    Swal.showLoading()
			$.ajax({
		      type: "POST",
		      url: "<?=site_url();?>landing/validasi_email",
		      data: {email:$('#email').val(),nama: $('#nama').val()} ,
		      dataType: 'json',
		      success: function(data) {
		      	$("#small-valid-email").show();
		      	$("#small-valid-email").html(data.message);
		      	console.log(data.valid);
		      	if(data.valid){
		      		clearInterval(timerInterval)
		      		Swal.fire("Berhasil Kirim Email!", data.message, "success");
		      	}else{
		      		clearInterval(timerInterval)
		      		Swal.fire("Gagal Kirim Email!", data.message, "error");
		      	}
		      }
		    });
		    timerInterval = setInterval(() => {
		      const content = Swal.getContent()
		      if (content) {
		        const b = content.querySelector('b')
		        if (b) {
		          b.textContent = Swal.getTimerLeft()
		        }
		      }
		    }, 200)
		  },
		  willClose: () => {
		    clearInterval(timerInterval)
		  }
		}).then((result) => {
		  /* Read more about handling dismissals below */
		  if (result.dismiss === Swal.DismissReason.timer) {
		  	Swal.fire("Time Out Kirim Email!","Tetap Cek email anda bila ada email masuk", "error");
		  }
		})
	}
});
$(document).ready(function() {
	$(".undian").show();
	$("#form_undian").bootstrapValidator({
        live: 'disabled',//'enabled',
        message: 'This value is not valid',
        // feedbackIcons: {
        //     valid: 'glyphicon glyphicon-ok',
        //     invalid: 'glyphicon glyphicon-remove',
        //     validating: 'glyphicon glyphicon-refresh'
        // },
        fields: {
            'input[nama]': {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Nama Anda'
                    }
                }
            },
            'input[telp]': {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Nomor Telpon Anda'
                    }
                }
            },
            'input[email]': {
                validators: {
                    emailAddress: {
                        message: 'Masukkan Email Anda'
                    }
                }
            },
            'input[barcode]': {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Nomor Barcode yang ada pada ban yang anda beli'
                    },
                    stringLength: {
                        min: 11,
                        max: 11,
                        message: 'Minimal barcode 10 angka, dan 1 huruf B di depannya, Contoh: B1234567890'
                    }
                    /*,
	                remote: {
	                    message: 'Nomor barcode sudah terdaftar',
	                    url: "<?=site_url();?>landing/cek_barcode"
	                }*/
                }
            },
            validasi_email:{
                validators: {
                    notEmpty: {
                        message: 'Masukkan Kode validasi email'
                    }
                }
            },
            foto_barcode: {
                validators: {
                    notEmpty: {
                        message: 'Harus Upload Foto Barcode yang ada pada ban yan anda beli'
                    },
                    file: {
                        extension: 'jpeg,png,jpg',
                        //type: 'image/*',
                        maxSize: 8192 * 1024,
                        message: 'Format file harus .jpg/.jpeg/.png dan maximal 5 MB'
                    }
                }
            },
            foto_struck: {
                validators: {
                    notEmpty: {
                        message: 'Harus Upload Foto Struk Pembelian Ban'
                    },
                    file: {
                        extension: 'jpeg,png,jpg',
                        //type: 'image/*',
                        maxSize: 8192 * 1024,
                        message: 'Format file harus .jpg/.jpeg/.png dan maximal 5 MB'
                    }
                }
            },
            security_code: {
                validators: {
                    notEmpty: {
                        message: 'Masukkan kode captcha yang ada pada gambar'
                    }
                }
            },
        }
    });
});
</script>

