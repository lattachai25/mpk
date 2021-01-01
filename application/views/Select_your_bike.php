<!DOCTYPE html>
<html>

<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

<style>
.bg_select{
    height:500px;
    background-image:url('<?php echo base_url();?>img/product/BG_Selectyourvehicle.png');
    background-repeat: no-repeat;
    background-size:cover;
    background-size:100% 100%;
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
}
.bottom_searce a{
    padding-top:7px;
    color:#fff;
}
.bar_item{
    width:100%;
    min-height:180px;
    background-image:url('<?php echo base_url();?>img/product/bar_top2.png');
    background-repeat: no-repeat;
    background-size:100% 100%;
}
.textbrand{
    margin-top:0px;
    font-size:35px;
    text-align:center;
    font-weight:bold;
    color:#ff6634;
}
.textbrand_sub{
    margin-top:10px;
    font-size:18px;
    text-align:center;
    font-weight:bold;
    color:#666666;  
}
.text_bmw{
    margin-left:100px;
    margin-top:100px;
    font-size:18px;
    text-align:left;
    font-weight:bold;
    color:#666666;   
}



.container {
  position: relative;
  width: 270px;
  height: 270px;
  border:1px solid #bbbbbb;
  padding: 0px;
}

.image {
  margin-top:0px;
  display: block;
  width: 268px;
  height: 268px;
  background-size: cover;
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
    background-image:url("<?php echo base_url();?>img/promotion/orange.png");
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
    background-image:url("<?php echo base_url();?>img/promotion/red.png");
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
    background-image:url("<?php echo base_url();?>img/promotion/blue.png");
    background-repeat: no-repeat, repeat;
}



.text_title{
    margin-top:10px;
    font-size:17px;
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

span{
   color:#ff6633; 
}

.textmenu{
    font-size:14.5px;
}

.sizemenu{
    color:#666666; 
    font-weight:bold; 
    padding-top:8px; 
    padding-bottom:8px;
}
.search{
    color:#ff6634;
    margin-top:25px;
}

.search_input{
  margin-top:20px;
  width:111%;
  height:30px;  
  border: none;
  border-bottom: 2px solid #ff6634;
  float:left;
  margin-left: -13px;
}
.search_input:focus {
    outline: none;
}
.unline{
    width:100%;
    border-bottom:1px solid #000;
    margin-bottom:10px;
}




.sidenav a, .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 15px;
  color: #818181;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}

.dropdown-container {
  display: none;
  background-color: #fff;
  padding-left: 8px;
}




</style>
<body>
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
$this->db->from("main_category");
$query = $this->db->get();
$category = $query->result();
?>

<div class="bg" style="margin-top:120px;"></div>
<div class="row">
<div class="col-1"></div>
    <div class="col-10 bg_select">

    <div class="row">
    <div class="col-1"></div>
    <div class="col-10" style="margin-top:160px;"></div>
</div>
<div class="row">
    <div class="col-3"></div>
    <div class="col-6 text_select"> SELECT YOUR BIKE  </div>
    <div class="col-3"></div>
</div>

<div class="row" style="margin-top:100px;">
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

        <div class="form-group col-md-2 bottom_searce">
        <a href="" type="submit" > SEARCE </a>
        </div>
    </div>
    </div>
</div>


    </div>
</div>

<div class="row">
    <div class="col-1"></div>
    <div class="col-10" style="padding-right: 0px !important; padding-left: 0px !important;">
        <div class="bar_item">
        <br><br>
                <div class="col-12 textbrand"><center> BMW - S1000RR - 2020 </center></div>
                <div class="col-12 textbrand_sub"><center> 25 ITEMS FOUND </center></div>

        </div>
    </div>    
</div>



<!-- row min-height -->
<div class="row">
<div class="col-12" style="background:#fff; min-height:800px;">
    <div class="row">
    
        <div class="col-6 text_bmw">
        HOME / BMW / S1000RR / 2020 
        </div>
    </div>

<!-- barBMW -->
<div class="row" style="margin-top:50px;">
<div class="col-1"></div>
<div class="col-2">
<div class="row">
    <div class="col-12" style="padding-right: 0px !important; padding-left: 0px !important;">

        <div class="row">
        <div class="col-12"><br></div> 
            <div class="unline">
                <div class="row">  
                <div class="col-6" style="color:#ff6634; font-weight:bold; font-size:18px; ">FILTERS</div>
                <div class="col-6" style="color:#ff6634; font-weight:bold; font-size:12px; margin-bottom:5px; text-align: right;">RESET FILTERS</div>
                </div> 
            </div>
           
        </div>

<?php foreach($category as $categorys): ?>
<button class="dropdown-btn">
<div class="row">
<div class="col-9"><?php echo $categorys->Name; ?></div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>
  <div class="dropdown-container">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
  <?php endforeach; ?>







        <!-- <!DOCTYPE html>
<html>
   <head>
      <title>Try v1.2 Bootstrap Online</title>
      <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <script src="bootstrap/scripts/jquery.min.js"></script>
      <script src="/bootstrap/js/bootstrap.min.js"></script>
   </head>
   <body>
      <nav class = "navbar navbar-default" role = "navigation">
         <div class = "navbar-header">
            <a class = "navbar-brand" href = "#">TutorialsPoint</a>
         </div>
         <div>
            <ul class = "nav navbar-nav">
               <li class = "active"><a href = "#">iOS</a></li>
               <li><a href = "#">SVN</a></li>
               <li class = "dropdown">
                  <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
                  Java 
                  <b class = "caret"></b>
                  </a>
                  <ul class = "dropdown-menu">
                     <li><a href = "#">jmeter</a></li>
                     <li><a href = "#">EJB</a></li>
                     <li><a href = "#">Jasper Report</a></li>
                     <li class = "divider"></li>
                     <li><a href = "#">Separated link</a></li>
                     <li class = "divider"></li>
                     <li><a href = "#">One more separated link</a></li>
                  </ul>
               </li>
            </ul>
         </div>  
      </nav>
   </body>
</html> -->





     

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  BRAKE SYSTEM
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href="">BRAKE MASTER CYLINDER</a></li>
    <li><a class="dropdown-item menuside" href="#">CLUTCH MASTER CYLINDER</a></li>
    <li><a class="dropdown-item menuside" href="#">REAR BRAKE MASTER CYLINDER</a></li>
    <li><a class="dropdown-item menuside" href="#">FRONT CALIPER</a></li>
    <li><a class="dropdown-item menuside" href="#">REAR CALIPER</a></li>
    <li><a class="dropdown-item menuside" href="#" >DISC BRAKE</a></li>
    <li><a class="dropdown-item menuside" href="#">BRAKE PAD</a></li>
    <li><a class="dropdown-item menuside" href="#">SWITCH</a></li>
  </ul>
</div>


  <button class="btn  <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  CARBON PARTS
  </button>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  ENGINE & CLUTCH
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href="">EXHAUST</a></li>
    <li><a class="dropdown-item menuside" href="#">FLUID TANK</a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  GRIPS & HANDLEBAR
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href="">INDICATOR LIGHT</a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  MAINTENANCE & CARE
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href="">MIRROR</a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  PARTS & ACCESSORIES
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href=""></a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  PROTECTION
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href=""></a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  STEERING & SUSPENSION
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href=""></a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  TRANSMISSION
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href=""></a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  TRAN SIGNAL LIGHT
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href=""></a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  WHEELS
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href=""></a></li>
  </ul>
</div>

<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  OTHER
  </button>
  <ul class="dropdown-menu" >
    <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href=""></a></li>
  </ul>
</div>










    </div>


    <div class="col-12" style="background:#000; color:#fff; font-weight:bold; font-size:14px; padding-top:8px; padding-bottom:8px;">BRAND</div>
    <div class="col-12 input">

    <input type="text" class="search_input" name="search" width="48">
    <i class="fas fa-search search" style="margin-left:-20px; position: absolute; font-size:20px; z-index:1;"></i>
    </div>

</div>


</div>
<div class="col-8">
    <div class="row"><!-- row Bar -->
        <div class="col-2" style="color:#666666; font-size:14px; font-weight:bold; padding-top:60px;"> 11 ITEMS </div>
        <div class="col-10"><img src="<?php echo base_url();?>img/product/bar_right.png" style="float:right;" width="100%" alt=""/> </div>
    </div><!-- row Bar -->



    <!-- ROW BOX -->
    <div class="row">
    <div class="col-1"></div>
    <div class="col-11">
    <div class="row">
                         <?php for ($i = 1; $i < 13; $i++) { ?>
                        <div class="col-4">
                        <a href="<?php echo base_url('Promotion_show'); ?>">
                        
                        <br>
                            <div class="container">
                                <center>
                                <img src="<?php echo base_url();?>img/product/<?php echo $i ?>.png" class="image" />
                                </center>
                                <div class="overlay">
                                    <div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
                                </div>
                            </div>
                            </a> 

                            <div class="row">
                                <div class="col-12 text_title">SLIP ON CARBON S1000 RR 2019</div>
                                <div class="col-12" style="height:10px;"></div>
                                <div class="col-2 text_price1"><s>฿3,210</s></div>
                                <div class="col-2 text_price2">฿1,234</div>
                                <div class="col-5"></div>
                                <div class="col-2"><img src="<?php echo base_url();?>img/promotion/cart.png" width="20px"></div>
                            </div>
                        </div>
                         <?php } ?>
    </div>
    </div>




    </div>
    <!-- ROW BOX -->
    <br>
    <div class="row">
                <div class="col-4"></div>
                    <div class="col-4">
                    <img src="<?php echo base_url();?>img/gallery/back_orange.png"  width="10px" />
                     &nbsp; &nbsp; 1 &nbsp; &nbsp; 2 &nbsp; &nbsp; 3 &nbsp; &nbsp; 4 &nbsp; &nbsp; 5 &nbsp; &nbsp; <span> 6 </span>&nbsp; &nbsp; 
                    <img src="<?php echo base_url();?>img/gallery/next_orange.png"  width="10px" />
                     </div>
                <div class="col-4"></div>     
            </div> 
    <br>       
    </div>
   
    <img src="<?php echo base_url();?>img/product/bat_footer.png" style="float:right;" width="100%" alt=""/>
</div>
</div>

</div>
</div><!-- row min-height -->
</body>

<<<<<<< HEAD
<script>
/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}
</script>
=======
<script src="bootstrap/scripts/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

</html>
>>>>>>> d65fce6fa0210019d3e61b0e2a671492c3918b92
