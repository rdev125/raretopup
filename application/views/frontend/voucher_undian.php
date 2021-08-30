<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<div id="fh5co-blog"> <!--  class="fh5co-bg-section" -->
	<div class="container">
		<div class="row">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Undian</h2>
					<p>Berikut ini Voucher Undian anda</p>
				</div>
			</div>
			<div class="col-lg-12 col-md-12">
			    <?php if(isset($data['result'])): ?>
				    <img src="<?php echo site_url();?>landing/imgtext/<?=$data['result']->no_undian;?>" alt="Snow" style="width:100%;">
				<?php elseif(isset($message)): ?>
				    <h4 style="color:red;" align="center"><?=$message;?></h4>
				<?php else : ?>
				    <h4 style="color:red;" align="center">Data Tidak Ditemukan</h4>
				<?php endif;?>
    			Note: <br>
    			Harap simpan Nomor undian ini sebagai tanda bukti partisipasi anda.<br>
    			<?php if(isset($data['result'])): ?>
        			<button id="kirim_email" class="btn btn-primary">Kirim Email</button>
        			<script>
                        $("#kirim_email").click(function(){
                    		let timerInterval
                    		var data
                    		Swal.fire({
                    		  title: 'Mohon Tunggu!',
                    		  html: '<b></b>.',
                    		  timer: 5000,
                    		  timerProgressBar: true,
                    		  didOpen: () => {
                    		    Swal.showLoading()
                    			$.ajax({
                    		      type: "POST",
                    		      url: "<?=site_url();?>landing/kirim_email/<?=$data['result']->no_undian;?>",
                    		      data: {} ,
                    		      dataType: 'json',
                    		      success: function(data) {
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
                        });
        			</script>
        		<?php endif;?>
			</div>
		</div>
	</div>
</div>