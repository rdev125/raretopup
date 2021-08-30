<link href="<?=base_url('assets/other_source/css')?>/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<?=base_url('assets/other_source/js')?>/jquery.fireworks.js"></script>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Undian</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Undian</li>
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
                <h3 class="card-title">Lucky Draw</h3>
              </div>
                <div class="card-body" style="background-image: url(<?=base_url('assets/other_source/image')?>/Undian.jpg);background-size: cover;min-height: calc(100vh/1.4);">
					<div class="row">
				        <div class="col">
			                <div class="form-group">
			                    <label for="id_event">Event</label>
			                    <select class="form-control select2bs4" name="input[id_event]" id="id_event">
			                        <option value="" selected disabled>---  Pilih Event ---</option>
			                        <?php foreach($event as $keyevent => $valevent){ ?>
			                            <option value="<?=$valevent->id;?>"  <?=(isset($data)&&$data->id_event==$valevent->id)?"selected":"";?>> <?=$valevent->nama_event;?></option>
			                        <?php } ?>
			                    </select>
			                </div>
				        </div>
				        <div class="col">
			                <div class="form-group">
			                    <label for="id_hadiah">Hadiah</label>
			                    <div id="hadiah">
				                    <select class="form-control select2bs4" name="input[id_hadiah]" id="id_hadiah">
				                        <option value="" selected disabled>---  Pilih Event Terlebih Dahulu ---</option>
				                    </select>
			                    </div>
			                </div>
				        </div>
				    </div>
					<div class="row">
						<div class="col-md-12 text-center">
							<img id="img_hadiah" src="" height="512"><br>
							<input type="hidden" name="jml_hadiah" id="jml_hadiah">
							<input type="hidden" name="jml_claim" id="jml_claim">
						</div>
				    </div>
					<style type="text/css">
						.modal{ 
							margin-top:167px															; 
						}

						.modal-body strong{ 
							font-size:60px;
							font-family:gunplay;
						}

						.modal-body p{ 
							text-align:center; 
						}

						.modal-dialog{ 
							max-width:750px;
							width:99%; 
						}
						.maincontent{
							margin-top:1em;
							text-align:center;
						}
						.maincontent #output{
							font-size:4em;
							font-family:roundcor;	
						}
						span.select2-selection.select2-selection--single {
                            background-color: #04040466;
                        }
                        .select2-container--bootstrap4 .select2-selection--single .select2-selection__rendered{
                            color:white;
                        }
                        
                        #output{
                            text-shadow: rgb(255 255 255) 0px 0px 10px, rgb(255 255 255) 0px 0px 20px, rgb(255 255 255) 0px 0px 30px, rgb(255 255 255) 0px 0px 40px, rgb(255 255 255) 0px 0px 50px, rgb(255 255 255) 0px 0px 60px, rgb(255 255 255) 0px 0px 70px;
                            margin-top:0;
                            transition: all .1s ease-in;
                        }
                        #output.gotoup{
                            margin-top:-100px;
                        }
                        #output.startfrom{
                            margin-top:100px;
                        }
                        #DataPemenang,label{
                            font-size:21px;
                            color: white;
                        }
                        #DataPemenang {
                            background-color: #04040466;
                            color: white;
                        }
                        #DataPemenang tbody tr:nth-child(even){
                            background-color: #dedede9e;
                            color: black;
                        }
                        #img_hadiah{
                            border-radius: 39px;
                        }
                        span.select2.select2-container.select2-container--bootstrap4{
                            width:100%!important;
                        }
                        .card-body{
                            position:relative;
                        }
                        .card-body>*:not(#myModal){
                            position:relative;
                            z-index:1;
                        }
                        .card-body:after{
                            content:'';
                            height:100%;
                            width:100%;
                            position:absolute;
                            background-image: linear-gradient(358deg, #5f5f5f, transparent);
                            bottom:0;
                            left:0;
                            z-index:0;
                            
                        }
                        #myModal{
                            position:absolute;
                            z-index:10000;
                        }
                        h3{
                            color: white;
                            text-shadow: 1px 1px #232323b5;
                        }
                        .card-primary:not(.card-outline)>.card-header{
                            background-color: #380c02;
                        }
					</style>
					<div class="maincontent">
					    <div class="row">
					        <div class="col-md-12">
								<div style="overflow-y:hidden;height: 99px;"><h1 id="output">START LUCKY DRAW</h1></div>
								<div id="alert"></div>
					        	<input type="hidden" class="form-control" id="status" name="status_roll" value="roll">
					        	<input type="hidden" class="form-control" id="id_pemenang" name="id_pemenang" value="">
					          	<button type="button" class="btn btn-success btn-lg" id="roll_button">START ROLLING</button>
				            	<!--<button type="submit" class="btn btn-info btn-lg" id="claim_button" disabled>CLAIM!</button>-->
					        </div>
					    </div>
						<script>
							var numvar = 0; //make sure you have this variable empty to prevent empty modal showing
							var interval = 100;
							var count = 0;
							$("#roll_button").click(function() {
								if($('#id_event').val() != null && $('#id_event').val() != null){
									if($('#jml_hadiah').val() != $('#jml_claim').val()){
										var status_roll = $("#status").val();
										if(participant_array.length > 0){
											if(status_roll == 'roll' && numvar == 0){
												$("#roll_button").html("STOP!");
												$("#status").val('stop');
												$("#roll_button").removeClass("btn-success");
												$("#roll_button").addClass("btn-danger");
												$("#claim_button").attr("disabled",true);
											    var message_count =0;
											    ctr = 0;
											    animationTimer = setInterval(function() {
											        $total = participant_array.length;
											        count = Math.floor(Math.random() * $total);
											        var result=participant_array[count].split('|');
											     //   $("#output").fadeOut(100, function() {
											     //     $(this)
											     //     .text(result[0])
											     //     .fadeIn(100);
											     //   });
											        ctr++;
											        $("#output").text(result[0]);
											     //   if(ctr%2 ===0){ 
											     //       $("#output").addClass("gotoup");
											     //       $("#output").removeClass("startfrom");
											     //   }else{
											     //       $("#output").removeClass("gotoup");
											     //       $("#output").addClass("startfrom");
											     //   }
											        
											     //   clearInterval(animationTimer2);
											        
											    }, interval); 
												numvar = numvar + 1;
											}
											if(status_roll == 'stop') {
												kembang_api();
												$("#roll_button").html("CLAIM!");//("START ROLLING");
												$("#status").val('claim');
												$("#roll_button").removeClass("btn-danger");
												$("#roll_button").addClass("btn-info");//("btn-success");
												$("#claim_button").attr("disabled",false);
												numvar = 0;//numvar is put back to zero
												clearInterval(animationTimer);//stops raffle
											    var result=participant_array[count].split('|');
												$("#id_pemenang").val(result[2]);
												$('#queryresult1').html(result[0]);
												$('#queryresult').html(result[1]);
												$('#queryresult2').html(result[3]+',<br>'+result[4]);
												participant_array.splice(count, 1);
												$("#myModal").modal('toggle');//show modalwith winner's name
												$("#output").removeClass("gotoup");
											    $("#output").removeClass("startfrom");
												window.onclick = function(event) {
													if (event.target.id == "canvas") {
														$("#myModal").modal('toggle');
													}
												}
											}

											if(status_roll == 'claim') {
											    var id_pemenang = $("#id_pemenang").val();
											    var id_event = $("#id_event").val();
											    var id_hadiah = $("#id_hadiah").val();
												$.ajax({
													url:"<?=site_url('undian/set_pemenang');?>",
													data:'input[id_pemenang]='+id_pemenang+'&input[id_event]='+id_event+'&input[id_hadiah]='+id_hadiah,
													success:function(data){
														var hasil = JSON.parse(data);
														if(hasil){
															$('#jml_claim').val(hasil.jml_claim);
															Swal.fire('Berhasil Claim Hadiah', '', 'success');
														}
														$("#DataPemenang tbody").remove(); 
														$('#DataPemenang').append('<tbody></tbody>'); 
														$.each(hasil.data_claim, function (index, obj) { 
															var no = index+1;
									                        var row = '<tr><td> ' + no + ' </td> <td> ' + obj.nama_hadiah + ' </td> <td>' + obj.no_undian + '</td> <td>' + obj.nama_pemenang + '</td> <td>' + obj.nama_kabupaten +','+ obj.nama_provinsi + '</td> <td>' + obj.telp + '</td> <td>' + obj.ig_username + '</td> </tr>'
									                        $("#DataPemenang tbody").append(row);
									                    }); 
													}
												});
												$("#roll_button").html("START ROLLING");
												$("#status").val('roll');
												$("#roll_button").removeClass("btn-info");
												$("#roll_button").addClass("btn-success");
											}
										}else{
											if(status_roll == 'claim') {
											    var id_pemenang = $("#id_pemenang").val();
											    var id_event = $("#id_event").val();
											    var id_hadiah = $("#id_hadiah").val();
												$.ajax({
													url:"<?=site_url('undian/set_pemenang');?>",
													data:'input[id_pemenang]='+id_pemenang+'&input[id_event]='+id_event+'&input[id_hadiah]='+id_hadiah,
													success:function(data){
														var hasil = JSON.parse(data);
														if(hasil.jml_claim != '0'){
															$('#jml_claim').val(hasil.jml_claim);
															$("#DataPemenang tbody").remove(); 
															$('#DataPemenang').append('<tbody></tbody>'); 
															$.each(hasil.data_claim, function (index, obj) { 
																var no = index+1;
										                        var row = '<tr><td> ' + no + ' </td> <td> ' + obj.nama_hadiah + ' </td> <td>' + obj.no_undian + '</td> <td>' + obj.nama_pemenang + '</td> <td>' + obj.nama_kabupaten +','+ obj.nama_provinsi + '</td> <td>' + obj.telp + '</td> <td>' + obj.ig_username + '</td> </tr>'
										                        $("#DataPemenang tbody").append(row);
										                    }); 
															Swal.fire('Berhasil Claim Hadiah', '', 'success');
														}else{
															Swal.fire('Peserta Sudah Claim Hadiah', '', 'error');
														}
													}
												});
												$("#roll_button").html("START ROLLING");
												$("#status").val('roll');
												$("#roll_button").removeClass("btn-info");
												$("#roll_button").addClass("btn-success");
											}
											Swal.fire('Peserta Sudah Habis', '', 'error');
										}
									}else{
										Swal.fire('Hadiah Sudah Habis', '', 'error');
									}
								}else{
									Swal.fire('Harap pilih Hadiah Terlebih Dahulu', '', 'error');
								}
							});
							$("#claim_button").click (function () {
							    var id_pemenang = $("#id_pemenang").val();
							    var id_event = $("#id_event").val();
							    var id_hadiah = $("#id_hadiah").val();
								$.ajax({
									url:"<?=site_url('undian/set_pemenang');?>",
									data:'input[id_pemenang]='+id_pemenang+'&input[id_event]='+id_event+'&input[id_hadiah]='+id_hadiah,
									success:function(data){
										var hasil = JSON.parse(data);
										if(hasil.jml_claim != '0'){
											$('#jml_claim').val(hasil.jml_claim);
											$("#DataPemenang tbody").remove(); 
											$('#DataPemenang').append('<tbody></tbody>'); 
											$.each(hasil.data_claim, function (index, obj) { 
												var no = index+1;
						                        var row = '<tr><td> ' + no + ' </td> <td> ' + obj.nama_hadiah + ' </td> <td>' + obj.no_undian + '</td> <td>' + obj.nama_pemenang + '</td> <td>' + obj.nama_kabupaten +','+ obj.nama_provinsi + '</td> <td>' + obj.telp + '</td> <td>' + obj.ig_username + '</td> </tr>'
						                        $("#DataPemenang tbody").append(row);
						                    }); 
											Swal.fire('Berhasil Claim Hadiah', '', 'success');
										}else{
											Swal.fire('Peserta Sudah Claim Hadiah', '', 'error');
										}
									}
								});
							});
						</script>
					</div>
					<br>
					<br>
					<div>
						<h3 align="center">Data Pemenang</h3>
						<table class="table content" id="DataPemenang" >
							<thead style="background-color:#0000007a;">
								<tr>
									<th>No</th>
									<th>Hadiah</th>
									<th>No Undian</th>
									<th>Nama</th>
									<th>Kota</th>
									<th>Telp</th>
									<th>ID Instagram</th>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
						</table>
					</div>
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-body">
									<p>Selamat Kepada <br><strong id="queryresult1"></strong><br><strong id="queryresult"></strong><br><strong id="queryresult2">dari</strong></p>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						participant_array = new Array();
						<?php foreach($participant as $row) {
						    echo 'participant_array.push("'. $row['no_undian']. '|' . $row['nama']. '|' .$row['id'] . '|' .$row['nama_kabupaten'] . '|' .$row['nama_provinsi'] . '");';
						};
						?>
						$('.select2bs4').select2({
						  theme: 'bootstrap4'
						});
						$('#id_event').on('change', function() {
							$.ajax({
								url:"<?=site_url('undian/get_hadiah');?>",
								data:'id='+this.value,
								success:function(data,xhr){
									var hasil = JSON.parse(data);
									if(hasil){
										$('#hadiah').html(hasil.hadiah);
										$('.select2bs4').select2({
										  theme: 'bootstrap4'
										});
										$('#id_hadiah').on('change', function() {
											$.ajax({
												url:"<?=site_url('undian/get_image');?>",
												data:'id='+this.value,
												success:function(data){
													var hasil = JSON.parse(data);
													if(hasil){
														$('#img_hadiah').attr("src",hasil.img_hadiah);
														$('#jml_hadiah').val(hasil.jml_hadiah);
														$('#jml_claim').val(hasil.jml_claim);
													}
													$("#DataPemenang tbody").remove(); 
													$('#DataPemenang').append('<tbody></tbody>'); 
													$.each(hasil.data_claim, function (index, obj) { 
														var no = index+1;
								                        var row = '<tr><td> ' + no + ' </td> <td> ' + obj.nama_hadiah + ' </td> <td>' + obj.no_undian + '</td> <td>' + obj.nama_pemenang + '</td> <td>' + obj.nama_kabupaten +','+ obj.nama_provinsi + '</td> <td>' + obj.telp + '</td> <td>' + obj.ig_username + '</td> </tr>'
								                        $("#DataPemenang tbody").append(row);
								                    }); 
												}
											});
										});
									}
								}
							});
						});
					</script>
				</div>
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
<script type="text/javascript">
function kembang_api(){
    setTimeout(function() {
        $('#myModal').fireworks();
    });
};
</script>