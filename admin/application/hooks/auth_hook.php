<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function check_login() {
    $CI =& get_instance();
    $CI->load->library('session');
    $CI->load->helper('url');
    $CI->load->helper('auth');

    // List of valid controllers
    $valid_controllers = array('login', 'dashboard');

    // Get the current controller
    $controller = $CI->router->fetch_class();

    // If the controller is not in the list of valid controllers and the user is not logged in, redirect to login
    if (!in_array($controller, $valid_controllers) && !$CI->session->userdata('logged_in')) {
        redirect('login');
    }

    // If the user is logged in and trying to access the login page, redirect to the dashboard
    if ($CI->session->userdata('logged_in') && $controller == 'login') {
        redirect('dashboard');
    }
}
?>
