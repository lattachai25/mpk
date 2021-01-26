<style>
.bx-viewport, .bx-wrapper{
    position:relative;
    width:100%;
    height:auto!important;
    top:0;
    left:0;
}
.bx-wrapper .bx-controls-direction a {
    position: absolute;
    top: 50%;
    margin-top: -16px;
    outline: 0;
    width: 40px !important;
    height: 40px !important;
    text-indent: -9999px;
    z-index: 9999;
}
.bxslider, .bxslider li{
    height: 100% !important;
}
.bxslider li{
    background-repeat: no-repeat;
    background-position: top center;
    background-size: cover;
}
.bx-wrapper .bx-viewport{
    border: none !important;
}
.bx-wrapper {
    -moz-box-shadow: 0 0 0px #ccc !important;
    -webkit-box-shadow: 0 0 0px #ccc !important;
    box-shadow: 0 0 9px #ccc !important;
    border: 0px solid #fff !important;
    background: #fff !important;
}

.bx-wrapper .bx-prev {
    left: 22px;
    background: url(img/promotion/previous_black.png) no-repeat 6px -1px;
}
.bx-wrapper .bx-next {
    right: 10px;
    background: url(img/promotion/next_black.png) no-repeat 0px 5px;
}

.bx-wrapper {
    position: relative;
    margin-bottom: 0px!important;
    padding: 0;
    zoom: 1;
    -ms-touch-action: pan-y;
    touch-action: pan-y;
}
.bx-pager.bx-default-pager a.active, .bx-wrapper .bx-pager.bx-default-pager a:focus {
    background: #ff6634 !important;
}
.bx-pager.bx-default-pager a {
    color: #ff6634 !important;
    text-decoration: none;
    background-color: transparent;
}
.bx-wrapper .bx-pager.bx-default-pager a {
    background: #6660;
    text-indent: -9999px;
    display: block;
    width: 10px;
    height: 10px;
    margin: 0 5px;
    outline: 0;
    border: 2px solid;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

.container1 {
  position: relative; 
}

.image {
  
  /* width: -webkit-fill-available; */


	margin-top: 40px;
		padding-bottom: 20px;
		padding-right: 5px;
    padding-left: 5px;
    height: 150px;
    max-width: 100%;
  /* display: block;
  max-height: fit-content;
  margin-left: auto;
  margin-right: auto; */

}

img {
    max-width: 75%;
    height: auto;
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
  font-size: 12px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
  border:2px solid #fff;
  padding:10px 10px 10px 10px;
  width:auto; 
}

.show_top{
	width:150px;
	 margin-left: 0px;
	 margin-top:-1px;
    position: absolute;
    color:#FFF;
    font-size: 15px;
    font-weight: 700;
    background-image:url("<?php echo base_url();?>img/promotion/orange.png");
	background-repeat: no-repeat, repeat;

}
.show_top2{
    width:150px;
    margin-left: 0px;
    position: absolute;
    color:#FFF;
    font-size: 15px;
    font-weight: 700;
    background-image:url("<?php echo base_url();?>img/promotion/red.png");
    background-repeat: no-repeat, repeat;
}

.show_top3{
    width:150px;
    margin-left: 0px;
    position: absolute;
    color:#FFF;
    font-size: 15px;
    font-weight: 700;
    background-image:url("<?php echo base_url();?>img/promotion/blue.png");
    background-repeat: no-repeat, repeat;
}

.text_title{
    margin-top:10px;
    font-size:17px;
    color:#000;
    font-weight: bold;
    margin-left: -15px;
}

.text_price1{
font-size:17px;
color:#bbbbbb;
margin-left: -15px;
bottom: -10px;
}
.text_price2{
  padding-left:30px;
  font-size:17px;
  color:#ff5e0d;
  bottom: -10px;
}

span{
   color:#ff6633; 
}

.bg{
    margin-top:0px;
}

.edge1{
	width: auto;
	border:4px solid #ff6633;
	height: 220px;
	
}

.edge2{
	width: auto;
	border:4px solid red;
	height: 220px;
}

.edge3{
	width: auto;
	border:4px solid #0A3458;
	height: 220px;
}

.edge4{
	width: auto;
	height: 220px;
}


</style>
<?php
$this->db->select("*");
$this->db->from("promotion_slide");
$this->db->order_by('id','desc');
$this->db->where_in('status', 1);
$query = $this->db->get();
$promo = $query->result();
?>
<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->where("Type",1);
$this->db->where_in('status', 1);
$this->db->limit(5, 0); 
$this->db->order_by('id','desc');
$query = $this->db->get();
$pro = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->where("Type",2);
$this->db->where_in('status', 1);
$this->db->limit(5, 0); 
$this->db->order_by('id','desc');
$query = $this->db->get();
$pro_save = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->where("Type",3);
$this->db->where_in('status', 1);
$this->db->limit(5, 0); 
$this->db->order_by('id','desc');
$query = $this->db->get();
$pro_new = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->where("Type",4);
$this->db->where_in('status', 1);
$this->db->limit(9, 0); 
$this->db->order_by('id','desc');
$query = $this->db->get();
$pro_none = $query->result();
?>


<div class="bg" style="margin-top:120px;"></div>
<div class="container">

	<div >
		<div class="row">
			<div class="col-12">
			<img src="<?php echo base_url();?>img/promotion/2_01_02.png" style="width:100% !important;" alt=""/>
			<br><br>
				<div class="bxslider">
					<?php foreach($promo as $promos): ?>
					<div>
						<img src="<?php echo base_url();?>assets/uploads/img_promotion_slide/<?php echo $promos->img_slide;?>" style="width:100%" alt="" />
					</div>
					<?php endforeach; ?>  
				</div>
			<br><br>
				<img src="<?php echo base_url();?>img/promotion/bar_top.png" width="100%" alt=""/>
			</div>
		</div>
	</div>
	
	
	<div >
		<div class="row">
			<div class="col-12" style="min-height:500px;">
				<div class="row justify-content-center">
					<div class="col-12" style="min-height:500px; ">
	
					<div class="row">
						<div class="col-12" style="margin-top:30px; text-align: right; color:#999999; font-weight:700;"> <span>1</span> / 3 < | > </div>                   
						<?php foreach($pro as $pros): ?>
							<div class="col-3" >
							<a href="<?php echo base_url();?>Promotion/view/<?php echo $pros->id;?>">
							<br>
								<div class ="container1 edge1" >
									<div class="show_top"> &nbsp; &nbsp; HOT DEAL</div>
									<center >
									<img  class="image"  src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pros->img1;?>"  alt="" />
									</center>
									<div class="overlay">
										<div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
									</div>
								</div>
								</a> 
	
								<div class="row">
									<div class="col-12 text_title"><?php echo $pros->name;?></div>
									<div class="col-12" style="height:10px;"></div>
	
									<div class="col-3 text_price1"><s>฿<?php echo $pros->discount_price;?></s></div>
									<div class="col-3 text_price2">฿<?php echo $pros->price;?></div>
									<div class="col-6"><img src="<?php echo base_url();?>img/promotion/cart.png" style="width:30px; float: right; margin-right: -28px;"></div>
								</div>
								<br>
								<br>
							</div>
							<?php endforeach; ?>
	
							<?php foreach($pro_save as $pro_saves): ?>
							<div class="col-3">
							<a href="<?php base_url();?>Promotion/view/<?php echo $pro_saves->id;?>">
							<br>
								<div class="container1 edge2" >
									<div class="show_top2"> &nbsp; &nbsp; SAVE</div>
									<center class="image">
				
									<img  src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro_saves->img1;?>"  alt="" />
									</center>
									<div class="overlay">
										<div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
									</div>
								</div>
								</a>
	
								<div class="row">
									
									<div class="col-12 text_title"><?php echo $pro_saves->name;?></div>
									<div class="col-12" style="height:10px;"></div>
									
									<div class="col-3 text_price1"><s>฿<?php echo $pro_saves->discount_price;?></s></div>
									<div class="col-3 text_price2">฿<?php echo $pro_saves->price;?></div>
									<div class="col-6"><img src="<?php echo base_url();?>img/promotion/cart.png" style="width:30px; float: right; margin-right: -28px;"></div>
								</div> 
								<br>
								<br>
							</div>
							<?php endforeach; ?>
	
							<?php foreach($pro_new as $pro_news): ?>
							<div class="col-3">
							<a href="<?php base_url();?>Promotion/view/<?php echo $pro_news->id;?>">
					  
							<!-- <a href="{{ url('Promotion_show') }}"> --> 
							<br>
								<div class="container1 edge3">
									<div class="show_top3"> &nbsp; &nbsp; NEW</div>
									<center class="image">
									<img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro_news->img1;?>"   alt="" />
									</center>
									<div class="overlay">
										<div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
									</div>
								</div>
							</a>
							<div class="row">
									
									<div class="col-12 text_title"><?php echo $pro_news->name;?></div>
									<div class="col-12" style="height:10px;"></div>
									
									<div class="col-3 text_price1"><s>฿<?php echo $pro_news->discount_price;?></s></div>
									<div class="col-3 text_price2">฿<?php echo $pro_news->price;?></div>
									<div class="col-6"><img src="<?php echo base_url();?>img/promotion/cart.png" style="width:30px; float: right; margin-right: -28px;"></div>
								</div>
								<br>
								<br>
							</div>
							<?php endforeach; ?>
	
						<?php foreach($pro_none as $pro_nones): ?>
							<div class="col-3">
							<a href="<?php base_url();?>Promotion/view/<?php echo $pro_nones->id;?>">
	
							<!-- <a href="{{ url('Promotion_show') }}"> -->
							<br>
								<div class="container1 edge4" style="border:1px solid #bbbbbb;">
									
									<center class="image">
									<img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro_nones->img1;?>" alt="" />
									</center>
									<div class="overlay">
										<div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
									</div>
								</div>
						   </a> 
								<div class="row">
									<div class="col-12 text_title"><?php echo $pro_nones->name;?></div>
									<div class="col-12" style="height:10px;"></div>
									<div class="col-3 text_price1"><s>฿<?php echo $pro_nones->discount_price;?></s></div>
									<div class="col-3 text_price2">฿<?php echo $pro_nones->price;?></div>
									<div class="col-6"><img src="<?php echo base_url();?>img/promotion/cart.png" style="width:30px; float: right; margin-right: -28px;"></div>
								</div>
								<br>
								<br>
								
							</div>
							<?php endforeach; ?>
	
	
						</div>
					</div>
				</div>
			</div>
	</div>
	
	</div>
	
	<br><br>
	<div class="row">
	<div class="col-4"></div>
	<!-- <div class="col-4"><center> <img src="<?php echo base_url();?>img/promotion/poit.png" width="250px" alt=""/> </center></div> -->
	<div class="col-4"></div>
	</div>
	<br>
</div>


<img src="<?php echo base_url();?>img/promotion/03-13-06-2020_promotion_10.png" width="100%" alt=""/>


   <script>
        $('.bxslider').bxSlider({
        pager: true,
        boolean:true,
        
        });
  </script>
