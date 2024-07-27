<?php
class Subject_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function saveNewSubject($post,$file)
    {
       
        $subjectSaveArray['semester_id'] = $post['semester_id'];
        $subjectSaveArray['subject_code'] = $post['subject_code'];
        $subjectSaveArray['subject_name'] = $post['subject_name'];
        $subjectSaveArray['subject_description'] = $post['subject_description'];
        $subjectSaveArray['created_by'] = $this->session->userdata('user_id');
        $subjectSaveArray['created_date'] = time();
        $file_name = "";
        if (isset($file['image']['name'])) {
            $original_filename = $_FILES['image']['name'];
            // Get the file extension
            $file_extension = pathinfo($original_filename, PATHINFO_EXTENSION);
            // Generate the new file name with timestamp
            $new_filename = pathinfo($original_filename, PATHINFO_FILENAME) . '_' . time() . '.' . $file_extension;
            $config['upload_path'] = './uploads/'; // Directory to save the uploaded file
            $config['allowed_types'] = 'jpg|jpeg|png|gif'; // Allowed file types
            $config['max_size'] = 2048; // Maximum file size (2MB)
            $config['file_name'] = $new_filename; // Set the new file name
            $this->upload->initialize($config);
            if ($this->upload->do_upload('image')) {
                $upload_data = $this->upload->data();
                $file_name = $upload_data['file_name'];
            }
        }
        $subjectSaveArray['subject_image'] = $file_name;
        $getResult = $this->db->insert('subjects', $subjectSaveArray);

        if ($getResult) {
            $result['error_code'] = 200;
            $result['data'] = $result;
            $result['error_status'] = 'false';
            $result['message'] = 'Subject has been added successfully.';
        } else {
            $result['error_code'] = 404;
            $result['data'] = array();
            $result['error_status'] = 'true';
            $result['message'] = 'Subject does not add.Please try after sometime.';
        }
        return $result;
    }

    // public function getSemesterList()
    // {
    //     $getResult = $this->db->select('semesters.id as semester_id,semesters.course_id as semester_course_id,semesters.semester_name,courses.id,courses.course_name,courses.is_active,courses.is_active,courses.created_by,courses.created_date,courses.modified_by,courses.modified_date,edu_users.user_id,edu_users.first_name,edu_users.last_name')
    //         ->from('semesters')
    //         ->join('courses', 'semesters.course_id = courses.id', 'left')
    //         ->join('edu_users', 'edu_users.created_by = courses.created_by', 'left')
    //         ->order_by('semesters.id', 'desc')
    //         ->get()
    //         ->result_array();

    //     if ($getResult) {
    //         $result['error_code'] = 200;
    //         $result['data'] = $getResult;
    //         $result['error_status'] = 'false';
    //         $result['message'] = 'Semester list get successfully.';
    //     } else {
    //         $result['error_code'] = 404;
    //         $result['data'] = array();
    //         $result['error_status'] = 'true';
    //         $result['message'] = 'Unable to get course list. Please try again.';
    //     }
    //     return $result;
    // }

    // public function get_semesters_by_course($course_id)
    // {
    //     return $this->db->where('course_id', $course_id)->get('semesters')->result();
    // }

    public function get_subjects_by_semester($semester_id)
    {
        return $this->db->where('semester_id', $semester_id)->get('subjects')->result();
    }
}
