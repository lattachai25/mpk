<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
	<style>
	.bg_select{
		height:400px;
		background-image: url('<?php echo base_url();?>img/product/BG_Selectyourvehicle.png');
		background-repeat: no-repeat;
		background-size:cover;
		background-size:100% 100%;
	}
	.text_select{
		color:#ffff;
		text-align: center;
		font-size:35px;
		font-weight: 600;
	}
	
	#inputState{
		text-align:center;
		font-weight:bold;
		color:#ff6634;
		padding-left: 60px;
	}
	.bottom_searce{
		text-align:center;
		font-weight:bold;
		color:#fff;
		background:#ff6634;
	}
	.bottom_searce a{
		padding-top:7px;
		color:#fff;
	
	}
	.bar_item{
		width:100%;
		min-height:135px;
		background-image: url('<?php echo base_url();?>img/product/bar_top2.png');
		background-repeat: no-repeat;
		background-size:cover;
		background-size:100% 100%;
	}
	.textbrand{
		margin-top:20px;
		font-size:35px;
		text-align:center;
		font-weight:bold;
		color:#ff6634;
	}
	.textbrand_sub{
		margin-top:10px;
		font-size:18px;
		text-align:center;
		font-weight:bold;
		color:#666666;  
	}
	.text_bmw{
		margin-left:85px;
		margin-top:100px;
		font-size:18px;
		text-align:left;
		font-weight:bold;
		color:#666666;   
	}
	
	
	
	.container1 {
	  position: relative;
	  width: auto;
		height: 150px;
	  border:1px solid #bbbbbb;
	  padding-bottom: 0px;
	}
	
	.image {
	  display: block;
	  width: 100%;
	  background-size: cover;
	  margin-bottom: -15px;
	}
	
	.overlay {
	  position: absolute;
	  top: 0;
	  bottom: 0;
	  left: 0;
	  right: 0;
	  height: 100%;
	  width: 100%;
	  opacity: 0;
	  transition: .5s ease;
	  background-color: #ff5e0d;
	}
	
	.container1:hover .overlay {
	  opacity: 0.8;
	}
	
	.text {
	  color: white;
	  font-size: 20px;
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  -webkit-transform: translate(-50%, -50%);
	  -ms-transform: translate(-50%, -50%);
	  transform: translate(-50%, -50%);
	  text-align: center;
	  border:2px solid #fff;
	  padding:10px;
	  width:200px;
	}
	
	.show_top{
		width:150px;
		margin-top: -5px;
		margin-left: -5px;
		position: absolute;
		color:#FFF;
		font-size: 15px;
		font-weight: 700;
		background-image:url('<?php echo base_url();?>img/promotion/orange.png');
		background-repeat: no-repeat, repeat;
	}
	.show_top2{
		width:150px;
		margin-top: -5px;
		margin-left: -5px;
		position: absolute;
		color:#FFF;
		font-size: 15px;
		font-weight: 700;
		background-image:url('<?php echo base_url();?>img/promotion/red.png');
		background-repeat: no-repeat, repeat;
	}
	
	.show_top3{
		width:150px;
		margin-top: -5px;
		margin-left: -5px;
		position: absolute;
		color:#FFF;
		font-size: 15px;
		font-weight: 700;
		background-image:url('/asset/img/promotion/blue.png');
		background-repeat: no-repeat, repeat;
	}
	
	
	
	.text_title{
		margin-top:10px;
		font-size:17px;
		color:#000;
		font-weight: bold;
	}
	.text_price1{
	font-size:15px;
	color:#bbbbbb;
	font-weight: bold;
	}
	.text_price2{
	  padding-left:30px;
	  font-size:15px;
	  color:#ff5e0d;
	  font-weight: bold;
	}
	
	span{
	   color:#ff6633; 
	}
	
	.textmenu{
		font-size:14.5px;
	}
	.textmenu2{
		padding-left:25px;
		font-weight: 600;
		font-size:13.5px;
	}
	
	
	
	.sizemenu{
		color:#666666; 
		font-weight:bold; 
		padding-top:8px; 
		padding-bottom:8px;
	}
	.search{
		color:#ff6634;
		margin-top:25px;
	}
	
	.search_input{
	  margin-top:20px;
	  width:111%;
	  height:30px;  
	  border: none;
	  border-bottom: 2px solid #ff6634;
	  float:left;
	  margin-left: -13px;
	}
	.search_input:focus {
		outline: none;
	}
	.unline{
		width:100%;
		border-bottom:1px solid #000;
		margin-bottom:10px;
	}
	.text_cate{
	font-size:50px;
	color:#ff6634;
	}
	
	
	#nav a.active {
		font-size: 16px;
		font-weight: 100;
		color: #ffffff!important;
	}
	
	
	.tel{
		border:2px solid #979797; 
		background-color: #a3a3a3;
	}
	
	#nav a {
		padding: 8px 45px !important;
		margin: 8px 1px;
		padding: 8px 36px !important;
		margin: 0 10px;
		font-weight: 400;
		color: #2c3e50;
		text-decoration: none;
	}
	
	.menuside{
		color:#666666; 
		font-weight:bold; 
		margin-top:15px; 
		padding-top:8px; 
		padding-bottom:8px;
	}
	
	.active{
		color:#ff6634;
		font-weight:bold;
		background-color:#fff;
	}
	
	.dropdown-container {
	  display: none;
	  background-color: #fff;
	  padding-left: 8px;
	}
	
	.sidenav a, .dropdown-btn {
	  padding: 6px 8px 6px 16px;
	  text-decoration: none;
	  font-size: 15px;
	  color: #818181;
	  display: block;
	  border: none;
	  background: none;
	  width: 100%;
	  text-align: left;
	  cursor: pointer;
	  outline: none;
	}
	
.headDropdown{
	font-weight: 600; 
	font-size:medium; 
	color: #666666;
}

.dropdownMenu{
	color:gray;
	font-size: 14px;
}

.oneMenu{
	font-weight: 600; 
	font-size:medium; 
	color:#666666; 
	text-decoration: none!important; 
}

.image1{
		margin-top: 10px;
		padding-bottom: 20px;
		padding-right: 5px;
    padding-left: 5px;
    height: 150px;
    max-width: 100%;
}

	</style>
<body>
	

	
<?php
$this->db->select("*");
$this->db->from("brand");
$query = $this->db->get();
$brand = $query->result();
?>
<?php
$this->db->select("*");
$this->db->from("model");
$query = $this->db->get();
$model = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("year");
$query = $this->db->get();
$year = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("main_category");
$query = $this->db->get();
$category = $query->result();
?>

<?php
$this->db->select('promotion_product.*, brand.*');
$this->db->from('promotion_product');
$this->db->where("promotion_product.category",$id);
$this->db->join('brand', 'promotion_product.brand = brand.id');
// $this->db->join('model', 'promotion_product.model = model.id');
$query = $this->db->get();
$test = $query->row();
?>

<?php $id_brand = $test->brand; ?>
<?php $id_category = $test->category; ?>

<?php
$this->db->select("*");
$this->db->from("brand");
$this->db->where("brand.id",$id_brand);
$query = $this->db->get();
$brand1 = $query->row();
?>

<?php
$this->db->select("*");
$this->db->from("main_category");
$this->db->where("main_category.category_id",$id_category);
$query = $this->db->get();
$category1 = $query->row();
?>

<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->where("promotion_product.category",$id);

$query = $this->db->get();
$product = $query->result();
?>


<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->where("promotion_product.category",$id);

$query = $this->db->get();
$records = $query->num_rows();
?>

</body>
<div class="row" style="margin-top:120px;"></div>

<div class="container">

<div class="row">
	<div class="col-1"></div>
			<div class="col-10 bg_select">

			<div class="row">
			<div class="col-1"></div>
			<div class="col-10" style="margin-top:160px;"></div>
	</div>
	<div class="row" >
			<div class="col-3"></div>
			<div class="col-6 text_select"> SELECT YOUR BIKE  </div>
			<div class="col-3"></div>
	</div>
<br>
	<div class="row" >
	<div class="col-2"></div>
	<div class="col-8">

	<form action="<?php echo base_url();?>Show" method="post" enctype="multipart/form-data">
			<div class="form-row">
			<div class="form-group col-md-3">
					<select id="inputState" class="form-control" name="brand">
							<option selected> BRAND <i class="far fa-caret-circle-down"></i> </option>
							<?php foreach($brand as $brands): ?>
							<option value="<?php echo $brands->name;?>"><?php echo $brands->name;?></option>
							<?php endforeach; ?>
					</select>
					</div>

					<div class="form-group col-md-3">
					<select id="inputState" class="form-control" name="model">
							<option selected> MODEL <i class="far fa-caret-circle-down"></i></option>
							<?php foreach($model as $models): ?>
							<option value="<?php echo $models->name;?>"><?php echo $models->name;?></option>
							<?php endforeach; ?>
					</select>
					</div>

					<div class="form-group col-md-3">
					<select id="inputState" class="form-control" name="year">
							<option selected> YEAR <i class="far fa-caret-circle-down"></i></option>
							<?php foreach($year as $years): ?>
							<option value="<?php echo $years->name_year;?>"><?php echo $years->name_year;?></option>
							<?php endforeach; ?>
							
					</select>
					</div>

					<button type="submit" class="form-group col-md-2 bottom_searce">SEARCE</button>
			</div>
			</div>
		</form>
	</div>


			</div>
</div>


<!-- row min-height -->
<div class="container">
	<div class="row">
		<div class="col-12" style="background:#fff; height:200px;">
				<div class="row">
						<div class="col-4 text_bmw">
						HOME / CATEGORY / <?php echo $brand1->name; ?> /  <?php echo $category1->Name; ?>
							<div class="text_cate">
							<?php echo $category1->Name; ?>
							</div> 
						</div>   
						<div class="col-6" style="margin-top: 40px;">
							<img src="<?php echo base_url();?>img/product/bar_right.png"width="100%" alt="" />
						</div>
				</div>
		</div>
	</div>
</div>
<!-- barBMW -->
<div class="row" style="margin-top:50px;">
<div class="col-1"></div>
<div class="col-2">
<div class="row">
    <div class="col-12">

        <div class="row">
        <div class="col-12"> <br></div>        
        <div class="unline">
                <div class="row">  
                <div class="col-5" style="color:#ff6634; font-weight:bold; font-size:16px; ">FILTERS</div>
                <div class="col-7" style="color:#ff6634; font-weight:bold; font-size:12px; text-align: right;">RESET FILTERS</div>
                </div> 
            </div>
        </div>
        <div class="row" style="background:#000; font-weight:bold;color:#fff; padding-top:6px; padding-bottom:5px;"> 
            <div class="col-10 textmenu"> CATEGORY </div>
            <div class="col-1"> - </div>
		</div>
	</div>
<br>

<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >BRAKE SYSTEM</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#">BRAKE MASTER CYLINDER</a><br>
		<a class="dropdownMenu" href="#">CLUTCH MASTER CYLINDER</a><br>
		<a class="dropdownMenu" href="#">REAR BRAKE MASTER CYLINDER</a><br>
		<a class="dropdownMenu" href="#">FRONT CALIPER</a><br>
		<a class="dropdownMenu" href="#">REAR CALIPER</a><br>
		<a class="dropdownMenu" href="#">DISC BRAKE</a><br>
		<a class="dropdownMenu" href="#">BRAKE PAD</a><br>
		<a class="dropdownMenu" href="#">SWITCH</a><br>		
  </div>

  <button class="dropdown-btn">
<div class="row">
<div class="col-9" > <a class="oneMenu" href="">CARBON PARTS</a> </div>
</div>
</button>

<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >ENGINE & CLUTCH</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#">EXHAUST</a><br>
		<a class="dropdownMenu" href="#">FLUID TANK</a><br>
	</div>

<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" > GRIPS & HANDLEBAR</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#">EXHAUST</a><br>
		<a class="dropdownMenu" href="#">INDICATOR LIGHT</a><br>
	</div>

	<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >  MAINTENANCE & CARE</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#">MIRROR</a><br>
	</div>
	
	<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >PARTS & ACCESSORIES</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#"></a><br>
	</div>
	
	<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >PROTECTION</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#"></a><br>
	</div>
	
	<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >STEERING & SUSPENSION</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#"></a><br>
	</div>
	
	<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >TRANSMISSION</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#"></a><br>
	</div>
	
	<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >TRAN SIGNAL LIGHT</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#"></a><br>
	</div>
	
	<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >WHEELS</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#"></a><br>
	</div>
	
	<button class="dropdown-btn">
<div class="row">
<div class="col-9 headDropdown" >OTHER</div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container "  >
		<a class="dropdownMenu <?php if($this->uri->segment(1)==""){echo "active";}?>" href="#"></a><br>
	</div>
	
	<div class="col-12" style="background:#000; color:#fff; font-weight:bold; font-size:14px; padding-top:8px; padding-bottom:8px;">BRAND</div>
	<div class="col-12 input">
		<input type="text" class="search_input" name="search" width="48">
		<i class="fas fa-search search" style="margin-left:-20px; position: absolute; font-size:20px; z-index:1;"></i>
	</div>
</div>
</div>
 
<div class="col-8">
		<div class="row"><!-- row Bar -->
				<div class="col-2" style="margin-left: 20px;
				 color:#666666; font-size:14px; font-weight:bold; padding-top:60px;">  <?php echo $records; ?> ITEMS </div>
				<div class="col-10"> </div>
		</div><!-- row Bar -->



		<!-- ROW BOX -->
		<div class="row">
		<div class="col-1"></div>
		<div class="col-10">

	
		<div class="row">

		<?php foreach($product as $products): ?>						
				<div class="col-4">
					<!-- <a href="http://"> -->
				<br>
				<div class="container1">
				<center>
				<img class="image1" src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $products->img1; ?>" class="image" alt="" />                           
				</center>
				<!-- <div class="overlay">
					<div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
				</div> -->
				</div>
				<!-- </a>  -->
						
				<div class="row">
					<div class="col-12 text_title"><?php echo $products->name; ?></div>
					<div class="col-12" style="height:10px;"></div>
					<div class="col-3 text_price1"><s>฿<?php echo $products->price; ?></s></div>
					<div class="col-3 text_price2">฿<?php echo $products->discount_price; ?></div>
				<div class="col-5">
					<img src="<?php echo base_url();?>img/promotion/cart.png"  style="width:20px; float: right; margin-right: -20px; margin-top: 0px;" >                           
				</div>
									
				</div>
			</div>
		<?php endforeach; ?>									
		
		</div>
		</div>
    </div>


		<div class="row">
			<div class="col-4"></div>
				<div class="col-4">
						<br>
						<img src="<?php echo base_url();?>img/gallery/back_orange.png" width="10px" >
							&nbsp; &nbsp; 1 &nbsp; &nbsp; 2 &nbsp; &nbsp; 3 &nbsp; &nbsp; 4 &nbsp; &nbsp; 5 &nbsp; &nbsp; <span> 6 </span>&nbsp; &nbsp; 
						<img src="<?php echo base_url();?>img/gallery/next_orange.png"width="10px" >  
				</div>
				<div class="col-4"></div>     
		</div>        
		<br>            

</div>

    <!-- ROW BOX -->

       
</div>


</div>
</div><!-- row min-height -->


        <img src="<?php echo base_url();?>img/product/bat_footer.png" width="100%" alt=""/>  



</body>

<script>
/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}
</script>
<script src="bootstrap/scripts/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
</html>


