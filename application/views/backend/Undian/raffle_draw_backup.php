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
                <div class="card-body">
					<div class="row">
				        <div class="col-md-6">
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
				        <div class="col-md-6">
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
							<img id="img_hadiah" src="" width="512"><br>
							<input type="hidden" name="jml_hadiah" id="jml_hadiah">
							<input type="hidden" name="jml_claim" id="jml_claim">
						</div>
				    </div>
					<style type="text/css">
						.modal{ 
							margin-top:300px; 
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
					</style>
					<div class="maincontent">
					    <div class="row">
					        <div class="col-md-12">
								<div id="output">START LUCKY DRAW</div>
								<div id="alert"></div>
					        	<input type="hidden" class="form-control" id="status" name="status_roll" value="roll">
					        	<input type="hidden" class="form-control" id="id_pemenang" name="id_pemenang" value="">
					          	<button type="button" class="btn btn-success btn-lg" id="roll_button">START ROLLING</button>
				            	<button type="submit" class="btn btn-info btn-lg" id="claim_button" disabled>CLAIM!</button>
					        </div>
					    </div>
						<script>
							var numvar = 0, //variable to prevent a key from pressing multiple times
								datafromform = ''; //make sure you have this variable empty to prevent empty modal showing
							// var refresh_interval;
							var interval = 100;
							var status = false;
							var count = 0;
							// $('body').keydown(function(e){
							$("#roll_button").click(function() {
								if($('#jml_hadiah').val() != $('#jml_claim').val()){
									if($('#id_event').val() != null && $('#id_event').val() != null){
										if(participant_array.length > 0){
											var status_roll = $("#status").val();
										//starts generating number if letter 'S' key is pressed
											if(status_roll == 'roll' && numvar == 0){
												$("#roll_button").html("STOP!");
												$("#status").val('stop');
												$("#roll_button").removeClass("btn-success");
												$("#roll_button").addClass("btn-danger");
												$("#claim_button").attr("disabled",true);
												console.log(participant_array);
											    var message_count =0;
												if(datafromform != ''){
													// $('#myModal').modal('toggle'); //closes modal if datafromform if is not empty
												}
											    // if (!status) {
											    	console.log(count);
											      // var status_message_array = new Array('Rolling.','Rolling..','Rolling...','Rolling');
											      animationTimer = setInterval(function() {
											        $total = participant_array.length;
											        count = Math.floor(Math.random() * $total);
											        // if(count == $total-1) count = 0;
											        // count++;
											        // message_count = (message_count>=3)? 0 : ++message_count;

											        // if (!status) {
											          // $("#status_message").fadeOut(100, function() {
											          //   console.log(status_message_array[message_count]);
											          //   $(this)
											          //   .text(status_message_array[message_count])
											          //   .fadeIn(100);
											          // });
											        // }
											        var result=participant_array[count].split('|');
											        // console.log(result);

											        $("#output").fadeOut(100, function() {
											          $(this)
											          .text(result[0])
											          .fadeIn(100);
											        });
											        // $("#part_id").attr("value",result[1]);
											        // $("#part_id_hid").attr("value",result[1]);
											        
											      }, interval);  
											    //   status = true;
											    // }


												//random number animator here
												// animationTimer = setInterval(function() {
												// 	var randnum = Math.floor(Math.random() * 36),//generate random number
												// 		strnum = ""+randnum+""; //convert number to string
												// 	if(strnum.length == 2){//compare if length of generated number is equal to 2
												// 		$('#output').text('MGR-2021'+randnum);
												// 	}else{
												// 		$('#output').text('MGR-20210'+randnum);//add 0 if generated number is only 1 digit
												// 	}
												// }, 100);//milliseconds before generating new number again


												$('#instruction').text("Press 'X' to Stop Raffle");//set new instruction to the user
												
												numvar = numvar + 1;
											}
											
											
											//stops generating number if letter 'X' key is pressed
											if(status_roll == 'stop') {
												kembang_api();
												$("#roll_button").html("CLAIM!");//("START ROLLING");
												$("#status").val('claim');
												$("#roll_button").removeClass("btn-danger");
												$("#roll_button").addClass("btn-info");//("btn-success");
												$("#claim_button").attr("disabled",false);
												console.log(count);
												numvar = 0;//numvar is put back to zero
												clearInterval(animationTimer);//stops raffle
												//Ajax POST that sends the value of 'res' variable to send.php
												// $.ajax({
												//    type: "POST",
												//    url: 'send.php',
												//    data: 'res='+$('#output').text().trim(),
												//    success: function(data){
												// 	   //show query result from send.php back to #alert of this page
												// 	   $('#queryresult').html(data);
												//    }
												// });

											    // var stop_button = setTimeout(function() {
											      // console.log(status);
											      // if (status) {
											    // $("#claim_button").removeAttr('disabled');
											    //   // console.log(status);
											    //   //   clearInterval(refresh_interval);
											    //     status = false;
											    //   }
											    // }, 1000);
											    var result=participant_array[count].split('|');
												$("#id_pemenang").val(result[2]);
												$('#queryresult1').html(result[0]);
												$('#queryresult').html(result[1]);
												participant_array.splice(count, 1);
												$("#myModal").modal('toggle');//{backdrop: "static"} show modalwith winner's name
												$('#instruction').text("Press 'S' to Start Raffle");//set new instruction to the user
												datafromform = 'good';//datafromform has now a value
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
															alert('Berhasil Claim Data');
														}
														$("#DataPemenang tbody").remove(); 
														$('#DataPemenang').append('<tbody></tbody>'); 
														$.each(hasil.data_claim, function (index, obj) { 
															var no = index+1;
									                        var row = '<tr><td> ' + no + ' </td> <td> ' + obj.nama_hadiah + ' </td> <td>' + obj.no_undian + '</td> <td>' + obj.nama_pemenang + '</td> <td>' + obj.ig_username + '</td> </tr>'
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
											alert('Data Sudah Habis');
										}
									}else{
										alert('Harap pilih Hadiah Terlebih Dahulu');
									}
								}else{
									alert('Hadiah Sudah Habis');
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
										if(hasil){
											$('#jml_claim').val(hasil.jml_claim);
											alert('Berhasil Claim Data');
										}
										$("#DataPemenang tbody").remove(); 
										$('#DataPemenang').append('<tbody></tbody>'); 
										$.each(hasil.data_claim, function (index, obj) { 
											var no = index+1;
					                        var row = '<tr><td> ' + no + ' </td> <td> ' + obj.nama_hadiah + ' </td> <td>' + obj.no_undian + '</td> <td>' + obj.nama_pemenang + '</td> <td>' + obj.ig_username + '</td> </tr>'
					                        $("#DataPemenang tbody").append(row);
					                    }); 
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
							<thead>
								<tr>
									<td>No</td>
									<td>Hadiah</td>
									<td>No Undian</td>
									<td>Nama</td>
									<td>ID Instagram</td>
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
									<p>Selamat Kepada <br><strong id="queryresult1"></strong><br><strong id="queryresult"></strong></p>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						participant_array = new Array();
						<?php foreach($participant as $row) {
						    echo 'participant_array.push("'. $row['no_undian']. '|' . $row['nama']. '|' .$row['id'] . '");';
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
									console.log(xhr);
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
								                        var row = '<tr><td> ' + no + ' </td> <td> ' + obj.nama_hadiah + ' </td> <td>' + obj.no_undian + '</td> <td>' + obj.nama_pemenang + '</td> <td>' + obj.ig_username + '</td> </tr>'
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