<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class login extends CI_Controller {

    function __construct() {
        
        parent::__construct();
        $this->load->helper('date');
        $this->load->helper('text');
        
    }

    function index() {
        
        $authenticated = $this->session->userdata('authenticated');
        $data['title'] = 'Hello! I am SAM, Say hello to me :) ';
        
        if ($authenticated == true) {
        
            //if user call this page and he is still logged in then redirect to the application
            redirect('sam-client/sam');
            
        }        
        $this->load->view('sam-client/login', $data);
    }
    
//    function loginView(){
//        //this view used to render the login box
//        $this->load->view('../../assets/sam-client/template/loginView.php', $data);
//        
//    }

}