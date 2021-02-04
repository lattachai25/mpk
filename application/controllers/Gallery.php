<?php
defined('BASEPATH') OR exit('No direct script access allowed');

// function __construct() { 
// 	parent::__construct(); 
	 
// 	$this->load->library('pagination'); 
// 	$this->load->model('post'); 
// 	$this->perPage = 10; 
// } 

class Gallery extends CI_Controller {
	public function index()
	{
		$contents['cart_session'] = $this->session->userdata('cart_session');
		$template = array(
               'title' => 'MPK Gallery',
               'keywords' => 'MPK',
               'description' => 'MPK'
		  );
		  
		$template['content'] = $this->load->view('Gallery',$contents,TRUE);
		$this->load->view('template2',$template);
	
	}

	public function view($id=null){
		$contents['cart_session'] = $this->session->userdata('cart_session');
		$template=array(
			'title'   => 'MPK Gallery',
			'keywords' => 'MPK',
			'description' => 'MPK Gallery',
			'id' => $id
			);
	
		$contents['id'] = $id;
		$template['content'] = $this->load->view('Gallery_show',$contents,TRUE);
		$this->load->view('template2',$template);
		}
}
