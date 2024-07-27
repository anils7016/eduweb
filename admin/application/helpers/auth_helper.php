<?php
defined('BASEPATH') or exit('No direct script access allowed');

if (!function_exists('check_login_status')) {
    function check_login_status()
    {
        $CI = &get_instance();
        $CI->load->library('session');

        // Check if user is logged in
        if (!$CI->session->userdata('logged_in')) {
            redirect('login');
        }
    }
}
