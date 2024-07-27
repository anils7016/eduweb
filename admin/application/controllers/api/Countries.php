<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Countries extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Country_model');
    }

    public function index($id = NULL) {
        $method = $this->input->server('REQUEST_METHOD');
        switch($method) {
            case 'GET':
                $this->get_countries($id);
                break;
            case 'POST':
                $this->create_country();
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

    private function get_countries($id) {
        //$countries = $this->Country_model->get_countries($id);
        $countries = $this->Country_model->get_countriesList($id);
        $this->response($countries, 200);
    }

    private function create_country() {
        $data = json_decode($this->input->raw_input_stream, true);
        $this->Country_model->create_country($data);
        $this->response(array('status' => 'Country created'), 201);
    }

    private function update_country($id) {
        $data = json_decode($this->input->raw_input_stream, true);
        $this->Country_model->update_country($id, $data);
        $this->response(array('status' => 'Country updated'), 200);
    }

    private function delete_country($id) {
        $this->Country_model->delete_country($id);
        $this->response(array('status' => 'Country deleted'), 200);
    }

    private function response($data, $status) {
        $this->output
            ->set_content_type('application/json')
            ->set_status_header($status)
            ->set_output(json_encode($data));
    }
}
