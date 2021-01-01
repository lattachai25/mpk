<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.0/assets/owl.carousel.css">

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
  width:100%;
  height:250px;
  margin-left: 0px;
  padding: 1px;
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
.image2 {
  width: 204px;
  height:140px;
  object-fit:cover;
}

.overlay1 {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0px;
  right: 0;
  height: 56%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #f35a24;
}

.container1:hover .overlay1 {
  opacity: 0.8;
}



.overlay2 {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0px;
  right: 0;
  height: 56%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #f35a24;
}

.container2:hover .overlay2 {
  opacity: 0.8;
}

.overlay3 {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0px;
  right: 0;
  height: 56%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #f35a24;
}

.container3:hover .overlay3 {
  opacity: 0.8;
}


.overlay4 {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0px;
  right: 0;
  height: 56%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #f35a24;
}

.container4:hover .overlay4 {
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
<div class="row"> <!--  ROW --->
<div class="col-1"></div>
<div class="col-10">
<div class="top" style="min-height:800px; background-color:#000;">
<br><br>

<img src="<?php echo base_url();?>img/product/02_3-18-07-2020_bike-for-sell_02.png" width="100%" alt=""/>

<br>
<br>
<br>

<div class="row"> <!--  ROW --->
  <div class="col-1"></div>
  <div class="col-11">
  <section class="my-slide">
      <ul class="row owl-carousel owl-theme nav nav-tabs">
        <?php foreach($bike as $bikes): ?>
          <li class="owl-item">
            <div class="item-cat">
              <a data-toggle="tab" href="#home<?php echo $bikes->id; ?>">
                  <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img1;?>" width="100%" alt="" />
              </a>
            </div>  
          </li>    

        <?php endforeach; ?>

      </ul>
  </section> 
 
  </div>
  <div class="col-2"></div>
  <div class="col-6" style="font-size:20px; font-weight:bold; color:#fff; margin-top:-100px !important;">
  &nbsp; &nbsp;   01/<span>05</span><br>
  <img src="<?php echo base_url();?>img/product/bike/barslide_top.png" alt=""/>
  </div>
</div> <!--  ROW --->

</div> <!--- End col-10 ----->
</div> <!-- End TOP  -->
</div><!-- End ROW --->
<img src="<?php echo base_url();?>img/product/bike/02_3-18-07-2020_bike-for-sell_06.png"  width="100%" alt=""/>
<div class="container">


<div class="tab-content">
  <?php foreach($bike as $bikes): ?>

    <div id="home<?php echo $bikes->id;?>" class="tab-pane fade">
    <div class="row">
      <div class="boxcontent2" style="position:relative;">
      <img src="<?php echo base_url();?>img/product/bike/bg_boke.png" width="100%" alt=""/ >
      </div>
 <!-- boxcontent -->


 <div class="boxcontent" style="min-height:800px; position:absolute;">
 <div class="row" style="margin-top:115px;">
      <div class="col-3">


      <?php $id_model = $bikes->model; ?>
      <?php
        $this->db->select("*");
        $this->db->from("model");
        $this->db->where("model.id",$id_model);
        $query = $this->db->get();
        $model= $query->row();
        ?>

      <?php $id_brand = $bikes->brand; ?>
      <?php
      $this->db->select("*");
      $this->db->from("brand");
      $this->db->where("brand.id",$id_brand);
      $query = $this->db->get();
      $brand = $query->row();
      ?>



       <div class="text_right"><i><?php echo $model->name;?></i></div> 
       <div class="text_left"><i><?php echo $brand->name;?></i></div>
      </div>
        <!-- box scall-->
        <div class="col-8"> 
          <!-- row scall -->
          <div class="row">
            <div class="col-6">
                <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img1;?>" width="100%" style="margin-left:20px;" alt="" />
            </div>
            <div class="col-1"></div>
            <div class="col-5">
            <div class="row"><!---- row  ----->
              <div class="col-12">
                  <div class="text_title_product"> <?php echo $brand->name;?> <br> <?php echo $model->name;?> </div>
                  <div class="text_price_cut"> <s><?php echo $bikes->discount;?> BAHT</s> </div>
                  <div class="text_price"> <?php echo $bikes->prict;?> BAHT </div>
                  <br><br>
              </div> 
              <div class="col-11 csall_bar"> <!----  csall_bar  ----->
                        <p>
                          <div style="font-weight:bold; font-size:20px;">DESCRIPTION</div><br>
                          <?php echo $bikes->descripion;?>
                        </p>
              </div> <!---- End Row  ----->
            </div><!---- End csall_bar  ----->
            <div class="col-12"> <!---- col-12  ----->
              <div class="row">
                  <div class="col-9">
                    <div class="box_cart"> + ADD TO CART
                      <img src="<?php echo base_url();?>img/product/bike/cart.png" width="25px" alt=""/ >
                    </div>
                      <br><br>
                  </div> 
              </div>
              
            </div><!---- End col-12  ----->



            </div>
          </div>
          <!--End row scall -->
        </div>
        <!-- End box scall-->
        <div class="row"  style="width:100%; margin-top:-140px;">
          <div class="col-3"></div>
          <div class="col-9"><!--col-8-->
          <div class="row"> <!--row-->

          <!-- box gallery 1-->
          <div class="boximage col-3">
            <div class="container1">
              <a data-fancybox="gallery" href ="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img2;?>"> 
              <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img2;?>" width="100%"  class="image2"alt="" />
                <div class="overlay1">
                  <div class="text">FULL IMAGE</div>
                </div>
                </a>  
            </div>
          </div>
          <!-- box gallery 1-->

          <!-- box gallery 2-->
          <div class="boximage col-3">
            <div class="container2">
              <a data-fancybox="gallery" href ="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img3;?>"> 
              <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img3;?>" width="100%"  class="image2" alt="" />
                <div class="overlay2">
                  <div class="text">FULL IMAGE</div>
                </div>
                </a>  
            </div>
          </div>
          <!-- box gallery 2-->
          <!-- box gallery 3-->
          <div class="boximage col-3">
            <div class="container3">
              <a data-fancybox="gallery" href ="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img4;?>"> 
              <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img4;?>" width="100%"  class="image2"alt="" />
                <div class="overlay3">
                  <div class="text">FULL IMAGE</div>
                </div>
                </a>  
            </div>
          </div>
          <!-- box gallery 3-->
          <!-- box gallery 3-->
          <div class="boximage col-3">
            <div class="container4">
              <a data-fancybox="gallery" href ="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img5;?>"> 
              <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $bikes->img5;?>" width="100%"  class="image2" alt="" />
                <div class="overlay4">
                  <div class="text">FULL IMAGE</div>
                </div>
                </a>  
            </div>
          </div>
          <!-- box gallery 3-->

          </div><!-- end row -->

        </div><!-- end col-8 -->

        </div>


 </div>
 </div>
  
  



    </div>

    </div>
    <?php endforeach; ?>    
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.0/owl.carousel.min.js"></script>
<script>
$('.owl-carousel').owlCarousel({

    margin:5,
    nav:true,

    responsive:{
        0:{
            items:4
        },
        600:{
            items:4
        },
        1000:{
            items:4
        }
    }
   });
</script>