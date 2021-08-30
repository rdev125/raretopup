<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class giftevent extends PTM_Controller  {

	
	public function __construct()
	{
		parent::__construct();
		$this->load->model("X3/RamadhanActivity","model");
		include_once "email/class.phpmailer.php";
	}

	public function index()
	{
		$data["data"] = $this->model->GetFilter();
		$this->view('backend/GiftEvent/index',$data);
	}
	public function export(){
		$data["data"] = $this->model->GetFilter();
		$this->load->view('backend/GiftEvent/export',$data);
	}
	public function diskualifikasi(){
        echo $this->model->diskualifikasi();
	}
	
	public function sendMail(){
	    $data = $this->model->GetById($_REQUEST["id"]);
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
		redirect(current_url()."/../");
	}
}
