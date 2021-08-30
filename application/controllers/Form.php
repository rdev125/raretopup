<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Form extends CI_Controller{

	public function __construct()
	{
		parent::__construct();
        $this->load->model("X3/MDistributor","distributor");
        $this->load->model("X3/MPelanggan","pelanggan");
        include_once "email/class.phpmailer.php";
	}
	
    public function index($distributor=null){
        $data['dist'] = $distributor;
        $data['message'] = "";
        $data['distributors'] = $this->distributor->GetAll();
        $this->load->view('form',$data);
    }
    public function store(){
        $arrayData = $_REQUEST['input'];
        $arrayData['otp'] = $this->_createOTP();
        $arrayData['verified'] = '0';
        $pelanggan = $this->pelanggan->getByPhoneNumber($arrayData['hp']);
        $data['message']='';
        $otp = $this->_createOTP();
        if(!isset($pelanggan)):
            $this->pelanggan->insertWithOTP($arrayData);
            $this->_sendOTP($otp,$arrayData['hp']);
        else:
            if($pelanggan->verified == 1): $data['message']='Nomor HP Sudah Pernah Digunakan.Mohon Gunakan Nomor Yang Lain!!';
            else:
                $this->pelanggan->updateOTP($pelanggan->id,$otp);
                $this->_sendOTP($otp,$pelanggan->hp);
            endif;
        endif;
        $data['status']='SUCCESS';
        echo json_encode($data);
    }
    private function _createOTP(){
        $digits = 4;
        return rand(pow(10, $digits-1), pow(10, $digits)-1);
    }
    
    private function _sendOTP($otp,$phone){
        $this->_postCurl($otp,$phone);
    }
    
    private function _postCurl($otp,$phone){
        $url = 'https://sendtalk-api.taptalk.io/api/v1/message/send_whatsapp';
        $apiKey = '9da313d12a35e91b4c2a5aea41cb945a970201e25165dd369ae3d900e039c2ab';
        $phone = '62'.substr($phone,1);
        $curl_init = curl_init($url);
        $data = json_encode(array('phone'=>$phone,'messageType'=>'otp','body'=>'Maxxis Indonesia. Ini adalah kode OTP kamu '.$otp));
        curl_setopt($curl_init, CURLOPT_POSTFIELDS, $data);
        curl_setopt($curl_init, CURLOPT_HTTPHEADER, array('API-Key: ' . $apiKey));
        curl_setopt($curl_init, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($curl_init);
        curl_close($curl_init);
    }
    
    public function checkotp(){
        $arrayData = $_REQUEST['input'];
        $pelanggan = $this->pelanggan->getByPhoneNumber($arrayData['hp']);
        $data['message']='';
        if(isset($pelanggan)):
            if($pelanggan->otp == $arrayData['otp']):
                $data['message']='Terimaskasih atas partisipasi anda...!';
                $data['status']='SUCCESS';
                $this->pelanggan->customerVerified($pelanggan->id);
            else:
                $data['message']='Kode OTP yang ada masukan salah';
                $data['status']='FAIL';
            endif;
        else:
            $data['message']='Nomor hp tidak terdaftar!';
            $data['status']='FAIL';
        endif;
        echo json_encode($data);
    }
}