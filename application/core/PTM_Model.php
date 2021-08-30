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

        public function GetById($id){
            $query = $this->db->where($this->primary_key,$id)->get($this->table);
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
            $this->db->update($this->table, $_REQUEST['input'], array('id' => $_REQUEST['id']));
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