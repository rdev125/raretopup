<?php
//Jay
class PTM_Controller  extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		if($this->session->userdata('user_logged') == null):
			redirect(site_url('auth'));
		endif;
	}
	public function view($layout_content,$data=null){
		$this->load->view('backend/Layout/Header');
		$this->load->view('backend/Layout/Sidebar');
		$this->load->view($layout_content,$data);
		$this->load->view('backend/Layout/Footer');
	}
}
