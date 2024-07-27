<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Semester extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('Semester_model');
        $this->load->model('Course_model');
    }

    public function index()
    {
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('semester/semester.php');
        $this->load->view('layout/footer');
    }

    public function addNewSemester()
    {
        $data['courseList'] = $this->Course_model->getCourseList();
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('semester/add-new-semester.php', $data);
        $this->load->view('layout/footer');
    }

    public function getSemesterList()
    {
        $result = $this->Semester_model->getSemesterList();
        // Send JSON response
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result));
    }

    public function saveSemester()
    {
        $result = $this->Semester_model->saveNewSemester($this->input->post());
        // Send JSON response
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result));
    }

    public function get_by_course($course_id)
    {
        $this->load->model('Semester_model');
        $semesters = $this->Semester_model->get_semesters_by_course($course_id);
        echo json_encode($semesters);
    }
}
