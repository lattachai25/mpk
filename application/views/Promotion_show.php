
<style>
span{
    color: #ff5e0d;
}
.brand_top{
    position: relative;
}
.text_top{
    margin-top:60px;
    position: absolute;
    padding-left:50px;
    font-size:18px;
    font-weight: bold;
}
.product{
    width:100%;
    min-height:800px;
    /* background-color:#f5f5f5; */
    padding-left:100px;
}
.text_title{
    margin-top:10px;
    font-size:15px;
    color:#333333;
    font-weight: bold;
}
.text_title2{
    margin-top:10px;
    font-size:15px;
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
.container {
  width: 240px;
  height: 240px;
  border:1px solid #bbbbbb;
  padding: 0px;
}

.brand{
  font-size:15px;
  color:#b8b8b8;

}
.text_title{
    font-size:30px;
    color:#ff5e0d;
}
.number{
    font-size:16px;
    color:#b8b8b8;
}
.procecut{
    font-size:16px;
    color:#747474;
}
.price{
    font-size:18px;
    color:#ff5e0d;
}
.detel{
    margin-top:60px;
    font-size:16px;
    color:#747474;
}
.box_num{
    margin-top:45px;
}

#horizon-slider ul li {
    width: 600px;
    height: 86% !important;
    float: left;
    display: inline;
    text-align: center;
    overflow: hidden;
    background-size: contain;
    background-repeat: no-repeat;
    position: relative;
    background-position: center;
}
.boxshop{margin-top:20px;}

.boxslidebar{
  width:100%;
    min-height:400px;
    background-color:#f5f5f5;
}

</style>


<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->where("promotion_product.id",$id);
$query = $this->db->get();
$pro= $query->row();
?>

<?php $id_category = $pro->category; ?>
<?php
$this->db->select("*");
$this->db->from("main_category");
$this->db->where("main_category.id",$id_category);
$query = $this->db->get();
$id_cate= $query->row();
?>

<?php $id_subcate = $pro->sub_category; ?>
<?php
$this->db->select("*");
$this->db->from("sub_category");
$this->db->where("sub_category.id",$id_subcate);
$query = $this->db->get();
$id_sub= $query->row();
?>

<?php $randomsub = $pro->sub_category?>

<?php
$this->db->select("*");
$this->db->from("promotion_product");
$this->db->order_by('id','RANDOM');
$this->db->where("promotion_product.sub_category",$randomsub);
$query = $this->db->get();
$random = $query->result();
?>



<div class="bg" style="margin-top:80px;"></div>
<div class="row">
<!-- top -->
<div class="brand_top">
<img src="<?php echo base_url();?>img/product/product_detel/top.png"width="100%" / >

</div>
<div class="text_top">
HOME / PRODUCT / <?php echo $id_cate->Name;?> / <span><?php echo $id_sub->name_subcategory;?></span>
</div>
<!-- top -->
<!-- Center --->
<div class="row">
<div class="product">

<div class="row">    
  <div class="col-7">
      <div
        class="horVerSlider"
        data-desktop="800"
        data-tabportrait="600"
        data-tablandscape="600"
        data-mobilelarge="375"
        data-mobilelandscape="500"
        data-mobileportrait="375"
      >

<!-- 
      <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $promos->img_slide;?>" style="width:100%" alt="" /> -->



        <div class="close"></div>
        <div class="vertical-wrapper">
          <div id="vertical-slider">
            <ul>
              <li
                data-image="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro->img1;?>"
              ></li>
              <li
                data-image="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro->img2;?>"
              ></li>
              <li
                data-image="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro->img3;?>"
              ></li>
              <li
              data-image="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro->img4;?>"
              ></li>

            </ul>
          </div>
        </div>
        <div class="horizon-wrapper">
          <div id="horizon-slider">
            <ul style="width: 7000px; height: 700px; left: 0px; top: 0px;">
              <li
                data-image="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro->img1;?>"
                class="ui-draggable"
              ></li>
              <li
              data-image="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro->img2;?>"                
              class="ui-draggable"
              ></li>
              <li
              data-image="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro->img3;?>"                
                class="ui-draggable"
              ></li>
              <li
              data-image="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $pro->img4;?>"                
                class="ui-draggable"
              ></li>
            </ul>
          </div>

        </div>
      </div>
  </div>
  <div class="col-4">
    <div class="del" style="margin-top:80px;">
      <div class="brand">BRAND</div>
      <div class="text_title"><?php echo $pro->name;?></div>
      <div class="number">ORDER CODE NO.<?php echo $pro->no_code;?></div>
      <div class="procecut"><s><?php echo $pro->discount_price;?> BAHT</s></div>
      <div class="price"><?php echo $pro->price;?> BAHT</div>

      <div class="detel">
      DESCRIPTION <br>
      <?php echo $pro->detail;?>
      </div>
  </div>  
  <div class="box_num">

      <div class="row">
          <div class="col-8">AVAILABLE</div>
          <div class="col-3">QUANTITY</div>
      </div>

      <div class="row">
          <div class="col-8">
          <img src="<?php echo base_url();?>img/product/product_detel/color.png"width="50%" alt="" >

          <div class="boxshop">
            <div class="4">
                <div class="row">
                <div class="col-1" style="border:1px solid #666666; color:#ff6634; padding:10px; margin-left:15px; text-align:center; padding-left:15px; padding-right:20px; margin-right:30px;">
                2
                </div>
                <div class="4" style="border:1px solid #ff6634; color:#ff6634; padding:10px;"> + ADD TO CART </div>
                </div>
            </div>
           
          </div>
          </div>
          <div class="col-3" style="text-align:center;"><?php echo $pro->quality;?></div>
      </div>

  </div>
</div>
</div>

    </div>
</div>

<img src="<?php echo base_url();?>img/product/product_detel/center.png"width="100%" alt="" >
<img src="<?php echo base_url();?>img/product/product_detel/barslide.png"width="100%" alt="" >

    <div class="boxslidebar">
      <div class="row">
        <div class="col-1">
            <div class="customNavigation">
            <a class="btn prev" style="margin-top:100px;float: right; margin-right: -20px;">
            <img src="<?php echo base_url();?>img/gallery/back_orange_slide.png"width="40px" alt="" >
            </a>
            </div>
        </div>
        <div class="col-10">
        <!-- row -->
        <div class="row">
            <div id="owl-demo" class="owl-carousel owl-theme">
            <?php foreach($random as $randoms): ?>
            <div class="item">
                <div class="col-12">
                <a href="<?php echo base_url();?>Promotion/view/<?php echo $randoms->id;?>">
                <div class="container">
                  <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $randoms->img1;?>" width="100%" style="object-fit: cover; width:237px; height:237px;" />
                </div>    
                    <div class="row">
                        <div class="col-12 text_title2"><?php echo $pro->name;?></div>
                        <div class="col-12" style="height:10px;"></div>
                        <div class="col-2 text_price1"><s>฿<?php echo $randoms->discount_price;?></s></div>
                        <div class="col-2 text_price2">฿<?php echo $randoms->price;?></div>
                        <div class="col-4"></div>
                        <div class="col-2">
                        <div class="card_2">
                        <img src="<?php echo base_url();?>img/promotion/cart.png" width="30px" style="margin-top:-15px;">
                        </div>
                        </div>
                    </div>
                  </a>  
                </div>
            </div>
            <?php endforeach; ?>
            </div>
        </div>
        <!-- row -->
        </div>
        <div class="col-1"> 
            <div class="customNavigation">
            <a class="btn next" style="margin-top:100px;float: left; margin-left: -16px;">
            <img src="<?php echo base_url();?>img/gallery/next_orange_slide.png" width="40px" >
            </a>
            </div>
        </div>
    </div>
  </div>
</div>
<!-- Center --->
<img src="<?php echo base_url();?>img/product/product_detel/footer.png" width="100%" >

<script>
$(document).ready(function() {
 
 var owl = $("#owl-demo");

 owl.owlCarousel({
     items : 5,
     itemsDesktop : [1000,5],
     itemsDesktopSmall : [900,5],
     itemsTablet: [600,5],
     itemsMobile : false,
     pagination: false,
     dots: false,
 });

 // Custom Navigation Events
 $(".next").click(function(){
   owl.trigger('owl.next');
 })
 $(".prev").click(function(){
   owl.trigger('owl.prev');
 })

});
</script>