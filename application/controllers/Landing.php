<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Landing extends CI_Controller {

	
	public function __construct()
	{
		parent::__construct();
		$this->load->model("X3/RamadhanActivity","model");
        $this->load->model("MobilePulsa/Pricelist","model_mp_pl");
        $this->load->model("MobilePulsa/GameFormat","model_mp_gameformat");
		$this->load->library('session');
		include_once "email/class.phpmailer.php";
	}

    public function pass_new(){
        $options = [
            'cost' => 10,
        ];
        echo password_hash("admin", PASSWORD_BCRYPT, $options);
    }

    public function mobilepulsa($commands='',$id='',$dev=true)
    {
        header('Content-Type: application/json');
        $arrjson = array();
        $arrjson['username'] = $username = "085710454016";
        $apiKey   = "533611f5b6d92f79";
        switch($commands){
            case 'bl':
                $signature  = md5($username.$apiKey.$commands);
                $arrjson['commands'] = 'balance';
                $arrjson['sign']     = $signature;
                break;
            case 'pl':
                $signature  = md5($username.$apiKey.$commands);
                $arrjson['commands'] = 'pricelist';
                $arrjson['sign']     = $signature;
                $arrjson['status']   = 'all'; //Active / Non Active
                break;
            //ini yg bahaya
            case 'topup':
                $ref_id  = '123';//uniqid('');//61304ad0df0a7/613054fc869e5
                $code = 'xld25000';// auto detect operator : pulsa10000, pulsa100000, pulsa1000000, pulsa150000, pulsa20000, pulsa200000, pulsa25000, pulsa30000, pulsa300000, pulsa5000, pulsa50000, pulsa500000
                $signature  = md5($username.$apiKey.$ref_id);
                $arrjson['commands'] = 'topup';
                $arrjson['sign']     = $signature;
                $arrjson['ref_id']   = $ref_id;
                $arrjson['hp']       = "081777721115";
                $arrjson['pulsa_code']   =  $code;
                break;
            //---ini
            case 'inquiry':
                $ref_id  = $id;//'61304ad0df0a7';//uniqid('');//613054fc869e5
                $signature  = md5($username.$apiKey.$ref_id);
                $arrjson['commands'] = 'inquiry';
                $arrjson['sign']     = $signature;
                $arrjson['ref_id']   = $ref_id;
                break;
            case 'game-format-id':
                $game_code  = $id;//table tr_mp_gcl contoh : 103 = Mobile Legends
                $signature  = md5($username.$apiKey.$game_code);
                $arrjson['commands'] = 'game-format-id';
                $arrjson['sign']     = $signature;
                $arrjson['game_code']   = $game_code;
                break;
            case 'check-game-id':
                $game_code  = $id;//table tr_mp_gcl contoh : 103 = Mobile Legends
                $signature  = md5($username.$apiKey.$game_code);
                $arrjson['commands'] = 'check-game-id';
                $arrjson['sign']     = $signature;
                $arrjson['game_code']   = $game_code;
                $arrjson['hp']       = "156378300|8483";//test
                break;
            case 'game-server-list':
                $game_code  = '142';//table tr_mp_gcl contoh : 103 = Mobile Legends
                $signature  = md5($username.$apiKey.$game_code);
                $arrjson['commands'] = 'game-server-list';
                $arrjson['sign']     = $signature;
                $arrjson['game_code']   = $game_code;
                break;
            case 'inquiry_pln':
                $hp  = '12345678901';//'61304ad0df0a7';//uniqid('');//613054fc869e5
                $signature  = md5($username.$apiKey.$hp);
                $arrjson['commands'] = 'inquiry_pln';
                $arrjson['sign']     = $signature;
                $arrjson['hp']   = $hp;
                break;
            default:
               die($commands.' not found');
               break;
        }
        $json = json_encode($arrjson);
        // print_r($json);

        $url = "https://testprepaid.mobilepulsa.net/v1/legacy/index";

        $ch  = curl_init();
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        $data = curl_exec($ch);
        curl_close($ch);
        if($dev){
            print_r($data);
        }else{
            return $data;
        }
    }

    public function savedb($commands='',$id='')
    {
        switch($commands){
            case 'pl':
                $save = json_decode($this->mobilepulsa($commands,null,false));
                foreach ($save->data as $keysave => $valuesave) {
                    $_REQUEST['input'] = $valuesave;
                    $get_data = $this->model_mp_pl->GetById($valuesave->pulsa_code);
                    if(isset($get_data)){
                        $_REQUEST['pulsa_code'] = $valuesave->pulsa_code;
                        $this->model_mp_pl->Update();
                    }else{
                        $this->model_mp_pl->Insert();
                    }
                    //select
                    //$this->model_mp_pl->Insert();
                }
                print_r('Berhasil');
                break;
            case 'game-format-id':
                $save = json_decode($this->mobilepulsa($commands,$id,false));
                $exsave = explode("|",$save->data->formatGameId);
                foreach ($exsave as $keyexsave => $valexsave) {
                    $_REQUEST['input']['format_code'] = $valexsave;
                    $get_data = $this->model_mp_gameformat->GetById(array($id,$valexsave),'Arr');
                    print_r($get_data);die('sini');
                    if(isset($get_data)){
                        $_REQUEST['format_code'] = $valexsave;
                        $this->model_mp_gameformat->Update();
                    }else{
                        $this->model_mp_gameformat->Insert();
                    }
                    //select
                    //$this->model_mp_pl->Insert();
                }
                break;
            default:
               die($commands.' not found');
               break;
        }
    }

	public function index($event=null)
	{
	    if(isset($event)){
    	    switch($event){
    	       case 'tetapbagustanpabungkus':
    	            die($event.' belum jadi, masih development.');
    	            break;
    	       default:
    	           die($event.' not found');
    	           break;
    	    }
	    }else{
    	   // ini_set('post_max_size', '64M');
            ini_set('upload_max_filesize', '64M');
            if(isset($_REQUEST["submit"])):
            	$event = $this->db->where('id','1')->get('event')->row();
            	if($event->tgl_mulai < date('Y-m-d H:i:s') && $event->tgl_akhir > date('Y-m-d H:i:s')):
    		        $date = date('Ymd');
            		$result = $this->db->where('email',$_REQUEST['input']['email'])->get('x3_ramadan_activity')->result();
            		if(count($result) <= 2):
        		    	$valid_email = $_REQUEST['validasi_email'];
        		    	if(isset($_SESSION['validemail']) && strtolower($valid_email) == strtolower($_SESSION['validemail'])):
            	        	$code = $_REQUEST['security_code'];
            	        	if(strtolower($code) == strtolower($_SESSION['codex'])):
            	        	    //cek barcode
            	        	    $barcode = $this->db->where('barcode',$_REQUEST['input']['barcode'])->get('x3_ramadan_activity')->result();
            	        	    if(count($barcode)>0):
            						$_REQUEST['input']['barcode']="";
            						$data['input'] = $_REQUEST['input'];
            						$message = "Error: Barcode sudah terdaftar";
            					else:
                					if (!is_dir('assets/uploads/'.$date)) mkdir('./assets/uploads/'.$date, 0777, TRUE);
                		            $config['upload_path']          = './assets/uploads/'.$date;
                		            $config['allowed_types']        = 'gif|jpg|png|jpeg';
                		            $config['max_size']             = 8192;
                		            $config['encrypt_name']     	= true;
                		            
                		            $allowed = array('image/jpeg','image/jpg','image/gif','image/png');
                		            if(in_array($_FILES["foto_barcode"]['type'],$allowed) && in_array($_FILES["foto_struck"]['type'],$allowed)) :
                			            $new_name = date('Ymd').'_'.$_FILES["foto_barcode"]['name'];
                						$config['file_name'] = $new_name;
                			            $this->load->library('upload', $config);
                			            if (!$this->upload->do_upload('foto_barcode')):
                			                $data['foto_barcode']['message'] = array('error' => $this->upload->display_errors());
                			            else:
                			                $data['foto_barcode'] = array('upload_data' => $this->upload->data());
                			            endif;
                
                			            $new_name = date('Ymd').'_'.$_FILES["foto_struck"]['name'];
                						$config['file_name'] = $new_name;
                			            $this->load->library('upload', $config);
                			            if (!$this->upload->do_upload('foto_struck')):
                			                $data['foto_struck']['message'] = array('error' => $this->upload->display_errors());
                			            else:
                			                $data['foto_struck'] = array('upload_data' => $this->upload->data());
                			            endif;
                			        else:
                			        	// upload image type not allowed
                						$data['input'] = $_REQUEST['input'];
                						$message = "Error: Gambar tidak di dukung";
                			        endif;
                
                		        	$query = $this->db->like('no_undian','GRM-'.$date,'after')->order_by('no_undian','DESC')->get('x3_ramadan_activity')->row();
                		        	if(isset($query)):
                		        		$urutan = substr($query->no_undian,-3)+1;
                		        		if($urutan < 10):
                		        			$urutan = '00'.$urutan;
                		        		elseif($urutan < 100):
                		        			$urutan = '0'.$urutan;
                		        		else:
                		        			$urutan;
                		        		endif;
                		    		else:
                		    			$urutan = '001';
                		    		endif;
                		        	$_REQUEST['input']['no_undian'] = 'GRM-'.$date.$urutan;
                		        	$_REQUEST['input']['path_barcode'] = '/assets/uploads/'.$date;
                		        	$_REQUEST['input']['path_struck'] = '/assets/uploads/'.$date;
                		        	$_REQUEST['input']['foto_barcode'] = $data['foto_barcode']['upload_data']['file_name'];
                		        	$_REQUEST['input']['foto_struck'] = $data['foto_struck']['upload_data']['file_name'];
                		        	$this->model->Insert();
                		        	$result = $this->db->where('no_undian','GRM-'.$date.$urutan,'before')->get('x3_ramadan_activity')->row();
                			        $this->send_email($result);
                		        	redirect(site_url().'landing/undian/'.$date.$urutan);
                		        endif;
            		        else:
            		        	// salah cptcha
            		        	$message = "Error: Kode captcha salah";
            		        	$data['input'] = $_REQUEST['input'];
            		        endif;
        			    else:
        			    	$message = "Error: Validasi email salah";
        			    	$data['input'] = $input = $_REQUEST['input'];
        			    endif;
    			    else:
    			    	$message = "Error: Email anda sudah terdaftar, anda hanya bisa memasukkan 1 email untuk 2 barcode, harap menggunakan email yang lain";
    			    	$data['input'] = $input = $_REQUEST['input'];
    			    endif;
    
    		    else:
    		    	//event belum mulai, atau sudah berakhir
    		    	redirect(site_url());
    		    endif;
            endif;
            $data['event'] = $this->db->where('id','1')->get('event')->row();
            $data['kota'] = $this->db->select('a.id_kab,a.nama, b.nama as nama_provinsi')
    						->from('kota as a')
    						->join('provinsi as b', 'b.id_prov = a.id_prov')
    						->order_by('b.nama','ASC')
    	 					->get()->result();
    		$this->load->view('index',["data"=>$data,"content"=>"frontend/content/home/home"]);
	    }
	}

    public function Callback()
    {
        $data = file_get_contents('php://input');
        $my_file = 'file.txt';
        $handle = fopen($my_file, 'w') or die('Cannot open file:  '.$my_file);
        fwrite($handle, $data);
        fclose($handle);
    }
	
	public function ramadhansale()
	{
		session_destroy(); 
		$message = "";
		$data = array();
        if(isset($_REQUEST["submit"])):
        	$event = $this->db->where('id','1')->get('event')->row();
        	if($event->tgl_mulai < date('Y-m-d H:i:s') && $event->tgl_akhir > date('Y-m-d H:i:s')):
		        $date = date('Ymd');
		    	$valid_email = $_REQUEST['validasi_email'];
		    	if(strtolower($valid_email) == strtolower($_SESSION['validemail'])):
    	        	$code = $_REQUEST['security_code'];
    	        	if(strtolower($code) == strtolower($_SESSION['codex'])):
    					if (!is_dir('assets/uploads/'.$date)) mkdir('./assets/uploads/'.$date, 0777, TRUE);
    		            $config['upload_path']          = './assets/uploads/'.$date;
    		            $config['allowed_types']        = 'gif|jpg|png|jpeg';
    		            $config['max_size']             = 5120;
    		            $config['encrypt_name']     	= true;
    		            
    		            $allowed = array('image/jpeg','image/jpg','image/gif','image/png');
    		            if(in_array($_FILES["foto_barcode"]['type'],$allowed) && in_array($_FILES["foto_struck"]['type'],$allowed)) :
    			            $new_name = date('Ymd').'_'.$_FILES["foto_barcode"]['name'];
    						$config['file_name'] = $new_name;
    			            $this->load->library('upload', $config);
    			            if (!$this->upload->do_upload('foto_barcode')):
    			                $data['foto_barcode']['message'] = array('error' => $this->upload->display_errors());
    			            else:
    			                $data['foto_barcode'] = array('upload_data' => $this->upload->data());
    			            endif;
    
    			            $new_name = date('Ymd').'_'.$_FILES["foto_struck"]['name'];
    						$config['file_name'] = $new_name;
    			            $this->load->library('upload', $config);
    			            if (!$this->upload->do_upload('foto_struck')):
    			                $data['foto_struck']['message'] = array('error' => $this->upload->display_errors());
    			            else:
    			                $data['foto_struck'] = array('upload_data' => $this->upload->data());
    			            endif;
    			        else:
    			        	// upload image type not allowed
    			        	redirect($_SERVER['HTTP_REFERER']);
    						print_r($_FILES["foto_barcode"]['type']);print_r($_FILES["foto_struck"]['type']);die('|not allowed');
    			        endif;
    
    		        	$query = $this->db->like('no_undian','GRM-'.$date,'after')->order_by('no_undian','DESC')->get('x3_ramadan_activity')->row();
    		        	if(isset($query)):
    		        		$urutan = substr($query->no_undian,-3)+1;
    		        		if($urutan < 10):
    		        			$urutan = '00'.$urutan;
    		        		elseif($urutan < 100):
    		        			$urutan = '0'.$urutan;
    		        		else:
    		        			$urutan;
    		        		endif;
    		    		else:
    		    			$urutan = '001';
    		    		endif;
    		        	$_REQUEST['input']['no_undian'] = 'GRM-'.$date.$urutan;
    		        	$_REQUEST['input']['path_barcode'] = '/assets/uploads/'.$date;
    		        	$_REQUEST['input']['path_struck'] = '/assets/uploads/'.$date;
    		        	$_REQUEST['input']['foto_barcode'] = $data['foto_barcode']['upload_data']['file_name'];
    		        	$_REQUEST['input']['foto_struck'] = $data['foto_struck']['upload_data']['file_name'];
    		        	$this->model->Insert();
    		        	redirect(site_url().'landing/undian/'.$date.$urutan);
    		        else:
    		        	// salah cptcha
    		        	redirect($_SERVER['HTTP_REFERER']);
    		        	print_r($_SESSION['codex']);print_r($code);die('|not match');
    		        endif;
			    else:
			    	$message = "Validasi email salah";
			    	$data['input'] = $input = $_REQUEST['input'];
			    endif;
		    else:
		    	//event belum mulai, atau sudah berakhir
		    	redirect(site_url().'landing/ramadhansale');
		    endif;
        endif;

        $data['event'] = $this->db->where('id','1')->get('event')->row();
        $data['kota'] = $this->db->select('a.id_kab,a.nama, b.nama as nama_provinsi')
						->from('kota as a')
						->join('provinsi as b', 'b.id_prov = a.id_prov')
						->order_by('b.nama','ASC')
	 					->get()->result();

		$this->load->view('event_page',["content"=>"frontend/form_undian","judul"=>"Dapatkan Undian","data"=>$data,"keterangan"=>"Isi Formulir di bawah ini untuk mendapatkan nomor undian anda","message"=>$message]);//,["message"=>$message]
	}

	public function cek_barcode()
	{
		$input = $_REQUEST['input'];
		if(isset($input['barcode'])):
			$valid = true;
			$data['result'] = $result = $this->db->where('barcode',$input['barcode'])->get('x3_ramadan_activity')->result();
			if(count($data['result'])){
				$valid = false;
			}
			echo json_encode(array('valid' => $valid));
		else:
			redirect(site_url());
		endif;
	}

	public function undian($undian=null)
	{
	    $message = "";
	    if($_POST): 
        	$code = $_REQUEST['security_code'];
        	if(strtolower($code) == strtolower($_SESSION['codex'])):
	            $undian=$_REQUEST['input']['barcode'];
	        else:
	        	// salah cptcha
	        	$message = "Kode captcha salah";
	        	$data['input'] = $input = $_REQUEST['input'];
	        endif;
	    endif;
		if(isset($undian)):
			$data['result'] = $result = $this->db->where('no_undian','GRM-'.$undian,'before')->or_where('barcode =', $undian)->get('x3_ramadan_activity')->row();
			// $this->send_email($result);
			$this->load->view('event_page',["data"=>$data,"content"=>"frontend/voucher_undian","judul"=>"Voucher Undian","keterangan"=>"Berikut ini Voucher Undian Anda"]);
		else:
		    $data['event'] = $this->db->where('id','1')->get('event')->row();
			$this->load->view('event_page',["content"=>"frontend/form_undian_lupa","judul"=>"Dapatkan Undian","data"=>$data,"keterangan"=>"Isi Formulir di bawah ini untuk mendapatkan nomor undian anda","message"=>$message]);
		endif;
	}

	public function kirim_email($undian=null)
	{
		$result = $this->db->where('no_undian',$undian,'before')->or_where('barcode =', $undian)->get('x3_ramadan_activity')->row();
		$send_email = $this->send_email($result);
		$data['message'] = "Email anda sudah dikirim";
		$data['valid'] = true;
		echo json_encode($data);
	}

	public function imgtext($no_undian){
		$dir = dirname(dirname(dirname(__FILE__))) . '/captcha/fonts';
		$img = imagecreatefromjpeg(base_url('assets/orange').'/images/BackgroundVoucher2.jpg');
		//$img = imagecreatetruecolor(180, 50);
		$white = imagecolorallocate($img, 0, 0, 0);
		// print_r($img);die('sini');
		$font = $dir."/SegoeUIBold.ttf";//"\arial.ttf";
		imagettftext($img, 14, 0, 35, 220, $white, $font, 'Nomor undian anda adalah');
		imagettftext($img, 14, 0, 70, 250, $white, $font, $no_undian);
		header("Content-type: image/png");
		imagepng($img);
		//print_r(base_url('assets/orange').'/images/ramadhansale.jpg');die('sini');
	}

	public function send_email($data){
		$alamatemail = $data->email;
		$namapeserta = $data->nama;
		$undian = $data->no_undian;
		$mail = new PHPMailer; 
		$mail->IsSMTP();
        $mail->SMTPSecure = null;
        $mail->Host = "ssl://mail.maxxis.id"; //hostname masing-masing provider email
        $mail->SMTPDebug = 1;
        $mail->Port = 465;
        $mail->SMTPAuth = false;
        $mail->Username = "noreply@maxxis.id"; //user email
        $mail->Password = "Ptm@2021"; //password email
		$mail->SetFrom("noreply@maxxis.id","No Reply Maxxis ID"); //set email pengirim
		$mail->Subject = "Voucher Undian Maxxis Gebyar Ramadhan"; //subyek email
		$mail->AddAddress($alamatemail,$namapeserta);//("idnmis2@mail.cst.com.tw","IT Maxxis");//($email,$nama);  //tujuan email
		$isi_email = $this->load->view('frontend/email',["data"=>$undian],TRUE);
		$mail->MsgHTML($isi_email);
		if($mail->Send()): //echo "Message has been sent";
		//else echo "Failed to sending message";
		endif;
	}

	public function validasi_email(){
		// session_unset();
		// session_start();
		$data['valid'] = true;
		$result = $this->db->where('email',$_REQUEST['email'])->get('x3_ramadan_activity')->result();
		if(count($result) >= 2){
			$data['message'] = "Email anda sudah terdaftar, anda hanya bisa memasukkan 1 email untuk 2 barcode, harap menggunakan email yang lain";
			$data['valid'] = false;
		}else{
			$string = '';
			for ($i = 0; $i < 5; $i++)
			{
				$string .= chr(rand( 48, 57));
			}
			$_SESSION['validemail'] = $string;
			$data['message'] = "Email kode validasi sudah di kirim, harap cek email anda dan masukkan kode validasi";
    		$mail = new PHPMailer; 
    		$mail->IsSMTP();
            $mail->SMTPSecure = null;
            $mail->Host = "ssl://mail.maxxis.id"; //hostname masing-masing provider email
            $mail->SMTPDebug = 1;
            $mail->Port = 465;
            $mail->SMTPAuth = false;
            $mail->Username = "noreply@maxxis.id"; //user email
            $mail->Password = "Ptm@2021"; //password email
			$mail->SetFrom("noreply@maxxis.id","No Reply Maxxis ID"); //set email pengirim
			$mail->Subject = "Kode validasi email Maxxis Gebyar Ramadhan"; //subyek email
			$mail->AddAddress($_REQUEST['email'],$_REQUEST['nama']);//("idnmis2@mail.cst.com.tw","IT Maxxis");//($email,$nama);  //tujuan email
			$isi_email = "Kode Validasi email anda adalah ".$string;//$this->load->view('frontend/email',["data"=>$undian],TRUE);
			$mail->MsgHTML($isi_email);
			if($mail->Send()): //echo "Message has been sent";
			//else echo "Failed to sending message";
			endif;
		}
		echo json_encode($data);
	}

	public function captcha(){
		//session_unset();
		//session_start();
		$string = '';
		for ($i = 0; $i < 5; $i++)
		{
			$string .= chr(rand( 48, 57));
		}
		$_SESSION['codex'] = $string;
		$dir = dirname(dirname(dirname(__FILE__))) . '/captcha/fonts/';//C:\xampp\htdocs\maxxis.id\event\captcha/fonts
		$image = imagecreatetruecolor(180, 50);
		$font = "Molot.otf";
		$num2 = rand(1,2);
		if($num2==1)
		{
			$color = imagecolorallocate($image, 113, 193, 217);// color
		}
		else
		{
			$color = imagecolorallocate($image, 163, 197, 82);// color
		}
		// background transparant
		imagesavealpha($image, true);
		$trans_colour = imagecolorallocatealpha($image, 0, 0, 0, 127);
		imagefill($image, 0, 0, $trans_colour);
		$red = imagecolorallocate($image, 255, 0, 0);
		imagefilledellipse($image, 400, 300, 400, 300, $red);

		// background color white
		/*$white = imagecolorallocate($image, 231, 235, 238); 
		imagefilledrectangle($image,0,0,399,99,$white);*/
		imagettftext ($image, 30, 0, 10, 40, $color, $dir.$font, $_SESSION['codex']);
		header("Content-type: image/png");
		imagepng($image);
	}
}
