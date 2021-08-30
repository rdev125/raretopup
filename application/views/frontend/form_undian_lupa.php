	<link rel="stylesheet" href="<?=base_url('assets/adminlte');?>/plugins/select2/select2.min.css">
	<div id="fh5co-contact">
		<div class="container">
			<?php if($data['event']->tgl_akhir > date('Y-m-d H:i:s')): ?>
				<div class="row undian">
					<div class="col-md-5 col-md-push-1 animate-box">
						
						<div class="fh5co-contact-info">
							<h3>Contact Information</h3>
							<ul>
								<li class="address">Greenland International Industrial Center <br>(GIIC) Blok CG No.1, Kelurahan, Pasirranji, <br>Kec. Cikarang Pusat, Bekasi, <br>Jawa Barat 17530</li>
								<li class="phone"><a href="tel://02180677800">(021) 806 77 800 </a></li>
								<li class="email"><a href="mailto:ptmmaxxis@gmail.com">ptmmaxxis@gmail.com</a></li>
								<li class="url"><a href="https://maxxis.id">Maxxis.id</a></li>
							</ul>
						</div>

					</div>
					<div class="col-md-6 animate-box">
						<h3>Lihat Nomor Undian</h3>
						<?php if(isset($message)):?><h4 style="color:red;" align="center"><?=$message;?></h4><?php endif; ?>
						<form action="" enctype="multipart/form-data" method="post" id="form_undian">
							<div class="row form-group">
								<div class="col-md-12">
									<input type="text" name="input[barcode]" id="barcode" class="form-control" placeholder="Barcode">
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
							<div class="form-group">
								<input type="submit" name="submit" value="Dapatkan Undian" class="btn btn-primary">
							</div>

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
            'input[barcode]': {
                validators: {
                    notEmpty: {
                        message: 'Masukkan Nomor Barcode yang ada pada ban yang anda beli'
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

