<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Distributor extends PTM_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model("X3/MDistributor","distributor");
        $this->load->library("Ciqrcode");
	}
    public function index(){
        $data["data"] = $this->distributor->GetFilter();
		$this->view('backend/Distributor/index',$data);
    }
    public function add(){
        if(isset($_REQUEST['submit'])):
            $this->distributor->Insert();
            redirect(site_url('distributor'));
        else:
            $this->view('backend/Distributor/form');
        endif;
    }
    public function edit($id){
        if(isset($_REQUEST['submit'])):
            $_REQUEST['id'] = $id;
            $this->distributor->Update();
            redirect(site_url('distributor'));
        else:
            $data["data"] = $this->distributor->GetById($id);
            $this->view('backend/Distributor/form',$data);
        endif;
    }
    public function delete($id)
	{
        $_REQUEST['id'] = $id;
		$this->distributor->Delete();
		redirect(site_url('distributor'));
    }
    public function export(){
		$data["data"] = $this->distributor->GetFilter();
		$this->load->view('backend/Distributor/export',$data);
	}
	public function QRCode($kode=''){
		$newkode = site_url('form/').$kode;
		QRcode::png(
			$newkode,
			$outfile=false,
			$level=QR_ECLEVEL_H,
			$size=6,
			$margin=2
		);
	}
}