<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// session_start();
class Admin extends CI_Controller
{

  public function __construct() {
          parent:: __construct();

      }

     public function index()
     {

       if($this->session->userdata('logged_in'))
       {

       $data = array( 'title' => 'Administrator ::  ',
       						   'description' => "",
       						   'keyword' => '',
       						   'active'  =>'active',
       						   'head' =>   'Administrator',
       						   'content' => 'home_admin_view',
                      'lg'      =>  $this->uri->segment(1),
       						);
       $this->load->view('Template_admin',$data);

       }
       else
       {
         //If no session, redirect to login page
         redirect('./Login', 'refresh');
       }


      }

      public function logout()
      {
        $this->session->unset_userdata('logged_in');
        session_destroy();
        redirect('./Login', 'Refresh');
      }










}
