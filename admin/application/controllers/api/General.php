<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class General extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Apicommon_model');
    }

    public function index($id = NULL) {
        $method = $this->input->server('REQUEST_METHOD');
        switch($method) {
            case 'GET':
                $this->get_courses($id);
                break;
            case 'POST':
                $this->saveInquiryData();
                break;
            case 'PUT':
                $this->update_country($id);
                break;
            case 'DELETE':
                $this->delete_country($id);
                break;
            default:
                $this->response('', 405);
                break;
        }
    }

    private function get_courses($id) {
        //$countries = $this->Apicommon_model->get_countries($id);
        $courses = $this->Apicommon_model->get_courseList($id);
        $this->response($courses, 200);
    }

    private function saveInquiryData() {
        $data = json_decode($this->input->raw_input_stream, true);
        //$this->input->post()
        $res = $this->Apicommon_model->saveInquiryData($data);
        $this->response($res, 200);
    }

    private function create_country() {
        $data = json_decode($this->input->raw_input_stream, true);
        $this->Apicommon_model->create_country($data);
        $this->response(array('status' => 'Country created'), 201);
    }

    private function update_country($id) {
        $data = json_decode($this->input->raw_input_stream, true);
        $this->Apicommon_model->update_country($id, $data);
        $this->response(array('status' => 'Country updated'), 200);
    }

    private function delete_country($id) {
        $this->Apicommon_model->delete_country($id);
        $this->response(array('status' => 'Country deleted'), 200);
    }

    private function response($data, $status) {
        $this->output
            ->set_content_type('application/json')
            ->set_status_header($status)
            ->set_output(json_encode($data));
    }
}
