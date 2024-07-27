<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Subject extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('Semester_model');
        $this->load->model('Course_model');
        $this->load->model('Subject_model');
        $this->load->library('upload');
        $this->load->helper(array('form', 'url'));
    }

    public function index()
    {
        $data['courseList'] = $this->Course_model->getCourseList();
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('subject/subject.php', $data);
        $this->load->view('layout/footer');
    }

    public function addNewSubject()
    {
        $data['courseList'] = $this->Course_model->getCourseList();
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('subject/add-new-subject.php', $data);
        $this->load->view('layout/footer');
    }

    // public function getSemesterList(){
    //     $result = $this->Semester_model->getSemesterList();
    //     // Send JSON response
    //     $this->output
    //         ->set_content_type('application/json')
    //         ->set_output(json_encode($result));
    // }

    public function saveSubject()
    {
        
        $result = $this->Subject_model->saveNewSubject($this->input->post(),$_FILES);
        // Send JSON response
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result));
    }

    public function get_subjects($semester_id)
    {   
        $this->load->model('Subject_model');
        //$semester_id = $this->input->get('semester_id');
        $subjects = $this->Subject_model->get_subjects_by_semester($semester_id);
        echo json_encode($subjects);
    }
}
