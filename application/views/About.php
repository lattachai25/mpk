<style>
span{ color:#ff6634; }
.img_top_add{
    border-left:15px solid #ff6634;
    height:600px;
    background-color:#e2e0e1;
    margin-bottom:50px;
}

.text_whoweAre{
    color:#ff6634;
    font-size:50px;
    font-weight:bold;

}
.text_contant{
    color:#000;
    font-family: 'RSU';
    font-weight: bold;
    font-size:25px;
    margin-bottom:50px;
    margin-left: 0px;
}
.owner{
    color:#ff6634;
    font-family:'helvetica';
    font-weight:bold;
    font-size:50px;
    border-bottom:8px solid #000;
    margin-left:-50px !important;
}

.our{
    color:#ff6634;
    font-family:'helvetica';
    text-align: right;
    font-weight:bold;
    font-size:50px;
    margin-top:90px;
    border-bottom:8px solid #000;
    margin-left:120px !important;
    padding-left: 350px;
}


.text_name{
    color:#ff6634;
    font-family:'rsu';
    font-weight:600;
    font-size:60px;
    text-align: left;
    margin-top:150px;
    margin-left:60px;
}
.text_name_detel{
    margin-top:40px;
    color:#000;
    font-family:'rsu';
    font-weight: 700;
    font-size:25px;
    margin-bottom:50px;
    margin-left:60px;
}

.text_name_detel1{
    margin-top:80px;
    color:#000;
    font-family:'rsu';
    font-weight: 700;
    font-size:25px;
    margin-bottom:50px;
    margin-left:40px;
}
.text_name_detel2{
    margin-top:200px;
    color:#000;
    font-family:'rsu';
    font-weight: 700;
    font-size:25px;
    margin-bottom:50px;
    margin-left:60px;
}

</style>
<?php
$this->db->select("*");
$this->db->from("about");
$query = $this->db->get();
$about = $query->result();
?>
	<?php foreach($about as $abouts): ?>
<div class="row col-12" style="margin-top:150px;">
    <div class="col-12" style="min-height:500px;">

            <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 text_whoweAre">WHO WE ARE </div>
            <div class="col-md-2"></div>
            </div>

            <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 img_top_add"> </div>
            <div class="col-md-2"></div>
            </div>

            <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-6 text_contant">
            <?php echo $abouts->content;?>
             </div>
            <div class="col-md-3"></div>
            </div>
    </div>

    <div class="col-1"></div>
    <div class="col-10" style="min-height:500px; background-color:#f5f5f5;">
        <div class="row">
        
        <img src="<?php echo base_url();?>img/about/bg_06.png"width="100%" alt=""/>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-1"></div>
                        <div class="col-5 owner">OWNER</div>
                    </div>
                    <div class="row">
                    
                        <div class="col-md-6">
                            <img src="<?php echo base_url();?>assets/uploads/img_about/<?php echo $abouts->img_people;?>" width="70%" style="float:right;" alt="" />
                        </div>

                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-10 text_name"><?php echo $abouts->people_name;?></div>
                                <div class="col-md-10 text_name_detel">
                                    <?php echo $abouts->people_detel;?>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
        </div>

<div class="col-md-12" style="margin-top:100px;">
<div class="row">
<div class="col-md-6" style="background-color:#ff6634; color:#ff6634">
MPK
</div>
<div class="col-md-6"></div>
</div>
</div>

    </div>

        <div class="row">
            <div class="col-1"></div>
            <div class="col-10"   style="background:#000;";>
            <img src="<?php echo base_url();?>img/about/back_text.png"width="100%" alt=""/ >
            </div>
            <div class="col-1"></div>
        </div>





        <div class="row">
            <div class="col-12 our">OUR MISSION</div>
        </div>
    <div class="col-12" style="min-height:500px; margin-top:150px;">




<div class="row">
<div class="col-md-6">
<img src="<?php echo base_url();?>assets/uploads/img_about/<?php echo $abouts->img_center_left;?>" width="90%" style="float:right;" alt="" />
</div>
<div class="col-md-5">

<div class="col-12 text_name_detel1">
<?php echo $abouts->content_center_left;?>
</div>



</div>
</div>

<div class="row" style="margin-top:-100px;">
<div class="col-md-5">
<div class="col-12 text_name_detel2">
<div style="margin-left:100px;">
<?php echo $abouts->content_center_right;?>
</div>
</div>





</div>    

<div class="col-md-6"> 
<img src="<?php echo base_url();?>assets/uploads/img_about/<?php echo $abouts->img_center_right;?>" width="90%" style="float:left; border:20px solid #fff;" alt="" />
</div>
</div>

<br>
<br>
<br>
<br>

    </div>

</div>
<div class="row">

<img src="<?php echo base_url();?>img/about/contact_11.png"width="100%" alt=""/ >


</div>
<?php endforeach; ?>