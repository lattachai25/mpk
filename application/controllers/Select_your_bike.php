<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Select_your_bike extends CI_Controller {


    public function __construct() {
        parent:: __construct();

        $this->load->helper('url');
        $this->load->model('Select_your_bike_model');
        $this->load->library("pagination");
    }

	public function index()
	{

    	$contents['cart_session'] = $this->session->userdata('cart_session');
		$template = array(
               'title' => 'MPK Select_your_bike',
               'keywords' => 'MPK',
               'description' => 'MPK'
		  );
        $template["base_url"] = base_url() . "select_your_bike";
        $template["total_rows"] = $this->Select_your_bike_model->get_count();
        $template["per_page"] = 15;
        $template["uri_segment"] = 3;

        $this->pagination->initialize($template);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $contents["links"] = $this->pagination->create_links();
        $contents['select_your_bike'] = $this->Select_your_bike_model->get_select_your_bike($template["per_page"], $page);
		$template['content'] = $this->load->view('Select_your_bike',$contents,TRUE);
        $this->load->view('template2',$template);

  }
  public function view($id=null){

	
	$contents['cart_session'] = $this->session->userdata('cart_session');
	$template=array(
		'title'   => 'MPK Promotion',
		'keywords' => 'MPK',
		'description' => 'MPK',
		'id' => $id
		);

	 $contents['id'] = $id;
	 $template['content'] = $this->load->view('Select_show',$contents,TRUE);
	 $this->load->view('template2',$template);
    }
    
public function view2($id=null){

	$contents['cart_session'] = $this->session->userdata('cart_session');
	$template=array(
		'title'   => 'MPK Promotion',
		'keywords' => 'MPK',
		'description' => 'MPK',
		'id' => $id
		);

	 $contents['id'] = $id;
	 $template['content'] = $this->load->view('Select_your_bike2',$contents,TRUE);
	 $this->load->view('template2',$template);
	}



}


