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
  display:inline-block;
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
nav a {
    line-height: 40px !important;
}
nav ul ul {
    display: none;
    position: absolute;
    top: 50px !important;
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
                <li><a  style="color:black;">CATEGORY</a>
      
              <ul>
                <?php foreach($main_category as $main_categorys): ?>
                    <li><a href="<?php echo base_url();?>category/view/<?php echo $main_categorys->category_id;?>"><?php echo $main_categorys->Name;?></a></li>
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
            <li <?php if($this->uri->segment(1)=="Register"){echo 'class="active"';}?> style="margin: 0 0 0 7px; "><a  class='divMenu' href="<?php echo base_url('Register');?>">Register</a></li>
            <li><a class='divMenu' href="<?php echo base_url('Contact');?>"><i class="fas fa-map-marker-alt" onclick="
            this.style.Color = '#000'; 
            this.style.color = '#ff6634';
            <?php if($this->uri->segment(1)=="About"){echo "this.style.color = '#ff6634';";}?>
            "></i></a></li>
            <li class='hamberger' id="bt" onclick="toggle(this)"><img src="<?php echo base_url();?>/img/icon_menu/menu1_14.png" width="70px" /></li>
            
            <div class="col-12" style="display:none; position: absolute; z-index:9; margin-left:15px;" id="cont">
            
            <div class="row">
            <div class="col-8"></div>
            
            <div class="col-4" style="background-color:#fff;">



              <div class="col-12" style="margin-top:10px;">
              <span style="color:#ff6634; font-size:15px; text-align:left;">MPK CONCEPT-</span> The authorzed<br>import / distributing center of <br>superbikes' world leading brand<br>parts and accessories with fully<br>one stop service
              
              <div class="text_title" style="color:#ff6634; font-size:15px;"> QUICK INFO </div>
              </div>
              <div class="box_line">
              <div class="row" style="margin-top:5px;">
              <div class="col-1"><img src="<?php echo base_url();?>img/contact/location_orange.png" width="15px" alt=""/ ></div> 
              <div class="col-8">1097 Rama 3 Rd. <br>Chong Nonsi  Yannawa, <br>Bangkok 10120</div>
              </div>

              <div class="row" style="margin-top:10px;">
              <div class="col-1"> <img src="<?php echo base_url();?>img/contact/time_orange.png" width="15px" alt=""/ ></div> 
              <div class="col-8">Mon-Sat : 10am - 6.30pm</div>
              </div>

              <div class="row" style="margin-top:10px;">
              
              <div class="col-1"><img src="<?php echo base_url();?>img/contact/tel_orange.png" width="15px" alt=""/ ></div> 
              <div class="col-8">(+66)86-326-1730</div>
              </div>

              <div class="row" style="margin-top:10px;">
              
              <div class="col-1"><img src="<?php echo base_url();?>img/contact/mail_orange.png" width="15px" alt=""/ ></div> 
              <div class="col-8">mpkconcept.th@gmail.com</div>
              </div>


              <div class="row" style="margin-top:10px;">
              
              <div class="col-1"><img src="<?php echo base_url();?>img/contact/chat_orange.png" width="15px" alt=""/ ></div> 
              <div class="col-8">@mpkconcept</div>
              </div>
              <br>
              <br>

              </div>
              </div>
            </div>
          </div>
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

    function toggle(ele) {
        var cont = document.getElementById('cont');
        if (cont.style.display == 'block') {
            cont.style.display = 'none';

            document.getElementById(ele.id).value = 'Show DIV';
        }
        else {
            cont.style.display = 'block';
            document.getElementById(ele.id).value = 'Hide DIV';
        }
    }
</script>