<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class undian extends PTM_Controller  {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model("X3/MHadiah","model");
		$this->load->model("X3/MPemenang","modelPemenang");
	}

	public function index()
	{
		$data['event']=$this->db->get('event')->result();
		$data['participant'] = $this->db
								->select('a.*, b.id_pemenang, c.nama as nama_kabupaten, d.nama as nama_provinsi')
								->order_by('a.no_undian','ASC')
								->join('pemenang as b','b.id_pemenang = a.id','left')
								->join('kota as c','c.id_kab = a.kota','left')
								->join('provinsi as d','d.id_prov = c.id_prov','left')
								->where('b.id_hadiah IS NULL')
								->where('a.diskualifikasi = 0')
								->get('x3_ramadan_activity as a')->result_array();
		$this->view('backend/Undian/raffle_draw',$data);
	}

	public function get_hadiah()
	{
		$event = $_REQUEST['id'];
		$prize = $this->db->where('id_event',$event)->get('hadiah')->result();
		$html = '<select class="form-control select2bs4" name="input[id_hadiah]" id="id_hadiah">';
		$html .= '<option value="" disabled selected>-- Pilih Hadiah --</option>';
		foreach ($prize as $key => $value) {
			$html .= '<option value="'.$value->id.'" >'.$value->nama.'</option>';
		}
		$html .= '</select>';
		$data['hadiah'] = $html;
		echo json_encode($data);
	}

	public function get_image()
	{
		$id = $_REQUEST['id'];
		$prize = $this->db->where('id',$id)->get('hadiah')->row();
		$claim = $this->db->select('count(*) as jml_claim')->where('id_hadiah',$id)->get('pemenang')->row();
		$data['img_hadiah'] = base_url($prize->path_image.$prize->image);
		$data['jml_hadiah'] = $prize->jumlah;
		$data['jml_claim'] = $claim->jml_claim;
		$data_claim = $this->db->select('a.*,b.nama as nama_pemenang, c.nama as nama_hadiah, b.telp, b.no_undian, b.ig_username, d.nama as nama_kabupaten, e.nama as nama_provinsi')
						->join('x3_ramadan_activity as b','b.id = a.id_pemenang','left')
						->join('hadiah as c','c.id = a.id_hadiah','left')
						->join('kota as d','d.id_kab = b.kota','left')
						->join('provinsi as e','e.id_prov = d.id_prov','left')
						->where('a.id_hadiah',$id)
						->get('pemenang as a')
						->result();
		$data['data_claim'] = $data_claim;
		echo json_encode($data);
	}

	public function set_pemenang(){
		$id=$_REQUEST['input']['id_hadiah'];
		$id_pemenang=$_REQUEST['input']['id_pemenang'];
		$cek_pemenang = $this->db->where('id_hadiah',$id)->where('id_pemenang',$id_pemenang)->get('pemenang')->num_rows();
		if($cek_pemenang){
			$data['jml_claim'] = '0';
		}else{
			$this->modelPemenang->Insert();
			$claim = $this->db->select('count(*) as jml_claim')->where('id_hadiah',$id)->get('pemenang')->row();
			$data['jml_claim'] = $claim->jml_claim;
			$data_claim = $this->db->select('a.*,b.nama as nama_pemenang, c.nama as nama_hadiah, b.telp, b.no_undian, b.ig_username, d.nama as nama_kabupaten, e.nama as nama_provinsi')
							->join('x3_ramadan_activity as b','b.id = a.id_pemenang','left')
							->join('hadiah as c','c.id = a.id_hadiah','left')
							->join('kota as d','d.id_kab = b.kota','left')
							->join('provinsi as e','e.id_prov = d.id_prov','left')
							->where('a.id_hadiah',$id)
							->get('pemenang as a')
							->result();
			$data['data_claim'] = $data_claim;
		}
		echo json_encode($data);
	}
}