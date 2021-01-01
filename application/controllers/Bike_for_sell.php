<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bike_for_sell extends CI_Controller {
	public function index()
	{
		$contents['cart_session'] = $this->session->userdata('cart_session');
		$template = array(
               'title' => 'MPK Bike_for_sell',
               'keywords' => 'MPK',
               'description' => 'MPK'
		  );
		  
		$template['content'] = $this->load->view('Bike_for_sell',$contents,TRUE);
		$this->load->view('template2',$template);
	
	}
}
