<?php
class Course_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function create_slug($string) {
        $string = strtolower($string);
        $string = preg_replace('/[^a-z0-9\s-]/', '', $string);
        $string = preg_replace('/[\s-]+/', '-', $string);
        $string = trim($string, '-');
        return $string;
    }
    

    public function saveNewCourse($post, $file)
    {
        $courseSaveArray['name'] = $post['course_name'];
        $courseSaveArray['page_content'] = $post['course_description'];
        $courseSaveArray['short_desc'] = $post['short_desc'];
        $courseSaveArray['category_id'] = $post['category_id'];

        $courseSaveArray['slug_name'] = (isset($post['course_name'])) ? $this->create_slug($post['course_name']) : 'course-'.time();
        $file_name = "";
        if (isset($file['image']['name']) && $file['image']['name']!='' ) {
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

            $courseSaveArray['image'] = $file_name;
        }
        //$courseSaveArray['course_image'] = $file_name;
        //$courseSaveArray['image'] = $file_name;
        
        if(isset($post['course_id']) && $post['course_id']!=''){
            $this->db->where('id', $post['course_id'] );
            $getResult = $this->db->update('courses', $courseSaveArray);
        
        }else{
            $courseSaveArray['created_date'] = time();
            $getResult = $this->db->insert('courses', $courseSaveArray);
        }
        
        if ($getResult) {
            $result['error_code'] = 200;
            $result['data'] = $result;
            $result['error_status'] = 'false';
            $result['message'] = 'Course has been added successfully.';
        } else {
            $result['error_code'] = 404;
            $result['data'] = array();
            $result['error_status'] = 'true';
            $result['message'] = 'Course does not add.Please try after sometime.';
        }
        return $result;
    }

    public function deleteCourse($post)
    {
     
        if(isset($post['id']) && $post['id']!=''){
            // $courseDeleteArray['modified_date'] = time();
            // $courseDeleteArray['is_active'] = 0;
            // $this->db->where('id', $post['id'] );
            // $getResult = $this->db->update('courses', $courseDeleteArray);
            $this->db->where('id', $post['id'] );
            $getResult = $this->db->delete('courses');
        
        }
        
        if ($getResult) {
            $result['error_code'] = 200;
            $result['data'] = $result;
            $result['error_status'] = 'false';
            $result['message'] = 'Course has been deleted successfully.';
        } else {
            $result['error_code'] = 404;
            $result['data'] = array();
            $result['error_status'] = 'true';
            $result['message'] = 'Course does not add.Please try after sometime.';
        }
        return $result;
    }

    public function getCourseList()
    {
        //$getResult = $this->db->select('c.id,c.name as course_name,c.is_active,c.created_by,c.created_date,c.modified_by,c.modified_date,c.course_image,edu_users.user_id,edu_users.first_name,edu_users.last_name')
        $getResult = $this->db->select('c.id,c.name as course_name,c.is_active,c.image as course_image')
            ->from('courses c')
            //->join('edu_users', 'edu_users.created_by = c.created_by', 'left')
            ->order_by('c.id', 'desc')
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

    public function getCourseById($id)
    {
        //$getResult = $this->db->select('courses.id,courses.course_name,courses.course_description, courses.is_active,courses.is_active,courses.created_by,courses.created_date,courses.modified_by,courses.modified_date,courses.course_image,edu_users.user_id,edu_users.first_name,edu_users.last_name')
        $getResult = $this->db->select('c.id,c.name as course_name,c.category_id, c.short_desc ,c.page_content as course_description, c.is_active,c.image as course_image')
            ->from('courses as c')
            //->join('edu_users', 'edu_users.created_by = c.created_by', 'left')
            //->join('edu_users', 'edu_users.created_by = c.created_by', 'left')
            ->where('c.id', $id)
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

    public function getStudentInquiryList()
    {
        $getResult = $this->db->select('s.*, c.name as countryName ')
            ->from('student_inquiry as s')
            ->join('countries c', 'c.id = s.country', 'left')
            ->order_by('s.id', 'desc')
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
