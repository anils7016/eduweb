<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Registration extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        // Load your main content view here
        $this->load->view('registration/registration');
    }
}
