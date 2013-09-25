<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class sam extends CI_Controller {

    private $id;
    private $level;
    private $manager;
    private $department;
    private $name;
    private $forcePassword;

    function __construct() {
        
        parent::__construct();
        $this->__authenticated();
        $this->__credentials();
        
    }

    function index() {
        
        $this->load->view('sam-client/template/header');
        //$this->load->view('sam-client/splash');
        //$this->load->view('sam-client/template/footer');
        
    }

    function login() {
        
    }

    private function __authenticated() {
        //$this->session->sess_destroy();
        $authenticated = $this->session->userdata('authenticated');
        if (!isset($authenticated) || $authenticated !== true) {
            
            redirect('sam-client/login');            
            die();
        }
    }

    private function __credentials() {

        //check credentials
        $this->id = $this->session->userdata('id');
        $this->level = $this->session->userdata('level');
        $this->manager = number_format($this->session->userdata('manager'));
        $this->department = $this->session->userdata('department');
        $this->name = $this->session->userdata('name');
        $this->position = $this->session->userdata('position');
        $this->forcePassword = $this->session->userdata('force_password');
        
    }

}