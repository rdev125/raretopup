<?php
class Users extends PTM_Model {
    public $table ="users";
    //Auth
    public function DoLogin(){
        $this->db->where('email', $_REQUEST["username"])
                ->or_where('username', $_REQUEST["username"]);
        $user = $this->db->get($this->table)->row();
        if($user)
        {
            $isPasswordTrue = password_verify($_REQUEST["password"], $user->password);
            $isAdmin = $user->role == "admin";
            if($isPasswordTrue){ 
                $this->session->set_userdata(['user_logged' => $user]);
                return true;
            }
        }
        return false;
    }
}