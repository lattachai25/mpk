<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Select_show extends CI_Controller {
	public function index()
	{
		$contents['cart_session'] = $this->session->userdata('cart_session');
		$template = array(
               'title' => 'MPK Select_show',
               'keywords' => 'MPK',
               'description' => 'MPK'
		  );
		  
		$template['content'] = $this->load->view('Select_show',$contents,TRUE);
		$this->load->view('template2',$template);
	
	}
}
