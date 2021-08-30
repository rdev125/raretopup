<?php
class MDistributor extends PTM_Model {
        public $table ="distributor";
        
        public function GetFilter(){
                $search = "";
                if(isset($_REQUEST["search"])):
                  $search = $_REQUEST["search"];
                endif;
                $this->db->where("( 
                        nama like '%{$search}%' or
                        kota like '%{$search}%'
                 )");
                $this->db->select("{$this->table}.*");
                $query = $this->db->get($this->table);
                return $query->result();
        }
}