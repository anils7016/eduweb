<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Apicommon_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function get_users($id = FALSE) {
        if ($id === FALSE) {
            $query = $this->db->get('users');
            return $query->result_array();
        }

        $query = $this->db->get_where('users', array('id' => $id));
        return $query->row_array();
    }

    public function create_user($data) {
        return $this->db->insert('users', $data);
    }

    public function update_user($id, $data) {
        $this->db->where('id', $id);
        return $this->db->update('users', $data);
    }

    public function delete_user($id) {
        $this->db->where('id', $id);
        return $this->db->delete('users');
    }

    public function get_courseList()
    {
        $getResult = $this->db->select('*')
            ->from('courses')
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

    public function saveInquiryData($post)
    {
       
        // $subjectSaveArray['semester_id'] = $post['semester_id'];
        // $subjectSaveArray['subject_code'] = $post['subject_code'];
        // $subjectSaveArray['subject_name'] = $post['subject_name'];
        // $subjectSaveArray['subject_description'] = $post['subject_description'];
        // $subjectSaveArray['created_by'] = $this->session->userdata('user_id');
        // $subjectSaveArray['created_date'] = time();
        
        $getResult = $this->db->insert('student_inquiry', $post);

        if ($getResult) {
            $result['error_code'] = 200;
            $result['data'] = $getResult;
            $result['error_status'] = 'false';
            $result['message'] = 'Successfully saved.';
        } else {
            $result['error_code'] = 404;
            $result['data'] = array();
            $result['error_status'] = 'true';
            $result['message'] = 'Not saved.';
        }
        return $result;
    }

}
