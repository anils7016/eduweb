<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');
    }

    public function index() {
        // Your existing login logic here
    }

    public function check_login1() {
        if ($this->session->userdata('logged_in')) {
            redirect('dashboard');
        } else {
            redirect('admin/login');
        }
    }
}
?>
