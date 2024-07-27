<?php
defined('BASEPATH') OR exit('No direct script access allowed');

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding');

class Api extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Apicommon_model');
        $this->load->helper('url');
        $this->load->helper('form');
    }

    public function users($id = NULL) {
        $method = $this->input->server('REQUEST_METHOD');
        switch($method) {
            case 'GET':
                $this->get_users($id);
                break;
            case 'POST':
                $this->create_user();
                break;
            case 'PUT':
                $this->update_user($id);
                break;
            case 'DELETE':
                $this->delete_user($id);
                break;
            default:
                $this->response('', 405);
                break;
        }
    }

    private function get_users($id) {
        $users = $this->Apicommon_model->get_users($id);
        $this->response($users, 200);
    }

    private function create_user() {
        $data = json_decode($this->input->raw_input_stream, true);
        $this->Apicommon_model->create_user($data);
        $this->response(array('status' => 'User created'), 201);
    }

    private function update_user($id) {
        $data = json_decode($this->input->raw_input_stream, true);
        $this->Apicommon_model->update_user($id, $data);
        $this->response(array('status' => 'User updated'), 200);
    }

    private function delete_user($id) {
        $this->Apicommon_model->delete_user($id);
        $this->response(array('status' => 'User deleted'), 200);
    }

    private function get_courses($id) {
        $course = $this->Apicommon_model->get_courseList($id);
        $this->response($course, 200);
    }

    private function response($data, $status) {
        $this->output
            ->set_content_type('application/json')
            ->set_status_header($status)
            ->set_output(json_encode($data));
    }
}
