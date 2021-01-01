<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News_idea extends CI_Controller {
	public function index()
	{
		$contents['cart_session'] = $this->session->userdata('cart_session');
		$template = array(
               'title' => 'MPK News',
               'keywords' => 'MPK',
               'description' => 'MPK'
		  );
		  
		$template['content'] = $this->load->view('News_idea',$contents,TRUE);
		$this->load->view('template2',$template);
	
	}
}
