<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends PTM_Controller  {

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->view('backend/index');
	}
}
