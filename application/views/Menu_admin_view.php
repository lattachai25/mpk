<style>
.circle {
  border-radius: 0%;
  width: 100%;
  height: auto;

  margin-left: 0px;
  /* width and height can be anything, as long as they're equal */
  margin-top: 25px;
  margin-bottom: 30px;
  position: relative;
}

.navbar-default {
    color:#ff6634; 
    background-color:#e2e0e1;
  
}

#page-wrapper {
    padding: 0 15px;
    min-height: 568px;
    background-color: #d2d2d2;}

a {
    color: #090909  !important;
    text-decoration: none;
    font-size: 14px;
}

a:hover {
    color: #090909 !important;
    text-decoration: underline;
}

</style>
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;">
    <div class="navbar-header" >
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<?php echo base_url($this->uri->segment(1).'/administrator');?>"  style="color:#ff6634 !important;">MPK Concept | Administrator </a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right" >

        <!-- /.dropdown -->
        <li class="dropdown" >
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">

                <li><a href="<?php echo base_url('/admin/logout');?>"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation" style="min-height:500px; " >
        <div class="sidebar-nav navbar-collapse"  >
            <ul class="nav" id="side-menu"  >
                <li class="sidebar-search" style="text-align:center;">
                    <img class='circle' src='<?php echo base_url();?>/assets/images/logo.png'>
                        <div style="color:#090909; " >
                            USERNAMES :  <font color='#ff6634'> <?php echo $this->session->userdata['logged_in']['username'];?> </font>
                        </div>
                </li>

                <li>
                    <a href="<?php echo base_url('administrator');?>"><i class="fa fa-home fa-fw"></i>&nbsp; HOME<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
                        <li>
                        <a href="<?php echo base_url('administrator/homeslide');?>">  <i class="fa fa-plus-circle"></i>&nbsp; Home Slide</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('administrator/homeplaylist');?>">  <i class="fa fa-plus-circle"></i>&nbsp; Home Playlist</a>
                        </li>
						<!-- <li>
                            <a href="<?php echo base_url('administrator/homebike');?>">  <i class="fa fa-plus-circle"></i>&nbsp; Home Bike</a>
                        </li> -->
                    </ul>    
                </li>
                
                <li>
                    <a href="#"><i class="glyphicon fa fa-plus-square"> </i>&nbsp; &nbsp; Product<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('administrator/product');?>"> <i class="fa fa-certificate"></i>&nbsp;Add Products</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('administrator/select_your_bike');?>"> <i class="fa fa-certificate"></i>&nbsp; Select Your Bike</a>
                        </li>

                        <li>
                        <a href="#"><i class="glyphicon fa fa-plus-square"> </i>&nbsp; Category<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo base_url('administrator/product1');?>">&nbsp; &nbsp;<i class="fa fa-wrench fa-fw"></i>&nbsp; Main Category</a>
                                </li>  
                                <li>
                                    <a href="<?php echo base_url('administrator/product1');?>">&nbsp; &nbsp;<i class="fa fa-wrench fa-fw"></i>&nbsp; Sub Category 1</a>
                                </li> 
                            </ul>   
                        </li>
                        <li>
                            <a href="<?php echo base_url('administrator/bike_for_sell');?>"> <i class="fa fa-certificate"></i>&nbsp; Bike for Sell</a>
                        </li>   
					</ul>    
				</li>
						    

                <li>
                <a href="#"><i class="fa fa-money"></i>&nbsp; &nbsp;Promotion<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('administrator/promotion_slide');?>"> <i class="fa fa-certificate"></i>&nbsp; Add Slide</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('administrator/promotion_product');?>"> <i class="fa fa-certificate"></i>&nbsp; Add Product</a>
                        </li>
					</ul>    
                </li> 
                
                
				<li>
					<a href="<?php echo base_url('administrator/service');?>"><i class="fa fa-cog fa-fw"></i>&nbsp; Service</a>
				</li>
	             
                <li>
                    <a href="#"><i class="glyphicon fa fa-fire fa-fw"> </i>&nbsp; News<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('administrator/news');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp;news & Update</a>
                        </li>

						<li>
                            <a href="<?php echo base_url('administrator/news_idea');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp; news Idea</a>
						</li>
  
					</ul>    
                </li> 


<<<<<<< HEAD
=======


>>>>>>> d65fce6fa0210019d3e61b0e2a671492c3918b92
                <li>
                    <a href="#"><i class="glyphicon fa fa-fire fa-fw"> </i>&nbsp; Gallery<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('administrator/product_category');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp;Add Gallery Product </a>
                        </li>

                       
						<li>
                            <a href="<?php echo base_url('administrator/gallery_img_head');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp; Images-Head</a>
						</li>
						<!-- <li>
                            <a href="<?php echo base_url('administrator/gallery_img_logo');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp; Gallery-Logo</a>
                        </li> -->
                        <li>
                        <a href="#"><i class="glyphicon fa fa-plus-square"> </i>&nbsp; Edit Brand And Model<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo base_url('administrator/gallery_img_logo');?>">&nbsp; &nbsp;<i class="fa fa-wrench fa-fw"></i>&nbsp; Main Brand</a>
                                </li>  
                                <li>
                                    <a href="<?php echo base_url('administrator/model_category');?>">&nbsp; &nbsp;<i class="fa fa-wrench fa-fw"></i>&nbsp; Product Model</a>
                                </li>  
                            </ul>   
                        </li>   
					</ul>    
                </li> 

                <li>
                    <a href="<?php echo base_url('administrator/about');?>"><i class="fa fa-arrows fa-fw"></i>&nbsp; About</a>
                </li>

                <li>
                    <a href="<?php echo base_url('administrator/contactus');?>"><i class="glyphicon glyphicon-map-marker"></i>&nbsp; &nbsp;Contact Us</a>
                </li> 

                <!-- <li>
                    <a href="<?php echo base_url('administrator/popup');?>"><i class="fa fa-camera-retro fa-fw"></i>&nbsp; &nbsp;Pop-Up Button</a>
                </li> -->

                <li>
                    <a href="<?php echo base_url('administrator/social');?>"><i class="fa fa-camera-retro fa-fw"></i>&nbsp; Social</a>
                </li>
                <li>
                    <a href="#"><i class="glyphicon fa fa-fire fa-fw"> </i>&nbsp; Edit System<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('administrator/main_category');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp; Main Category</a>
                        </li>
                       
						<li>
                            <a href="<?php echo base_url('administrator/sub_category');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp; Sub Category</a>
						</li>
						<li>
                            <a href="<?php echo base_url('administrator/color');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp; Color</a>
                        </li>
                        <!-- <li>
                            <a href="<?php echo base_url('administrator/color');?>"> <i class="fa fa-picture-o fa-fw"></i>&nbsp; Color</a>
                        </li> -->
					</ul>    
                </li> 
			</ul>    	   
		</div>
	</div>

</nav>
