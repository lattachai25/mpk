<style>
.text_title2{
    color:#ff6634;
    font-family:'helvetica';
    font-weight:bold;
    font-size:30px;
    margin-top:50px;
}

#text_name{
    color:#FFF;
    font-family:'helvetica';
    font-size:18px;
	
}

.input_box{
	width:113%;
    height:40px;
    background-color:#e2e0e1;
}

.input_box_address{
	width:100%;
    height:40px;
    background-color:#e2e0e1;
}

.input_box_log{
	width:150%;
    height:40px;
    background-color:#e2e0e1;
}

.input_top:focus {
  -webkit-box-shadow: none;
  box-shadow: none;
  outline: none;
}
</style>
<div class="container">

<div class="row" style="margin-top:120px;">
		<img src="<?php echo base_url();?>img/register/register_02.png" width="100%">	
		<div style="width: 100%; min-height:700px; background-image: url(img/register/adsa.png); background-repeat: no-repeat;background-size:cover;">
					<form action="action_page.php">
						<div class="row">
							<div class="col-6">
						<div style="margin-left: 35px; margin-right: 0px !important;">
								<div class="text_title2"> &nbsp; CREATE AN ACCOUNT</div>
							<div class="col-12" style="margin-top:50px;">
								<div class="row">
									<div class="col-6" style="margin-left:-15px" >
									<div id="text_name">NAME</div>
									<input type="text" name="name" class="input_box">
									</div>

									<div class="col-6">
									<div id="text_name">SURNAME</div>
									<input type="text" name="surname" class="input_box">
									</div>
								</div>
							</div>
						



							<div class="col-12">
							<br>
							<div id="text_name">ADDRESS</div>
							<input type="text" name="email" class="input_box_address">
							
							<input type="text" name="email" style="margin-top:10px;" class="input_box_address">
							</div>


							<div class="col-12" style="margin-top:4.5%;">
							<div class="row">

								<div class="col-6" style="margin-left:-15px" >
								<div id="text_name">TEL</div>
								<input type="text"  name="email" class="input_box">
								</div>


								<div class="col-6">
								<div id="text_name">E-MAIL</div>
								<input type="text" name="email" class="input_box">
								</div>

							</div>
							</div>

							<div class="col-12" style="margin-top:4.5%;">
								<div class="row">

									<div class="col-6" style="margin-left:-15px" >
									<div id="text_name">PASSWORD</div>
									<input type="text" name="email" class="input_box">
									</div>

								</div>
							</div>
						</div>	
						</div>
                  
							<div style="margin-left: 0px !important; margin-right: 0px !important;"><center><img src="<?php echo base_url();?>img/register/centerAA.png" style="margin-left: 44px;"></center></div>

							<div class="col-5">
					
								<div class="col-12"> 
								
									<div class="row">
										

										<div class="col-9" style="margin-left: 8px;">
										<div class="col-12 text_title2" style="margin-top:48px;">LOG IN</div>	
										<div class="col-12" style="margin-top:50px;">
									
										<div id="text_name" style="color:#fff;">E-MAIL</div>
										<input type="text" name="email" class="input_box_log">
										</div>
										<div class="col-12" style="margin-top:7%;">
							
										<div id="text_name" style="color:#fff;">PASSWORD</div>
										<input type="text" name="email" class="input_box_log">
										</div>

										<div class="col-12" style="margin-top:5%;">
                                        <img type="submit" src="<?php echo base_url();?>img/register/login.png" width="150%" alt=""/>
										</div>
										
										<div class="col-12" style="margin-top:15%; margin-bottom:5%;"> 

                                        <img type="submit" src="<?php echo base_url();?>img/register/register_04.gif" width="150%" alt=""/>
										</div>

										<div class="col-12">
                                        <img type="submit" src="<?php echo base_url();?>img/register/facebook.png" width="150%" alt=""/>

										</div>

										<div class="col-12" style="margin-top:5%;">
                                        <img type="submit" src="<?php echo base_url();?>img/register/google.png" width="150%" alt=""/>
										</div>



										</div>
					
									</div>
							    </div>





							</div><!--- col-4 ---->



						</div>	
						<form>
				</div>	


        <img src="<?php echo base_url()?>img/register/barcenter.png" width="100%" alt=""/>
	</div>
</div>