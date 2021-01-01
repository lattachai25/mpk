<style>
nav ul ul li {
    width: 175px !important;
    float: none;
    display: list-item;
    position: relative;
    background: #f7f7f7;
}
.active a,nav ul li ul li a {
  color:black;
}
a:hover{
  color:black;
}
.hamberger{
  display:none;
}
@media only screen and (max-width: 1150px) {
  .menu ul li {
    display:none;
  }
  .menu ul li.hamberger,.menu ul li.logo{
    width:auto;
  display:block;
}
.menu{
width:80%;
}
.menu ul{
  display: flex;
  justify-content:space-between;
  align-items: center;
}
}
</style>

<?php
$this->db->select("*");
$this->db->from("main_category");
$query = $this->db->get();
$main_category = $query->result();
?>


<div class="row"></div>
<nav class="navbar fixed-top" id="mainNav" >
<!-- <div class="col-1"></div> -->
<div class="menu" style="margin:0 auto;">
        <ul >
            <li class='logo'><img src="<?php echo base_url();?>img/icon_menu/MPK_logo-02.png" width="150" alt=""></li>
    
            <li style="margin-left:50px;"></li>
            <li class="active divMenu" ><a href="<?php echo base_url('Home');?>" style="color:#000;">HOME</a></li>

            <li <?php if($this->uri->segment(1)=="select_your_bike")
            {echo 'class="active"';}
            elseif ($this->uri->segment(1)=="category")
            {echo 'class="active"';}
            elseif ($this->uri->segment(1)=="bike_for_sell")
            {echo 'class="active"';}
            ?> ><a class='divMenu' href="">PRODUCT</a>
           
            <ul>
                <li><a  href="<?php echo base_url('select_your_bike');?>">SELECT YOUR BIKE</a></li>
                <li><a  style="color:black;" href="<?php echo base_url('category');?>">CATEGORY</a>
      
              <ul>
                <?php foreach($main_category as $main_categorys): ?>
                    <li><a href="<?php echo base_url('');?>"><?php echo $main_categorys->Name;?></a></li>
                <?php endforeach; ?>
              </ul>      
              
              </li>
                <li><a href="<?php echo base_url('bike_for_sell');?>">BIKE FOR SELL</a></li>
            </ul>
            </li>
 
            <li <?php if($this->uri->segment(1)=="Promotion"){echo 'class="active"';}?>><a class='divMenu' href="<?php echo base_url('Promotion');?>">PROMOTION</a></li>
            <li  <?php if($this->uri->segment(1)=="Service"){echo 'class="active"';}?>><a class='divMenu' href="<?php echo base_url('Service');?>">SERVICE</a></li>
            <!-- <li  <?php if($this->uri->segment(1)=="News"){echo 'class="active"';}?>><a href="<?php echo base_url('News');?>">NEWS</a></li> -->

            <li <?php if($this->uri->segment(1)=="News")
            {echo 'class="active"';}
            elseif ($this->uri->segment(1)=="News_idea")
            {echo 'class="active"';}
            ?> ><a class='divMenu' href="">NEWS</a>
           
            <ul>
                <li <?php if($this->uri->segment(1)=="News"){echo 'class="active"';}?> ><a href="<?php echo base_url('News');?>">NEWS & Update</a></li>
                <li <?php if($this->uri->segment(1)=="News_idea"){echo 'class="active"';}?> ><a href="<?php echo base_url('News_idea');?>">IDEA</a></li>
            </ul>
            </li>




            <li  <?php if($this->uri->segment(1)=="Gallery"){echo 'class="active"';}?>><a class='divMenu' href="<?php echo base_url('Gallery');?>">GALLERY</a></li>
            <li style="margin: 0 7px 0 0; "  <?php if($this->uri->segment(1)=="About"){echo 'class="active"';}?>><a class='divMenu' href="<?php echo base_url('About');?>">ABOUT</a></li>
            <li style="width:100px; ">
              <input type="text" class="search_input_top divMenu" name="search" style="width:100px; margin:0 0px -6px 0">
              <i class="fas fa-search search_top divMenu" style="margin-left:-20px; position: absolute; fone-size:20px; z-index:1; "></i>
            </li>
            <li style="margin: 0 0 0 7px; "><a  class='divMenu' href="<?php echo base_url('Register');?>">Register</a></li>
            <li><a class='divMenu' href="<?php echo base_url('Contact');?>"><i class="fas fa-map-marker-alt" onclick="
            this.style.Color = '#000'; 
            this.style.color = '#ff6634';
            <?php if($this->uri->segment(1)=="About"){echo "this.style.color = '#ff6634';";}?>
            "></i></a></li>
            <li class='hamberger' ><img src="<?php echo base_url();?>/img/icon_menu/menu1_14.png" width="70px" /></li>
        </ul>
</div>  
<!-- <div class="col-1"></div> -->
    </nav>


</div>

<script>

$(document).ready(function(){
  $(window).scroll(function(){
  	var scroll = $(window).scrollTop();
    $(".divMenu").hover(function(e){
          $(this).css("color",e.type === "mouseenter"?"#000":"#fff");
        })
	  if (scroll > 300) {
        $("#mainNav").css("background" , "#f7f7f7");  
        $("nav a").css("color","#000");
        $("nav ul li ul li a").css("color","#000");
        $(".active").css("color","#000");
        $(".search_input_top").css("border-color","#000");
        $(".search_input_top ~ i").css("color","#000");
        $(".divMenu").hover(function(e){
          $(this).css("color",e.type === "mouseenter"?"#000":"#000");
        })
        $(".search_input_top").css("color","#000");
	  }

	  else{
        $("nav a").css("color","#FFF");
        $(".active a").css("color","#000");
        $("nav ul li ul li a").css("color","#000");
        $(".search_input_top").css("border-color","#fff");
        $(".search_input_top").css("border-color","#fff");
        $(".search_input_top ~ i").css("color","#fff");
        $("#mainNav").css("background" , "transparent");
        $(".search_input_top").css("color","#fff");
        
	  }
  })
})
</script>