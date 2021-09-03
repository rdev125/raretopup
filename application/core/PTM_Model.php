<?php
class PTM_Model extends CI_Model {
        public $table ="table";
        public $primary_key ="id";
        //Crud
        public function GetAll()
        {
            $query = $this->db->get($this->table);
            return $query->result();
        }

        public function GetById($id,$type=''){
            $query = $this->db;
            if($type='Arr'){
                if(is_array($this->primary_key)){
                    foreach ($this->primary_key as $keypk => $valpk) {
                        $query->where($valpk,$id[$keypk]);
                    }
                }
            }else{
                $query = $query->where($this->primary_key,$id);
            }
            $query = $query->get($this->table);
            return $query->row();
        }

        public function GetByArrId($id){
            $query = $this->db;
            if(is_array($this->primary_key)){
                foreach ($this->primary_key as $keypk => $valpk) {
                    $query->where($valpk,$id[$keypk]);
                }
            }
            $query = $query->get($this->table);
            return $query->row();
        }

        public function Insert()
        {
            $this->db->trans_begin();
            $this->db->insert($this->table, $_REQUEST['input']);
            if ($this->db->trans_status() === FALSE) $this->db->trans_rollback();
            else $this->db->trans_commit();
        }

        public function Update()
        {
            $this->db->trans_begin();
            $this->db->update($this->table, $_REQUEST['input'], array($this->primary_key => $_REQUEST[$this->primary_key]));
            if ($this->db->trans_status() === FALSE) $this->db->trans_rollback();
            else $this->db->trans_commit();
        }

        public function Delete()
        {
            $this->db->trans_begin();
            $this->db->delete($this->table,array('id' => $_REQUEST['id']));
            if ($this->db->trans_status() === FALSE) $this->db->trans_rollback();
            else $this->db->trans_commit();
        }

}