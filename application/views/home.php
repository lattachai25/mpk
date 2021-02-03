<?php
$this->db->select("*");
$this->db->from("homeslide");
$query = $this->db->get();
$slide = $query->result();
?>


<?php
$this->db->select("*");
$this->db->from("homeplaylist");
$query = $this->db->get();
$homeplaylist = $query->row();
?>
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
$this->db->from("bike_for_sell");
$query = $this->db->get();
$bike = $query->result();
?>


<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->where("Type",1);
$this->db->limit(3, 0); 
$this->db->order_by('id','desc');
$query = $this->db->get();
$pro = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("new_arrivals");
$this->db->where("status",1);
$this->db->limit(3, 0); 
$this->db->order_by('new_arrivals_id','desc');
$query = $this->db->get();
$new_arrival = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("best_seller");
$this->db->where("status",1);
$this->db->limit(3, 0); 
$this->db->order_by('best_seller_id','desc');
$query = $this->db->get();
$best_seller = $query->result();
?>




<style>
.bx-wrapper {
  -moz-box-shadow: none;
  -webkit-box-shadow: none;
  box-shadow: none;
  border: 0;
  height: auto;
}

.bx-controls-direction{
    width: 50%;
}

.bx-wrapper .bx-controls-direction a {
    position: absolute;
    top: 80%;
    margin-top: 0px;
    outline: 0;
    width: 146px;
    height: 55px;
    background-color: red;
    text-indent: -9999px;
    z-index: 9999;
}


.bx-wrapper .bx-prev {
    left: 134px;
    width: 50px;
    height: 50px;
    background: url(img/home/prev.png) no-repeat   !important;
    /* background-size: 100% 100%; */
}
.bx-wrapper .bx-next {
    right: 113px;
    background: url(img/home/next.png) no-repeat  !important;
    /* background-size: 100% 100%; */
}

.bx-wrapper {
    position: relative;
    margin-bottom: 0px !important;
    padding: 0;
    zoom: 1;
    -ms-touch-action: pan-y;
    touch-action: pan-y;
}
.text4{
    color:#000;
    font-size: 18px;
    font-weight: bold;
}

.text4:hover{
    color:#ff6634;
    font-size: 18px;
    font-weight: bold;
}


.bg_select{
    height:500px;
    background-image:url('<?php echo base_url();?>img/product/BG_Selectyourvehicle.png');
    background-repeat: no-repeat;
    background-size:cover;
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
    border-radius:5px;
}
.bottom_searce a{
    padding-top:7px;
    color:#fff;
    border-radius:5px;
}
.bg_play{
    margin-top: -250px !important;
    width:100%;
    height:700px;
    background-image:url('<?php echo base_url();?>assets/uploads/img_bg/<?php echo $homeplaylist->img_bg; ?>');
    background-repeat: no-repeat;
    background-size:cover;
    background-size:100% 100%;
    
}
.text_vdo{
    color:#fff;
    text-align:left;
    font-weight:bold;
    font-size:34px;
    margin-top: 20px;
}
.play_vdo{
   margin-top:20%;
}
.icon_play{
    color:#fff;
    text-align:center;
    font-weight:300;
    font-size:18px;
}



.box_best{
  width: 290px;
  border:1px solid #bbbbbb;
  object-fit: cover;
}

.container2 {
position: relative;
  width: auto;
  height: 190px;
  padding: 0px;
}
.image {
  display: block;
  width: 300px;
  height:300px;
  background-size: cover;
}

.overlay {
    position: absolute;
    top: -20px;
    bottom: 0;
    left: 0px;
    right: 0px;
    height: 254px;
    width: 105%;
    opacity: 0;
    transition: .5s ease;
    background-color: #ff5e0d;
}

.container2:hover .overlay {
  opacity: 0.8;
}

.text {
  color: white;
  font-size: 13px;
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  text-align: center;
  border:2px solid #fff;
  padding:10px;
  width:120px;
}

.text_title{
    margin-top:10px;
    font-size:12px;
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

.text_price3{
  padding-left:13px;
  font-size:14px;
  color:#000;
  font-weight: bold;
}

.text_price4{
  padding-left:13px;
  font-size:12px;
  color:#000;
  font-weight: bold;
}



span{
  font-size:12px;
  color:#000; 
  font-weight: 500;
}

.bgcar{
    background: #fff;
    min-height: 300px;
}
.bg_slide{
    z-index:-9;
    position: relative;
    width: 100%;
    overflow:hidden;
}
.text_slide{
    left:9%;
    top: 50%;
    font-size:5vw;
    font-weight:bold;
    color:#fff;
    position: absolute;
}
.box_o{
    border:1px solid #fff;
    padding-left:20px;
    padding-right:20px;
    left:9%;
    top: 65%;
    font-size:2vw;
    font-weight:bold;
    color:#ff5e0d;
    position: absolute;
}


.image1{
    margin-top: -20px;
    /* padding-bottom: 20px; */
    /* padding-right: 5px; */
    /* padding-left: 5px; */
    /* height: 150px; */
    max-width: 105%;
}

</style>
 <!-- slide -->



<!-- DB All Start -->


<!-- DB All End -->
    <div class="bxslider">

        <?php foreach($slide as $slides): ?>

        <div>
        <div class="text_slide"><?php echo $slides->content;?></div>
        <div class="box_o">Explore more</div>
        <div class="bg_slide">
        <img src="<?php echo base_url();?>assets/uploads/img_slide/<?php echo $slides->img_slide;?>" width="100%">
        </div>
        </div>

        <?php endforeach; ?>


    </div>

 <!-- slide -->
<!-- Our Concept -->    
    <div class="row" style="background:#f5f5f5;">
    <div class="col-12">
        <div class="row" style="margin-top:80px; margin-bottom:80px;">
            <div class="col-1"></div>
            <div class="col-10">
      <img src="<?php echo base_url();?>img/home/MPK_Design_001_OK_150820_1A_create_10.png" width="100%" alt=""/>
               <br>
               <br>
               <br>
               <br>               
                <div class="row">

                    <div class="col-3">
                        <div class="row">
                            <div class="col-5"><img style="float: right; margin-right: -20px;" src="<?php echo base_url();?>img/home/back_icon/BestQuality.png" width="50px" alt=""></div>
                            <div class="col-7 text4">BEST <br> QUALITY</div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="row">
                            <div class="col-5"><img style="float: right; margin-right: -20px;" src="<?php echo base_url();?>img/home/back_icon/Service.png" width="50px" alt=""></div>
                            <div class="col-7 text4">EXPERTISE <br> SERVICE</div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="row">
                            <div class="col-5"><img style="float: right; margin-right: -20px;" src="<?php echo base_url();?>img/home/back_icon/Guarantee.png" width="50px" alt=""></div>
                            <div class="col-7 text4">AUTHENTIC <br> GUARANTEE</div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="row">
                            <div class="col-5"><img style="float: right; margin-right: -20px;" src="<?php echo base_url();?>img/home/back_icon/SH_01.png" width="50px" alt=""></div>
                            <div class="col-7 text4">SHIPPING <br> WORLDWIDE</div>
                        </div>
                    </div>
           
                </div>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
</div>
<!-- Our Concept -->    

<!-- SELECT YOUR BIKE -->    

<div class="col-12">
<form action="<?php echo base_url();?>Show" method="post" enctype="multipart/form-data">
    <div class="row">
    <div class="col-1"> </div>
        <div class="col-10 bg_select">
            <div class="row">
                <div class="col-12" style="margin-top:160px;"></div>
            </div>
            <div class="row" style="margin-top:50px;">
                <div class="col-3"></div>
                <div class="col-6 text_select"> SELECT YOUR BIKE  </div>
                <div class="col-3"></div>
            </div>
            <div class="row" style="margin-top:30px;">
                <div class="col-2"></div>
                <div class="col-8">
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <select id="inputState" class="form-control">
                                <option selected> BRAND <i class="far fa-caret-circle-down"></i> </option>
                                <?php foreach($brand as $brands): ?>
                                     <option><?php echo $brands->name;?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <select id="inputState" class="form-control">
                                <option selected> MODEL <i class="far fa-caret-circle-down"></i></option>
                                <?php foreach($model as $models): ?>
                                    <option><?php echo $models->name;?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <select id="inputState" class="form-control">
                                <option selected> YEAR <i class="far fa-caret-circle-down"></i></option>
                                <?php foreach($year as $years): ?>
                                    <option><?php echo $years->name_year;?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <button type="submit" class="form-group col-md-2 bottom_searce">SEARCE</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>
<!-- SELECT YOUR BIKE --> 
<!-- Best Seller -->
<div class="row">
	<div class="col-1"></div>
	<div class="col-10">
		<img src="<?php echo base_url();?>img/home/MPK_Design_001_OK_150820_1A_create_12.png" width="100%" height="100px" alt=""/>
	</div>
	<div class="col-1"></div>
</div>
<!-- Best Seller -->
 <!-- play -->
 <div class="row">
 
<div class="col-1"></div>
<div class="col-10">
	<div class="bg_play">
		<div class="row play_vdo">
			<div class="col-2"></div>
			<div class="col-8" style="margin-top:260px;">
				<div class="row">
					<div class="col-8 text_vdo">
						<?php echo $homeplaylist->Model; ?> Review
					</div>
					<div class="col-4 icon_play">
						<center>
						PLAY
						<a data-fancybox href=" <?php echo $homeplaylist->link_vdo; ?>">
							<img src="<?php echo base_url();?>img/home/Play_icon.png" width="100px;"/>                
						</a>
						</center>
					</div>
				</div>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
</div>
 </div>
 <!-- play -->
 <div class="row">
 <div class="col-1"></div>
<div class="col-10" style="position:relative; margin-top:-150px;">
 <img src="<?php echo base_url();?>img/home/carbar.png" width="101%"/>
    <div class="row bgcar">
            <!-- ROW BOX -->

        <div class="col-12">
        <div class="row">

        <?php foreach($new_arrival as $new_arrivals): ?>
                        <div class="col-3">
                        <div class="col-11">
                        <a href="<?php base_url();?>new_arrivals/view/<?php echo $new_arrivals->id;?>">
                        <br>
                            <div class="container2">
                                <center>
                                <img src="<?php echo base_url();?>assets/uploads/new_arrivals/<?php echo $new_arrivals->img1;?>" class="image1" alt="" />
                                </center>
                                <div class="overlay">
                                    <div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
                                </div>
                            </div>
                        </a> 

                        </div>    
                        </div>
        <?php endforeach; ?>




        </div>
        <br>
        <center>
        <!-- <img src="<?php echo base_url();?>img/home/poit.png" alt=""> -->
        </center>
        </div>
        <div class="col-1"></div>
    </div>
    <!-- ROW BOX -->
</div>
</div>
<!-- play -->
<!-- New Arrivals -->
<div class="row">
<div class="col-1"></div>
<div class="col-10" style="min-height:475px;">
    <img src="<?php echo base_url();?>img/home/MPK_Design_001_OK_150820_1A_create_16.png" width="100%" alt=""/>
    <br><br>
    <!-- ROW BOX -->
    <div class="row">
        <div class="col-12">
        <div class="row">
        <?php foreach($best_seller as $best_sellers): ?>
                        <div class="col-3">
                        <div class="col-12">
                        <a href="<?php base_url();?>best_seller/view/<?php echo $best_sellers->best_seller_id;?>">
                        <br>
                            <div class="container2">
                                <center>
                                <img src="<?php echo base_url();?>assets/uploads/best_seller/<?php echo $best_sellers->img1;?>" class="image1" alt="" />
                                </center>
                                <div class="overlay">
                                    <div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
                                </div>
                            </div>
                        </a> 

                        </div>    
                        </div>
        <?php endforeach; ?>

        </div>
        <br>
        </div>
    </div>
    <!-- ROW BOX -->

    </div>
</div>
<!-- New Arrivals -->

<!-- bike for sell -->
<div class="col-12">
<div class="row" style=" width:100%; height:auto; ">
<div class="col-1"></div>
<div class="col-10" style="padding:0;">
    <div class="top" style="height:auto; width:100%;  background-color:#000;">
    <img src="<?php echo base_url();?>img/home/MPK_Design_001_OK_150820_1A_create_19.png" width="100%" alt=""/>

        <div class="row">
            <!-- <div class="col-1"></div> -->
            <div class="col-12">
                <div id="owl-demo" class="owl-carousel owl-theme">
                <?php foreach($bike as $bikes): ?>
                <a href="<?php base_url();?>bike_for_sell">
                <div class="item"><img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img1;?>" width="100%" /></div>
                </a>
                <?php endforeach; ?>
                </div>

            </div>
            <div class="col-2"></div>
            <div class="col-6" style="font-size:20px; font-weight:bold; color:#fff;">
            &nbsp; &nbsp;   01/05<br>
            <img src="<?php echo base_url();?>img/product/bike/barslide_top.png" width="50%" />
            </div>
        </div>

    </div>
</div>
</div>

</div>
<!-- bike for sell -->
<div class="row">
<img src="<?php echo base_url();?>img/home/MPK_Design_001_OK_150820_1A_create_21.png" width="100%" alt=""/>
</div>

    <script>
        $('.bxslider').bxSlider({
        pager: false,
        boolean:false,
        mode: 'fade',
        auto: true,
        pause: 100000
     });
    </script>
<script>
$(document).ready(function() {
 var owl = $("#owl-demo");
 owl.owlCarousel({
     items : 4,
     itemsDesktop : [1000,4],
     itemsDesktopSmall : [900,4],
     itemsTablet: [600,4],
     itemsMobile : false,
 });


});
</script>
