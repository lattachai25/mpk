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
.text_bmw {
    margin-left: 117px;
    margin-top: 23px;
    font-size: 18px;
    text-align: left;
    font-weight: bold;
    color: #666666;
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
    margin-left:10px;
    font-size:17px;
    color:#000;
    font-weight: bold;
}
.text_price1{
font-size:17px;
color:#bbbbbb;
margin-left:10px;
bottom: -6px;
}
.text_price2{
  padding-left:30px;
  font-size:17px;
  color:#ff5e0d;
  bottom: -6px;
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
$this->db->select('main_category.*, sub_category.*');
$this->db->from('main_category');
$this->db->join('sub_category', 'main_category.category_id = sub_category.category_id');
    //  ->where('main_category.category_id', $id)

$query = $this->db->get();
$category = $query->result();
?>

<?php
$this->db->select("*");
$this->db->from("select_your_bike");
$query = $this->db->get();
$select_your_bike = $query->result();
?>

<div class="bg" style="margin-top:120px;"></div>
<div class="row">
<div class="col-1"></div>
    <div class="col-10 bg_select">

    <div class="row">
    <div class="col-1"></div>
    <div class="col-10" style="margin-top:160px;"></div>
</div>
<div class="row" style="margin-top:50px;">
    <div class="col-3"></div>
    <div class="col-6 text_select"> SELECT YOUR BIKE  </div>
    <div class="col-3"></div>
</div>

<div class="row" style="margin-top:50px;">
<div class="col-2"></div>
<div class="col-8">

<form action="<?php echo base_url();?>Show.php" method="post" enctype="multipart/form-data">
    <div class="form-row">
    <div class="form-group col-md-3">
        <select id="inputState" class="form-control" name="brand">
            <option selected> BRAND <i class="far fa-caret-circle-down"></i> </option>
            <?php foreach($brand as $brands): ?>
            <option value="<?php echo $brands->name;?>"><?php echo $brands->name;?></option>
            <?php endforeach; ?>
        </select>
        </div>

        <div class="form-group col-md-3">
        <select id="inputState" class="form-control" name="model">
            <option selected> MODEL <i class="far fa-caret-circle-down"></i></option>
            <?php foreach($model as $models): ?>
            <option value="<?php echo $models->name;?>"><?php echo $models->name;?></option>
            <?php endforeach; ?>
        </select>
        </div>

        <div class="form-group col-md-3">
        <select id="inputState" class="form-control" name="year">
            <option selected> YEAR <i class="far fa-caret-circle-down"></i></option>
            <?php foreach($year as $years): ?>
            <option value="<?php echo $years->name_year;?>"><?php echo $years->name_year;?></option>
            <?php endforeach; ?>
            
        </select>
        </div>

        <button type="submit" class="form-group col-md-2 bottom_searce">SEARCE</button>

        <!-- <div class="form-group col-md-2 bottom_searce">
        <input type="submit" > SEARCE </input>
        </div> -->
    </div>
    </div>
  </form>
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

<!-- <?php foreach($category as $categorys): ?>
<button class="dropdown-btn">
<div class="row">
<div class="col-9"><?php echo $categorys->Name; ?></div>
<div class="col-1"><i class="fa fa-plus fa-sm"></i></div>
</div>
</button>

  <div class="dropdown-container">
    <a href="<?php echo $categorys->id; ?>"><?php echo $categorys->name_subcategory; ?> <?php echo $categorys->id; ?>
    </a>
  </div>
  <?php endforeach; ?> -->


<div class="dropdown">
  <button class="btn dropdown-toggle <?php if($this->uri->segment(1)==""){echo "active";}?> menuside" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" >
  BRAKE SYSTEM
  </button>
  <ul class="dropdown-menu" >
    <!-- <li><a class="<?php if($this->uri->segment(1)==""){echo "active";}?> dropdown-item menuside" href="">BRAKE MASTER CYLINDER</a></li> -->
    <?php foreach($category as $categorys): ?>
      <li> <a class="dropdown-item menuside" href="<?php echo base_url();?>Select_your_bike/view2/<?php echo $categorys->sub_category_id;?>"><?php echo $categorys->name_subcategory; ?></a></li>
    <?php endforeach; ?>
    <!-- <li><a class="dropdown-item menuside" href="#">CLUTCH MASTER CYLINDER</a></li>
    <li><a class="dropdown-item menuside" href="#">REAR BRAKE MASTER CYLINDER</a></li>
    <li><a class="dropdown-item menuside" href="#">FRONT CALIPER</a></li>
    <li><a class="dropdown-item menuside" href="#">REAR CALIPER</a></li>
    <li><a class="dropdown-item menuside" href="#" >DISC BRAKE</a></li>
    <li><a class="dropdown-item menuside" href="#">BRAKE PAD</a></li>
    <li><a class="dropdown-item menuside" href="#">SWITCH</a></li> -->
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
    <div class="col-10">
    <div class="row">
                      <?php foreach($select_your_bike as $select_your_bikes): ?>
                        <div class="col-4">
                        <a href="<?php echo base_url('Select_show'); ?>">
                        
                        <br>
                            <div class="container">
                                <center>
                                <img src="<?php echo base_url();?>assets/uploads/img_promotion_product/<?php echo $select_your_bikes->img1;?>" class="image" />
                                </center>
                                <div class="overlay">
                                    <div class="text">READ MORE <i class="fas fa-arrow-right"></i></div>
                                </div>
                            </div>
                            </a> 

                            <div class="row">
                                <div class="col-12 text_title"><?php echo $select_your_bikes->name_product;?></div>
                                <div class="col-12" style="height:10px;"></div>
                                <div class="col-3 text_price1"><s>฿<?php echo $select_your_bikes->Price;?></s></div>
                                <div class="col-3 text_price2">฿<?php echo $select_your_bikes->discount;?></div>
                                <div class="col-5"><img src="<?php echo base_url();?>img/promotion/cart.png" style="width:30px; float: right; margin-right: -18px;"></div>
                            </div>
                            <br><br>
                        </div>
                        <?php endforeach; ?>
    </div>
    </div>




    </div>
    <!-- ROW BOX -->
    <br>
    <style>
    a {
    color: #ff6634;
    font-size: 20px;
    font-weight: bold;
    text-decoration: none;
    }
    b, strong {
    font-size: 20px;
    font-weight: bolder;
}
    </style>
    <div class="row">
                <div class="col-4"></div>
                    <div class="col-4">

                    <?php echo $links; ?>

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
<script src="bootstrap/scripts/jquery.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

</html>

