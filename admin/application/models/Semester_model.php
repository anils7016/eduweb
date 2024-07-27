<?php
class Semester_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function saveNewSemester($post)
    {

        $semesterSaveArray['course_id'] = $post['course_id'];
        $semesterSaveArray['semester_name'] = $post['semester_name'] . '-' . 'semester';
        $semesterSaveArray['created_by'] = $this->session->userdata('user_id');
        $semesterSaveArray['created_date'] = time();
        //delete existing cours id
        $this->db->where('course_id', $post['course_id']);
        $this->db->where('semester_name', $post['semester_name'] . '-' . 'semester');
        $this->db->delete('semesters');
        $getResult = $this->db->insert('semesters', $semesterSaveArray);

        if ($getResult) {
            $result['error_code'] = 200;
            $result['data'] = $result;
            $result['error_status'] = 'false';
            $result['message'] = 'Semester has been added successfully.';
        } else {
            $result['error_code'] = 404;
            $result['data'] = array();
            $result['error_status'] = 'true';
            $result['message'] = 'Semester does not add.Please try after sometime.';
        }
        return $result;
    }

    public function getSemesterList()
    {
        $getResult = $this->db->select('semesters.id as semester_id,semesters.course_id as semester_course_id,semesters.semester_name,courses.id,courses.course_name,courses.is_active,courses.is_active,courses.created_by,courses.created_date,courses.modified_by,courses.modified_date,edu_users.user_id,edu_users.first_name,edu_users.last_name')
            ->from('semesters')
            ->join('courses', 'semesters.course_id = courses.id', 'left')
            ->join('edu_users', 'edu_users.created_by = courses.created_by', 'left')
            ->order_by('semesters.id', 'desc')
            ->get()
            ->result_array();

        if ($getResult) {
            $result['error_code'] = 200;
            $result['data'] = $getResult;
            $result['error_status'] = 'false';
            $result['message'] = 'Semester list get successfully.';
        } else {
            $result['error_code'] = 404;
            $result['data'] = array();
            $result['error_status'] = 'true';
            $result['message'] = 'Unable to get course list. Please try again.';
        }
        return $result;
    }

    public function get_semesters_by_course($course_id)
    {
        return $this->db->where('course_id', $course_id)->get('semesters')->result();
    }
}
