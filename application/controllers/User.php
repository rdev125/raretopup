<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller  {

	public function __construct()
	{
		parent::__construct();
        $this->load->model("Users");
	}
    public function index(){
        $message = "";
        if(isset($_REQUEST["submit"])):
            if($this->Users->DoLogin()) redirect(site_url('dashboard'));
            else $message="Login Fail.<br/> Please Chek Username Or Password Is Correct!";
        endif;
        if($this->session->userdata('user_logged') != null) redirect(site_url('dashboard'));
        $this->load->view('login',["message"=>$message]);
    }
    public function logout(){
        $this->session->sess_destroy();
        redirect(site_url('auth'));
    }
}
