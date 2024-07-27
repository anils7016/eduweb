<?php
class User_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function check_login($email, $password){
        $getResult = $this->db->get_where('edu_users', array('email' => $email, 'password' => md5($password)))->row_array();
        if($getResult){
            $result['error_code'] = 200;
            $result['data'] = $getResult;
            $result['error_status'] = 'false';
            $result['message'] = 'Login successfully.';
        }else{
            $result['error_code'] = 404;
            $result['data'] = array();
            $result['error_status'] = 'true';
            $result['message'] = 'Email and password are incorrect. Please try again.';
        }
        return $result;
    }
}
