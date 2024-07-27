<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'url'));
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->model('User_model'); // Assuming you have a User_model for database operations
    }

    public function index()
    {
        // Load your main content view here
        if ($this->session->userdata('logged_in')) {
            redirect('dashboard');
        }

        $this->load->view('login/login');
    }


    public function check_login_random($url) {
        if ($this->session->userdata('logged_in')) {
            redirect('dashboard');
        } else {
            redirect('login');
        }
    }

    public function loginAuthenticate()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $result = $this->User_model->check_login($email, $password);
        if ($result['error_code'] == 200) {
            $session_data = array(
                'email' => $result['data']['email'],
                'first_name' => $result['data']['first_name'],
                'last_name' => $result['data']['last_name'],
                'user_name' => $result['data']['user_name'],
                'is_active' => $result['data']['is_active'],
                'user_id' => $result['data']['user_id'],
                'logged_in' => TRUE
            );
            $this->session->set_userdata($session_data);
        }
        // Send JSON response
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result));
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect('login');
    }
}
