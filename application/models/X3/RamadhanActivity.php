<?php
class RamadhanActivity extends PTM_Model {
        public $table ="x3_ramadan_activity";
        
        public function GetFilter(){
                $date_start = date('Y-m-d');
                $date_to = date('Y-m-d');
                $search = "";
                if(isset($_REQUEST["date_start"])):
                  $date_start = $_REQUEST["date_start"];
                  $date_to = $_REQUEST["date_to"];
                  $search = $_REQUEST["search"];
                endif;
                if(!isset($_REQUEST["iclude_kualifikasi"])) $this->db->where('diskualifikasi =', "0");
                $this->db->where('DATE(created_date) >=', $date_start);
                $this->db->where('DATE(created_date) <=', $date_to);
                $this->db->where("( 
                        no_undian like '%{$search}%' or
                        {$this->table}.nama like '%{$search}%' or
                        kota.nama like '%{$search}%' or
                        jenis_kendaraan like '%{$search}%' or
                        barcode like '%{$search}%'
                 )");
                $this->db->join('kota', "kota.id_kab = {$this->table}.kota", 'left');
                $this->db->join("(select email,count(id) as jmlemail from {$this->table} where diskualifikasi = 0 group by email) c", "c.email = {$this->table}.email", 'left');
                $this->db->select("{$this->table}.*,kota.nama as nama_kota,jmlemail");
                $query = $this->db->get($this->table);
                return $query->result();
        }
       	public function diskualifikasi(){
    		$this->db->trans_begin();
    		$data = array('diskualifikasi' => $_REQUEST['diskualifikasi']);
            $this->db->update($this->table, $data, array('id' => $_REQUEST['id']));
            if ($this->db->trans_status() === FALSE) $this->db->trans_rollback();
            else $this->db->trans_commit();
            
            $this->db->select("email");
            $this->db->where('diskualifikasi =',0);
            $this->db->where('email =',$_REQUEST['email']);
            print_r($this->db->get($this->table)->num_rows());
	    }
}