<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */

	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		if (!$this->session->userdata('logged_in')) {
            redirect('login');
        }	
	}

	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/sidebar');
		// Load your main content view here
		//$this->load->view('content');  // Replace 'content' with the actual view name
		$this->load->view('dashboard/dashboard.php');
		$this->load->view('layout/footer');
	}
}
