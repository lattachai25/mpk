<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class administrator extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
	}

	public function index()
	{
	echo	$this->session->userdata('username');
		$data = array( 'title' => 'Administrator ::   ',
								   'description' => "",
								   'keyword' => '',
								   'head' =>   '',
								   'content' => 'home_admin_view',
								  // 'queryPublic' => $this->pub->get_about_add()

								);

		$this->load->view('Template_admin',$data);
		}

function statusDis($value)
{
	if($value === 'เปิด' || $value === ''){


		  return "<center><img src='".base_url()."assets/uploads/icon_status_green.png'></center>";
	}else{

		return "<center><img src='".base_url()."assets/uploads/icon_status_red.png'></center>";

	}
}


		function items()
		{
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table('items')

			->order_by('id','title','description')
			->set_subject('items')
			->display_as('title','Title')
			->display_as('description','Description');

				// $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
				// $crud->set_field_upload('name_img','assets/uploads/intro');
				$output = $crud->render();
				$this->_example_output($output);
		}


		function about()
		{
				$crud = new grocery_CRUD();
				$crud->set_theme("bootstrap");
				$crud->set_table('about')
	
				->order_by('id','id')
				->display_as('img','img')
				->display_as('img_top','Images Top')
				->display_as('content','content ')
				->display_as('img_people','Images People')
				->display_as('people_name','ชื่อ')
				->display_as('img_center_left','รูปภาพซ้าย')
				->display_as('content_center_left','รายละเอียดซ้าย')
				->display_as('img_center_right','รูปภาพขาว')
				->display_as('content_center_right','รายละเอียดขวา')
				->display_as('people_detel','รายละเอียด');
	
				$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
				$crud->set_field_upload('img','assets/uploads/img_about');
				$crud->set_field_upload('img_top','assets/uploads/img_about');
				$crud->set_field_upload('img_people','assets/uploads/img_about');
				$crud->set_field_upload('img_center_left','assets/uploads/img_about');
				$crud->set_field_upload('img_center_right','assets/uploads/img_about');
				$crud->set_field_upload('img_people','assets/uploads/img_about');
				$output = $crud->render();
				$this->_example_output($output);
			}


		public function _example_output($output = null)
		{
			$this->load->view('example.php',$output);
		}


		function homeslide(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("homeslide")
			->order_by('id','id')
			->display_as('img_slide','img_slide')
			->display_as('content','Content')
			->display_as('date',' Day');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img_slide','assets/uploads/img_slide');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function homeplaylist(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("homeplaylist")
			->order_by('id','id')
			->display_as('link_vdo', 'link_vdo')
			->display_as('img_bg',' img_bg')
			->display_as('Model',' Model')
			->display_as('date',' Day');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img_bg','assets/uploads/img_bg');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function homebike(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("homebike")
			->order_by('id','id')		
			->display_as('img_logo','img_logo')
			->display_as('date',' Day');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img_logo','assets/uploads/img_logo');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function service(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("service")
			->order_by('id','id')		
			->display_as('img','img Show')
			->display_as('text','text')
			->display_as('date',' Day');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img','assets/uploads/img_service');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function social(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("social")
			->order_by('id','id')
			->display_as('link','link')		
			->display_as('img','img')
			->display_as('date',' Day');
	
			// $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img','assets/uploads/img_social');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function promotion_slide(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("promotion_slide")
			->order_by('id','id')
			->display_as('img_slide','Images Slide')
			->display_as('content','content');
			$crud->order_by('id','desc');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img_slide','assets/uploads/img_promotion_slide');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function promotion_product(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("promotion_product")
			->order_by('id','id')
			->display_as('img1','Size 222 x 226 px .PNG')
			->display_as('img2','Size 222 x 226 px .PNG')
			->display_as('img3','Size 222 x 226 px .PNG')
			->display_as('img4','Size 222 x 226 px .PNG')
			->display_as('type','Promotion Name')
			->display_as('category','Category')
			->display_as('sub_category','Sub Category')

			->display_as('brand','Brand')	
			->display_as('name','Name product')
			->display_as('price','price')
			->display_as('discount_price','discount Price')	
			->display_as('detail','detail')
			->display_as('color','color')
			->display_as('quality','Quality')
			->display_as('date',' date')
			->display_as('datetime',' datetime');
			$crud->order_by('id','desc');
	

			$crud->set_relation('type','product_status','name');
			$crud->set_relation('brand','brand','name');
			$crud->set_relation('color','color','name_color');
			$crud->set_relation('category','main_category','name');
			$crud->set_relation('sub_category','sub_category','name_subcategory');


			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img1','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img2','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img3','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img4','assets/uploads/img_promotion_product');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function popup(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("popup")
			->order_by('id','id')
			->display_as('img','img')
			->display_as('link','link')	
			->display_as('detail','detail')	
			->display_as('date',' Day');
	
			// $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img','assets/uploads/img_popup');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function news(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("news")
			->order_by('id','desc')
			->display_as('date',' Day')
			->display_as('title','Title')
			->display_as('title_show',' Title Show')
			->display_as('img','img');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img','assets/uploads/img_news');
			$output = $crud->render();
			$this->_example_output($output);
		}

		function news_idea(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("news_idea")
			->order_by('id','desc')
			->display_as('date',' Day')
			->display_as('title','Title')
			->display_as('title_show',' Title Show')
			->display_as('img','img');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img','assets/uploads/img_news_idea');
			$output = $crud->render();
			$this->_example_output($output);
		}





		function contactus(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("contactus")
			->order_by('id','id')
			->display_as('map_url',' map_url')
			->display_as('content_link',' content_link')
			->display_as('date',' Day');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			// $crud->set_field_upload('img-popup','assets/uploads/img-popup');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function gallery(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("gallery")
			->order_by('id','id')
			->display_as('img_product',' img_product')
			->display_as('date',' Day');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img_product','assets/uploads/img_gallery');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		// function gallery_category(){
		// 	$crud = new grocery_CRUD();
		// 	$crud->set_theme("bootstrap");
		// 	$crud->set_table("gallery_category")
		// 	->order_by('id','id')
		// 	->display_as('date',' Day');
	
		// 	// $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
		// 	// $crud->set_field_upload('img-gallery','assets/uploads/img-gallery');
			
		// 	$output = $crud->render();
		// 	$this->_example_output($output);
		// }

		function gallery_img_head(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("gallery_img_head")
			->order_by('id','id')
			->display_as('img','img')
			->display_as('date',' Day');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img','assets/uploads/gallery_head');
			
			$output = $crud->render();
			$this->_example_output($output);
		}

		function gallery_img_logo(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("gallery_img_logo")
			->order_by('id','id')
			->display_as('img_logo',' LOGO')
			->display_as('name_brand',' Name Brand');
	
			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img_logo','assets/uploads/gallery_logo');
			
			$output = $crud->render();
			$this->_example_output($output);
		}		

		function main_category(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("main_category")
			->order_by('id','id')
			->display_as('name','Name');
	
			// $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			// $crud->set_field_upload('img_logo','assets/uploads/gallery_logo');
			
			$output = $crud->render();
			$this->_example_output($output);
		}	
		function sub_category(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("sub_category")
			->order_by('id','id')
			->display_as('name_subcategory	','Name');
	
			// $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			// $crud->set_field_upload('img_logo','assets/uploads/gallery_logo');
			
			$output = $crud->render();
			$this->_example_output($output);
		}	
		function model_category(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("model_category")
			->order_by('id','id')
			->display_as('name','Name Model');
	
			// $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			// $crud->set_field_upload('img_logo','assets/uploads/gallery_logo');
			
			$output = $crud->render();
			$this->_example_output($output);
		}	

		function product_category(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_subject('Gallery Products');
			
			$crud->set_table("product_category")
			->order_by('id','id')
			->display_as('name_subcategory	','Name')
			->display_as('name','images')
			->display_as('description','description')
			->display_as('id_brand_category','brand_category')
			->display_as('id_model_category','model_category')
			->display_as('date','date');


			

			$crud->set_relation('id_brand_category','gallery_img_logo','name_brand');
			$crud->set_relation('id_model_category','model_category','name');

			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('name','assets/uploads/product_category');
			
			$output = $crud->render();
			$this->_example_output($output);
		}	

		function product(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_subject('Products');
			
			$crud->set_table("product")
			->order_by('id','id')
			->display_as('Image_product1','Images1')
			->display_as('Image_product2','Images2')
			->display_as('Image_product3','Images3')
			->display_as('Image_product4','Images4')
			->display_as('Prict','Prict')
			->display_as('Discount','Discount')
			->display_as('Brand','Brand')
			->display_as('Detail','Detail')
			->display_as('name_color','Color')
			->display_as('name_size','Size')
			->display_as('name_year','year')
			->display_as('Prict','Prict')
			->display_as('description','description')
			->display_as('Type','Product Status ')
			->display_as('StartDate','StartDate')
			->display_as('EndDate','EndDate')

			->display_as('date','date');


			

			// $crud->set_relation('id','main_Category','name');
			// $crud->set_relation('id','sub_category','name');
			$crud->set_relation('name_color','color','name_color');
			$crud->set_relation('name_year','year','name_year');
			$crud->set_relation('name_size','Size_product','name_size');
			$crud->set_relation('name','model_category','name');
			$crud->set_relation('Type','product_status','name');
			$crud->set_relation('main_category','main_category','name');
			$crud->set_relation('name_subcategory','sub_category','name_subcategory');
			$crud->set_relation('Brand','brand','name');

			$crud->field_type('Status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('Image_product1','assets/uploads/products');
			$crud->set_field_upload('Image_product2','assets/uploads/products');
			$crud->set_field_upload('Image_product3','assets/uploads/products');
			$crud->set_field_upload('Image_product4','assets/uploads/products');
			$output = $crud->render();
			$this->_example_output($output);
		}	


		function bike_for_sell(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("bike_for_sell")
			->order_by('id','id')
			->display_as('img1','Size 222 x 226 px .PNG')
			->display_as('img2','Size 222 x 226 px .PNG')
			->display_as('img3','Size 222 x 226 px .PNG')
			->display_as('img4','Size 222 x 226 px .PNG')
			->display_as('img5','Size 222 x 226 px .PNG')
			->display_as('category','Category')
			->display_as('sub_category','Sub Category')

			->display_as('brand','Brand')	
			->display_as('name','Name product')
			->display_as('price','price')
			->display_as('discount_price','discount Price')	
			->display_as('detail','detail')
			->display_as('color','color')
			->display_as('quality','Quality')
			->display_as('date',' date')
			->display_as('datetime',' datetime');
			$crud->order_by('id','desc');
	

			$crud->set_relation('brand','brand','name');
			$crud->set_relation('model','model','name');
			
			// $crud->set_relation('category','main_category','name');
			// $crud->set_relation('sub_category','sub_category','name_subcategory');


			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img1','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img2','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img3','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img4','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img5','assets/uploads/img_promotion_product');
			
			$output = $crud->render();
			$this->_example_output($output);
		}


		function select_your_bike(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("select_your_bike")
			->order_by('id','id')
			->display_as('name_product','Name Product')
			->display_as('img1','img 1 Size 222 x 226 px .PNG')
			->display_as('img2','img 2 Size 222 x 226 px .PNG')
			->display_as('img3','img 3 Size 222 x 226 px .PNG')
			->display_as('img4','img 4 Size 222 x 226 px .PNG')
			->display_as('img5','img 5 Size 222 x 226 px .PNG')
			->display_as('category','Category')
			->display_as('sub_category','Sub Category')


			->display_as('name','Name product')

			->display_as('price','price')
			->display_as('discount','Discount')	
			->display_as('detail','Detail')
			->display_as('color','color')
			->display_as('quality','Quality')
			->display_as('date',' date')
			->display_as('datetime',' datetime');
			$crud->order_by('id','desc');
	
			$crud->set_relation('model','model','name');
			$crud->set_relation('name_color','color','name_color');
			$crud->set_relation('name_year','year','name_year');
			$crud->set_relation('category','main_category','name');
			$crud->set_relation('sub_category','sub_category','name_subcategory');


			$crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			$crud->set_field_upload('img1','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img2','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img3','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img4','assets/uploads/img_promotion_product');
			$crud->set_field_upload('img5','assets/uploads/img_promotion_product');
			
			$output = $crud->render();
			$this->_example_output($output);
		}


		function color(){
			$crud = new grocery_CRUD();
			$crud->set_theme("bootstrap");
			$crud->set_table("color")
			->order_by('id','id')
			->display_as('name_color','color');
	
			// $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive'));
			// $crud->set_field_upload('img_logo','assets/uploads/gallery_logo');
			
			$output = $crud->render();
			$this->_example_output($output);
		}	








}





