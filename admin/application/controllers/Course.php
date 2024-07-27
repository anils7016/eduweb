<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Course extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('Course_model');
        $this->load->library('upload');
        $this->load->helper(array('form', 'url'));
    }

    public function index()
    {
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('course/course.php');
        $this->load->view('layout/footer');
    }

    public function addNewCourse()
    {
        $this->load->view('layout/header');
        $this->load->view('layout/sidebar');
        $this->load->view('course/add-new-course.php');
        $this->load->view('layout/footer');
    }
    
    public function getCourseList(){
        $result = $this->Course_model->getCourseList();
        // Send JSON response
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result));
    }

    public function saveCourse(){
        $result = $this->Course_model->saveNewCourse($this->input->post(),$_FILES);
        // Send JSON response
        $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result));
    }
}
