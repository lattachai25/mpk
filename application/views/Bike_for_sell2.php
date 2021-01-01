
<style>

.boxcontent{
  width:100%;
} 

.text_title_product{
  color:#ff6634;
  font-size:25px;
  font-weight:bold;
}
.text_price_cut{
  color:#666666;
  font-size:15px;
  font-weight:bold;
}
.text_price{
  color:#ff6634;
  font-size:20px;
  font-weight:bold;
}
.text_left{
  display:block;
    -webkit-transform: rotate(-90deg); 
    -moz-transform: rotate(-90deg); 
    transform: rotate(-90deg); 
    position:relative;
    white-space:nowrap;
    color:#FFF;
    bottom:0px;
    font-size:100px;
    font-weight:bold;
    min-height:100px;
    margin-top: 31px;
    margin-right: 95px;
}
.text_right{
  display:block;
    -webkit-transform: rotate(-90deg); 
    -moz-transform: rotate(-90deg); 
    transform: rotate(-90deg); 
    position:relative;
    white-space:nowrap;
    color:#fff;
    font-size:50px;
    font-weight:bold;
    min-height:100px;
    margin-left: 158px;
    margin-top: 488px;
}
.csall_bar{
  width:350px;
  height:280px;
  overflow: auto;
  border-top:1px solid #e0e0e0;
  border-bottom:1px solid #e0e0e0;
}

.box_cart{
  margin-left:-20px;
  margin-top:50px;
  font-size:13px;
  padding:15px;
  border:1px solid #ff6634;
  font-weight:bold;
  color: #ff6634;
}

.img{
    position: relative;
    width: 100%;
    padding-right: 0px;
    padding-left: 0px;
}

.boximage{
  width:24%;
  height:250px;
  display: inline-block;
}


.container {
  position: relative;
  width: 100%;
}

.image {
  display: block;
  width: 287px;
  height: auto;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 13px;
  right: 0;
  height: %;
  width: 287px;
  opacity: 0;
  transition: .5s ease;
  background-color: #f35a24;
}

.container:hover .overlay {
  opacity: 0.8;
}

.text {
  width:200px;
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
}

span{
  color:#ff6634;
  font-size:20px;
  font-weight:bold;
}

</style>
<?php
$this->db->select("*");
$this->db->from("bike_for_sell");
$query = $this->db->get();
$bike = $query->result();
?>
<div class="bg" style="margin-top:120px;"></div>
<div class="row">
<div class="col-1"></div>
<div class="col-10">
<div class="top" style="min-height:700px; background-color:#000;">
<br><br>

<img src="<?php echo base_url();?>img/product/02_3-18-07-2020_bike-for-sell_02.png" width="100%" alt=""/>

<br>
<br>
<br>

<div class="row">
  <div class="col-1"></div>
  <div class="col-11">
      <div id="owl-demo" class="owl-carousel owl-theme">
      <?php foreach($bike as $bikes): ?>
        <a data-toggle="tab" href="#menu<?php echo $bikes->id; ?>">
        <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img1;?>" width="100%" alt="" />
        </a>
      <?php endforeach; ?>
      
      
      <img src="<?php echo base_url();?>img/product/bike/Bike_02.png" width="100%" alt=""/>
      <img src="<?php echo base_url();?>img/product/bike/Bike_03.png" width="100%" alt=""/>
      <img src="<?php echo base_url();?>img/product/bike/Bike_04.png" width="100%" alt=""/>
  
      </div>
  </div>
  <div class="col-2"></div>
  <div class="col-6" style="font-size:20px; font-weight:bold; color:#fff;">
  &nbsp; &nbsp;   01/<span>05</span><br>

  <img src="<?php echo base_url();?>img/product/bike/barslide_top.png" alt=""/>

  </div>
</div>

</div>
<!-- row  -->
<div class="row">
  <div class="boxcontent2" style="position:relative;">

  <img src="<?php echo base_url();?>img/product/bike/bg_boke.png" width="100%" alt=""/ >

  </div>

    <!-- boxcontent -->
    <div class="boxcontent" style="min-height:800px; position:absolute;">
        <!-- box -->
        <div class="row" style="margin-top:115px;">
        <div class="col-3">
            <div class="text_right"><i>PANIGALE V4S 2018</i></div>
            <div class="text_left"><i>DUCATI</i></div>
        </div>
        <!-- box scall-->
        <div class="col-8"> 
        <!-- row scall -->
              <div class="row">
                  <div class="col-6">
                  <?php foreach($bike as $bikes): ?>
                    <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img1;?>" width="100%" style="margin-left:20px;" alt="" />
                  <?php endforeach; ?>
                  </div>
                  <div class="col-1"></div>
                  <div class="col-5">
                    <div class="row">
                      <div class="col-12">
                        <div class="text_title_product"> DUCATI <br> PANIGALE V4S 2018 </div>
                        <div class="text_price_cut"> <s>990,000 BAHT</s> </div>
                        <div class="text_price"> 899,999.00 BAHT </div>
                        <br><br>
                      </div> 
                      <div class="col-11 csall_bar">
                        <p>
                          <div style="font-weight:bold; font-size:20px;">DESCRIPTION</div><br>
                          <div style="font-size:18px; font-family:'RSU'; font-weight:bold">
                          Panigale V4S ปี 2018 V4S มือสองพร้อมท่อ Full Akrapovic <br>
                          สภาพสวยเนี๊ยบเหมือนเพิ่งออกจากศูนย์พร้อมของแต่ง <br>
                          วิ่งน้อยมากแค่ 2,542 km แถมประกันชั้น 1<br>
                          </div>
                          <br>
                          <div style="color:#ff6634; font-weight:bold; font-size:20px; font-family:'RSU';">  
                          SALE จาก 990,000฿ เหลือเพียง 899,999฿
                          </div>
                          <br>
                          <div style="font-size:18px; font-family:'RSU'; font-weight:bold">                
                          คุ้มมากมีประกันชั้น 1 (หมด 30/7/2020 FPG) <br>
                          รถศูนย์ ไม่มีประวัติ ล้ม ชน แปะ มั่นใจตรวจสอบได้ <br>
                          ราคาพิเศษมาพร้อมของแต่งติดรถแบรนด์แท้เท่านั้น <br>
                          <br>
                          &nbsp; &nbsp; &nbsp;  - ท่อ Full Akrapovic ของแท้  <br>
                          &nbsp; &nbsp; &nbsp;  - ท้ายสั้นพร้อมไฟเลี้ยว Nrc racing <br>
                          &nbsp; &nbsp; &nbsp;  - ปิดใต้ถัง Evotech <br>
                          &nbsp; &nbsp; &nbsp;  - ชุดแต่งบังหม้อน้ำ Evotech <br>
                          &nbsp; &nbsp; &nbsp;  - กันล้มหน้า Evotech<br>
                            <br>
                          </div>
                        </p>
                      </div> 

                    </div>
            <div class="col-12">
              <div class="row">
                  <div class="col-8">
                    <div class="box_cart"> + ADD TO CART
                      <img src="<?php echo base_url();?>img/product/bike/cart.png" width="25px" alt=""/ >
                    </div>
                      <br><br>
                  </div> 
              </div>
            </div>
                  </div>

              </div>
            <!-- row scall -->

              </div>
        </div>
        <!-- box scall -->
        <div class="row">
          <div class="col-3"></div>
          <div class="col-8">
<div class="row">
                                  
<?php foreach($bike as $bikes): ?>
            <div class="boximage col-3">
              <div class="container">
              <a data-fancybox="gallery" href ="<?php echo base_url('img/product/bike/2.png'); ?>"> 
              <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img2;?>" width="100%" class="image" alt="" />
                <div class="overlay">
                  <div class="text">FULL IMAGE</div>
                </div>
                </a>  
              </div>
            </div>

            <div class="boximage col-3">
              <div class="container">
              <a data-fancybox="gallery" href ="<?php echo base_url('img/product/bike/2.png'); ?>"> 
              <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img3;?>" width="100%" class="image" alt="" />
                <div class="overlay">
                  <div class="text">FULL IMAGE</div>
                </div>
                </a>  
              </div>
            </div>

            <div class="boximage col-3">
              <div class="container">
              <a data-fancybox="gallery" href ="<?php echo base_url('img/product/bike/2.png'); ?>"> 
              <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img4;?>" width="100%" class="image" alt="" />
                <div class="overlay">
                  <div class="text">FULL IMAGE</div>
                </div>
                </a>  
              </div>
            </div>

            <div class="boximage col-3">
              <div class="container">
              <a data-fancybox="gallery" href ="<?php echo base_url('img/product/bike/2.png'); ?>"> 
              <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img5;?>" width="100%" class="image" alt="" />
                <div class="overlay">
                  <div class="text">FULL IMAGE</div>
                </div>
                </a>  
              </div>
            </div>
<?php endforeach; ?>
</div>


  <!-- box -->
    </div>
    <!-- boxcontent -->
    
  </div>
<!-- row  -->
</div>


</div>
</div>
<img src="<?php echo base_url();?>img/product/bike/02_3-18-07-2020_bike-for-sell_06.png"  width="10%" alt=""/>



<div class="container">

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home1">Home</a></li>
    <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
    <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
  </ul>

  <div class="tab-content">
    <div id="home1" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>




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