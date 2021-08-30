<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class hadiah extends PTM_Controller  {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model("X3/MHadiah","model");
	}

	public function index()
	{
		$data["data"] = $this->model->GetHadiah();
		$this->view('backend/Hadiah/index',$data);
	}

	public function add()
	{
		if(!isset($_REQUEST['submit'])){
			$data['event']=$this->db->get('event')->result();
			$this->view('backend/Hadiah/form',$data);
		}else{
            if(!empty($_FILES["upload"]["name"])){
				if (!is_dir('assets/hadiah/')) mkdir('./assets/hadiah/', 0777, TRUE);
	            $config['upload_path']          = './assets/hadiah/';
	            $config['allowed_types']        = 'gif|jpg|png|jpeg';
	            $config['max_size']             = 5120;
	            $config['encrypt_name']     	= true;
	            $new_name = date('Ymd').'_'.$_FILES["upload"]['name'];
				$config['file_name'] = $new_name;
	            $this->load->library('upload', $config);
	            if (!$this->upload->do_upload('upload')):
	                $data['upload']['message'] = array('error' => $this->upload->display_errors());
	            else:
	                $data['upload'] = array('upload_data' => $this->upload->data());
	            endif;
	        	$_REQUEST['input']['path_image'] = '/assets/hadiah/';
	        	$_REQUEST['input']['image'] = $data['upload']['upload_data']['file_name'];
	        }
			$this->model->Insert();
			redirect(site_url('hadiah'));
		}
	}

	public function edit($id)
	{
		if(!isset($_REQUEST['submit'])){
			$data['event']=$this->db->get('event')->result();
			$data["data"] = $this->model->GetById($id);
			$this->view('backend/Hadiah/form',$data);
		}else{
            if(!empty($_FILES["upload"]["name"])){
				if (!is_dir('assets/hadiah/')) mkdir('./assets/hadiah/', 0777, TRUE);
	            $config['upload_path']          = './assets/hadiah/';
	            $config['allowed_types']        = 'gif|jpg|png|jpeg';
	            $config['max_size']             = 5120;
	            $config['encrypt_name']     	= true;
	            $new_name = date('Ymd').'_'.$_FILES["upload"]['name'];
				$config['file_name'] = $new_name;
	            $this->load->library('upload', $config);
	            if (!$this->upload->do_upload('upload')):
	                $data['upload']['message'] = array('error' => $this->upload->display_errors());
	            else:
	                $data['upload'] = array('upload_data' => $this->upload->data());
					$file_lama = '.'.$_REQUEST['input']['path_image'].$_REQUEST['input']['image'];
					if(is_file($file_lama)){
						unlink($file_lama);
					}
	            endif;
	        	$_REQUEST['input']['path_image'] = '/assets/hadiah/';
	        	$_REQUEST['input']['image'] = $data['upload']['upload_data']['file_name'];
	        }
			$this->model->Update();
			redirect(site_url('hadiah'));
		}
	}

	public function delete($id)
	{
		$_REQUEST['id'] = $id;
		$this->model->Delete();
		redirect(site_url('hadiah'));
	}

	public function export(){
		$data["data"] = $this->model->GetFilter();
		$this->load->view('backend/Hadiah/export',$data);
	}
}
