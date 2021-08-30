<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nowrapper extends PTM_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model("X3/MDistributor","distributor");
        $this->load->model("X3/MPelanggan","pelanggan");
	}
	
	public function form(){
	    $this->view('form',$data);
	}
	
    public function index(){
        $data["data"] = $this->pelanggan->GetFilter();
		$this->view('backend/NoWrapper/index',$data);
    }
    public function export(){
		$data["data"] = $this->pelanggan->GetFilter();
		$this->load->view('backend/NoWrapper/export',$data);
	}
}