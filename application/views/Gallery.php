<style>
.top_img{
    position:relative;
}
.slide_bar{
    padding-top: 20px;
    height:230px;
    background:#000;
    color:#fff;
}

div {margin: 0 auto}

.item img  {
      filter: gray;
      -webkit-filter: grayscale(1);
      -webkit-transition: all .0s ease-in-out;  
      background-color: #252525; 
    }

    .item img:hover {
    filter: none;
      -webkit-filter: grayscale(0);
      -webkit-transform: scale(1);
      display: inline-block;
    }

#owl-demo .item{
  width: 185px;
  border-left:1px solid #fff;
  border-right:1px solid #fff;
  padding: 0px 0px;
  margin: 0px;
  color: #FFF;
  -webkit-border-radius: 1px;
  -moz-border-radius: 1px;
  border-radius: 1px;
  text-align: center;
}

.customNavigation{
  text-align: center;
}

.customNavigation a{
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.slide_top_bg{
        padding-right:0px !important;
        padding-left: 0px !important;
        background-color: #252525;
}
    
.image_logo_show{
        filter: grayscale(100%);
        margin-top:2px;
        height:180px;
        width:180px;
        z-index: -1;
}

.image_logo_show:hover{
         filter: grayscale(0%);
        background-image: url('<?php echo base_url();?>img/gallery/box_03.png');
        background-repeat:no-repeat;

}

.owl-item{
    width: 185px !important;
}

.itembox{
    color:#fff;
    font-weight:bold;
    padding:10px;
    padding-left:10px;
    height:50px;
}

.itembox:hover{
    background-color:#ff6634;
}

.avction{
    background-color:#ff6634;
}

.container {
  position: relative;
  width: 100%;
  border:0px solid #bbbbbb;
  padding: 0px;
}

.image {
  display: block;
  width: 100%;
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

.container:hover .overlay {
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
    background-image: url(<?php echo base_url('img/gallery/box_03.png') ?>);
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
    background-image: url('../../img/promotion/red.png');
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
    background-image: url('../../img/promotion/blue.png');
    background-repeat: no-repeat, repeat;
}


.text_title{
    margin-top:10px;
    font-size:17px;
    color:#000;
    font-weight: bold;
}


.text_page{
    width:2px;
    font-size:18px;
    font-weight: bold;
}
span{
    color: #ff5e0d;
}


</style>
<?php
$this->db->select("*");
$this->db->from("gallery_img_head");
$query = $this->db->get();
$gallery = $query->row();
?>


<?php
$this->db->select("*");
$this->db->from("gallery_img_logo");
$query = $this->db->get();
$gallery2 = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("product_category");
$query = $this->db->get();
$product = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("model_category");
$query = $this->db->get();
$model = $query->result();
?>


<div class="bg" style="margin-top:100px;"></div>
    

<div class="col-10">   
    <!-- img_top -->
    <div class="top_img"> 
        <img src="<?php echo base_url();?>img/gallery/bar_top.png" width="50%" style="position:absolute;" alt=""/ >
        <img src="<?php echo base_url();?>assets/uploads/gallery_head/<?php echo $gallery->img;?>" width="100%" alt="" />
    </div>  


    <!-- img_top -->  
    <div class="slide_bar">
        <!-- div slide -->
        <div class="row">
        <div style="width:100%;">
                <div style="width:100%; margin-left:10px; display: inline-block;">
                    <div class="row"> <!--  row   -->

                        <div class="col-1" style="padding: 0px !important; margin-left: 188px !important;">
                            <div class="customNavigation">
                                <a class="btn prev" style="margin-top:70px; float:left;">
                                <img src="<?php echo base_url();?>img/gallery/back_orange_slide.png" width="40px" alt=""/ >
                                </a>
                            </div>
                        </div>
                        <div class="col-8" style="padding: 0px !important;">
                        
                            <div class="box_logo1" style="width:100%; display:inline-block; padding-right:0px; padding-left: 0px !important; padding-right: 0px !important;">
                                <div id="owl-demo" class="owl-carousel owl-theme">
                                <?php foreach($gallery2 as $gallery2s): ?>
                                    <div class="item">
                                    <img class="image_logo_show" src="<?php echo base_url();?>assets/uploads/gallery_logo/<?php echo $gallery2s->img_logo;?>" alt="" />
                                    </div>

                                <?php endforeach; ?>
                                <div class="item"><img class="image_logo_show" src="<?php echo base_url();?>img/gallery/icon_color/ducati.png" /></div>
                                </div>
                            </div> 
                    </div>
                    <div class="col-1" style="padding: 0px !important;">
                        <div class="customNavigation">
                            <a class="btn next" style="margin-top:70px; float:right;">
                                <img src="<?php echo base_url();?>img/gallery/next_orange_slide.png" width="40px" alt=""/ >
                            </a>
                        </div>
                    </div>   
                </div>

                </div>
        </div>        
        </div>
        <!-- div slide -->
    </div>

</div> 

<!-- div menu  -->
<div class="col-10">
<div class="row">

<style>
#linkimg{
    color:#fff; 
}
#linkimg a:link {
  text-decoration: none; 
}

</style>

    <!-- menu_left -->  
    <div class="col-3" style="min-height:600px; background:#000; margin-left:0px;">
        <div class="row">
        <?php foreach($model as $models): ?>
            
        <div class="col-12"> <a href="<?php echo base_url();?>Gallery" id="linkimg"> <div class="itembox"> &nbsp; &nbsp; <?php echo $models->name;?> </div> </a> </div>
            
            <!-- <div class="col-12 itembox avction"> &nbsp; &nbsp; S 1000 RR 2020 </div> -->

            <?php endforeach; ?>
        </div>
    </div>
    <!-- menu_left -->
    <!-- menu item show  -->
    <div class="col-9 itemshow" style="min-height:600px; background:#fff;">
    <br><br>
        <div class="row">

            <div class="col-12" style="min-height:600px; margin-left:40px;">
            <div class="row">
            <?php foreach($product as $products): ?>
            <div class="col-4">
                <a href="http://">
                        <br>
                    <div class="container">
                        <img src="<?php echo base_url();?>assets/uploads/product_category/<?php echo $products->name;?>"  width="40px" class="image" alt=""/ >
                        <div class="overlay"><div class="text">FULL IMAGE</div></div>
                    </div>
                </a> 
            </div>
            <?php endforeach; ?>
            </div>
            </div>
        </div>
      <div class="row" style="min-height:80px; margin-top:50px;">
        <div class="col-10">

            <!-- <div class="row">
                <div class="col-4"></div>
                    <div class="col-7">
                    <img src="<?php echo base_url();?>img/gallery/back_orange.png" width="10px" >
                     &nbsp; &nbsp; 1 &nbsp; &nbsp; 2 &nbsp; &nbsp; 3 &nbsp; &nbsp; 4 &nbsp; &nbsp; 5 &nbsp; &nbsp; <span> 6 </span>&nbsp; &nbsp; 
                     <img src="<?php echo base_url();?>img/gallery/next_orange.png" width="10px" >
                     </div>
                <div class="col-1"></div>     
            </div>         -->
        </div>
        <img src="<?php echo base_url();?>img/gallery/bat_footer.png" width="100%" >
        </div>
    </div>
    <!-- menu item show  -->
</div>
<!-- div menu  -->
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