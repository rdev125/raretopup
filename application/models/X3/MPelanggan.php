<?php
class MPelanggan extends PTM_Model {
        public $table ="pelanggan";
        
        public function GetFilter(){
                $date_start = date('Y-m-d');
                $date_to = date('Y-m-d');
                $search = "";
                if(isset($_REQUEST["date_start"])):
                  $date_start = $_REQUEST["date_start"];
                  $date_to = $_REQUEST["date_to"];
                  $search = $_REQUEST["search"];
                endif;
                $this->db->where('verified =', 1);
                $this->db->where('DATE(pelanggan.created_at) >=', $date_start);
                $this->db->where('DATE(pelanggan.created_at) <=', $date_to);
                $this->db->where("( 
                        pelanggan.nama like '%{$search}%' or
                        pelanggan.email like '%{$search}%' or
                        pelanggan.hp like '%{$search}%'
                 )");
                $this->db->join('distributor', "distributor.id = {$this->table}.distributor_id", 'left');
                $this->db->select("{$this->table}.*,distributor.nama as distributor,distributor.kota");
                $query = $this->db->get($this->table);
                return $query->result();
        }
        public function getByPhoneNumber($phone){
            $this->db->where("hp = ",$phone);
            $this->db->select("{$this->table}.*");
            $query = $this->db->get($this->table);
            return $query->row();
        }
        public function insertWithOTP($arrayData){
            $this->db->trans_begin();
            $this->db->insert($this->table, $arrayData);
            if ($this->db->trans_status() === FALSE) $this->db->trans_rollback();
            else $this->db->trans_commit();
        }
        public function updateOTP($id,$otp){
            $this->db->trans_begin();
            $this->db->update($this->table,array('otp' => $otp), array('id' => $id));
            if ($this->db->trans_status() === FALSE) $this->db->trans_rollback();
            else $this->db->trans_commit();
        }
        public function customerVerified($id){
            $this->db->trans_begin();
            $this->db->update($this->table,array('verified' => 1), array('id' => $id));
            if ($this->db->trans_status() === FALSE) $this->db->trans_rollback();
            else $this->db->trans_commit();
        }
}