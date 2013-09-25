<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class i extends CI_Controller {

    private $id;
    private $level;
    private $manager;
    private $department;
    private $name;
    private $forcePassword;    

    function __construct() {

        parent::__construct();
        $this->load->config('samAPI');
        $this->__credentials();
    }

    function index() {
        //check if there any available vacancies
        echo "what you're doing here! this is the API-WRAPPER";
    }

    function auth() {
        //used for testing purpose only
        $body = array(
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password')
        );

        $date = gmdate('D, d M Y H:i:s \G\M\T', time());

        $contentMd5 = base64_encode(md5(json_encode($body), true));
        $contentType = $this->mimeType['json'];
        $authorization = self::__authorization_header('post', $contentType, $date, config_item('x-sam-api-key'), 'v1/i/login', $contentMd5);

        $array = array(
            'date' => $date,
            'MD5' => $contentMd5,
            'Type' => $contentType,
            'auth' => $authorization,
            'resource' => 'v1/i/login',
            'verb' => 'post',
            'api-key' => config_item('x-sam-api-key')
        );


        $this->output->set_content_type('application/json');
        $this->output->set_output(json_encode($array));
    }

    function login() {

        $body = array(
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password')
        );

        $date = gmdate('D, d M Y H:i:s \G\M\T', time());        

        $contentMd5 = base64_encode(md5(json_encode($body), true));
        $contentType = $this->mimeType['json'];
        $authorization = self::__authorization_header('post', $contentType, $date, config_item('x-sam-api-key'), 'v1/i/login', $contentMd5);
        $url = config_item('api-server') . 'v1/i/login';
        
        $this->curl->http_header('Content-Type', $contentType);
        $this->curl->http_header('x-sam-api-key', config_item('x-sam-api-key'));
        $this->curl->http_header('Content-MD5', $contentMd5);
        $this->curl->http_header('Date', $date);
        $this->curl->http_header('Authorization', $authorization); 
        
        //We still want the response even if there is an error code over 400
        $this->curl->option(CURLOPT_FAILONERROR, FALSE);
        
        $login = $this->curl->simple_post($url, json_encode($body)); 
        
        //used to make some validation rules & setting the session data
        $check = json_decode($login);

        if ($check->{'status'} === false) {

            //there is an error in the login information
            echo $login;
            
        } else {

            //$this->session->set_userdata($login);
            if ($check->{'force_password'} === '1') {

                redirect('boffice/password');
                
            } else {
                
                $set_session = array(
                    'authenticated' => $check->{'authenticated'},
                    'id' => $check->{'id'},
                    'level' => $check->{'level'},
                    'name' => $check->{'name'},
                    'manager' => $check->{'is_manager'},
                    'department' => $check->{'department'},
                    'position' => $check->{'position'},
                    'force_password' => $check->{'force_password'}
                );
                $this->session->set_userdata($set_session);
                echo $login;
            }
        }
    }

    function test_schedule(){
        
        $params = array(
            'id' => '1',
            'manager' => '0',
            'department' => 'S.A.M',
            'level' => '1'
        );

        $date = gmdate('D, d M Y H:i:s \G\M\T', time());        

        $contentMd5 = base64_encode(md5(json_encode($params), true));
        $contentType = $this->mimeType['json'];
        $authorization = self::__authorization_header('post', $contentType, $date, config_item('x-sam-api-key'), 'v1/i/calls', $contentMd5);
        $url = config_item('api-server') . 'v1/i/calls';
        
        $this->curl->http_header('Content-Type', $contentType);
        $this->curl->http_header('x-sam-api-key', config_item('x-sam-api-key'));
        $this->curl->http_header('Content-MD5', $contentMd5);
        $this->curl->http_header('Date', $date);
        $this->curl->http_header('Authorization', $authorization); 
        
        //We still want the response even if there is an error code over 400
        $this->curl->option(CURLOPT_FAILONERROR, FALSE);
        
        $schedule = $this->curl->simple_post($url, json_encode($params)); 
        
        $this->output->set_content_type('application/json');
        $this->output->set_output($schedule);        
                        
    }
    
    function schedule() {

        
        $params = array(
            'id' => $this->id,
            'manager' => $this->manager,
            'department' => $this->department,
            'level' => $this->level
        );

        $date = gmdate('D, d M Y H:i:s \G\M\T', time());        

        $contentMd5 = base64_encode(md5(json_encode($params), true));
        $contentType = $this->mimeType['json'];
        $authorization = self::__authorization_header('post', $contentType, $date, config_item('x-sam-api-key'), 'v1/i/calls', $contentMd5);
        $url = config_item('api-server') . 'v1/i/calls';
        
        $this->curl->http_header('Content-Type', $contentType);
        $this->curl->http_header('x-sam-api-key', config_item('x-sam-api-key'));
        $this->curl->http_header('Content-MD5', $contentMd5);
        $this->curl->http_header('Date', $date);
        $this->curl->http_header('Authorization', $authorization); 
        
        //We still want the response even if there is an error code over 400
        $this->curl->option(CURLOPT_FAILONERROR, FALSE);
        
        $schedule = $this->curl->simple_post($url, json_encode($params)); 
                
        echo $schedule;
    }

    private $mimeType = array(
        'form' => 'application/x-www-form-urlencoded', //Form encoded data
        'xml' => 'application/xml',
        'multipart' => 'multipart/form-data',
        'json' => 'application/json',
        'text' => 'text/plain'
    );

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

    private function __authorization_header($verb, $contentType, $date, $apiKey, $canonicalizedResource, $contentMd5 = NULL) {
        
        isset($contentMd5) ? $contentMd5 : "/n";
        
        $message = $verb . "\n" . $contentMd5 . "\n" . $contentType . "\n" . $date . "\n" . $apiKey . "\n" . $canonicalizedResource;
        $sign = base64_encode(hash_hmac('sha1', utf8_encode($message), config_item('secret-key')));
        $authorization = "SAM " . config_item('x-sam-api-key') . ":" . $sign;
        
        return $authorization;
    }

}