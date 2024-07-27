<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Country_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    
    public function get_countries($id = FALSE) {
        if ($id === FALSE) {
            $query = $this->db->get('countries');
            return $query->result_array();
        }

        $query = $this->db->get_where('countries', array('id' => $id));
        return $query->row_array();
    }

    public function create_country($data) {
        return $this->db->insert('countries', $data);
    }

    public function update_country($id, $data) {
        $this->db->where('id', $id);
        return $this->db->update('countries', $data);
    }

    public function delete_country($id) {
        $this->db->where('id', $id);
        return $this->db->delete('countries');
    }
    public function get_countriesList()
    {
        $getResult = $this->db->select('*')
            ->from('countries')
            //->join('edu_users', 'edu_users.created_by = courses.created_by', 'left')
            //->order_by('courses.id', 'desc')
            ->get()
            ->result_array();
        if ($getResult) {
            $result['error_code'] = 200;
            $result['data'] = $getResult;
            $result['error_status'] = 'false';
            $result['message'] = 'Course list get successfully.';
        } else {
            $result['error_code'] = 404;
            $result['data'] = array();
            $result['error_status'] = 'true';
            $result['message'] = 'Unable to get course list. Please try again.';
        }
        return $result;
    }
}
