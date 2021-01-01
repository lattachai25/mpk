<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {
	public function index()
	{
		$contents['cart_session'] = $this->session->userdata('cart_session');
		$template = array(
               'title' => 'MPK Product',
               'keywords' => 'MPK',
               'description' => 'MPK'
		  );
		  
		$template['content'] = $this->load->view('Product',$contents,TRUE);
		$this->load->view('template2',$template);
	
	}
}
