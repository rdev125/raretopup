<?php
class MHadiah extends PTM_Model {
        public $table ="hadiah";

    public function GetHadiah()
    {
        $query = $this->db
                ->select('a.*, b.nama_event')
                ->join('event as b','b.id = a.id_event','left')
                ->get($this->table.' as a');
        return $query->result();
    }
}