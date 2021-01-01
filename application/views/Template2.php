<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title><?php if($title === ''){echo "intro";}else{ echo  $title;} ?></title>
          <meta name="keywords" content="<?php echo $keywords;?>">
          <meta name="description" content="<?php echo $description;?>">

<link href="https://fontawesome.com/v4.7.0/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

<link rel="stylesheet" href="<?php echo base_url();?>font_rsu/stylesheet.css">
<link rel="stylesheet" href="<?php echo base_url();?>css/font_stylesheet.css">

    <!-- Owl Carousel Assets -->
    <link href="http://www.landmarkmlp.com/js-plugin/owl.carousel/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="http://www.landmarkmlp.com/js-plugin/owl.carousel/owl-carousel/owl.theme.css" rel="stylesheet">

    <!-- Prettify -->
    <link href="http://www.landmarkmlp.com/js-plugin/owl.carousel/assets/js/google-code-prettify/prettify.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>

<link href="<?php echo base_url();?>css/horizontalvertical.css" rel="stylesheet" />

<link href="<?php echo base_url();?>css/horizontalvertical.css" rel="stylesheet" />


    <link href="<?php echo base_url();?>vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <link href="<?php echo base_url();?>css/creative.min.css" rel="stylesheet">

    <link href="<?php echo base_url();?>css/menu.css" rel="stylesheet">
 </head>
 <style>
html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'RSU';
                font-family: 'helvetica', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }
.row {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -0px;
    margin-left: -0px;
}
</style>
<body id="page-top">

<?php $this->load->view('Menubar2');?>

<?php if(isset($content)){ echo $content; } ?>

<?php $this->load->view('Footer');?>

</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<script src="http://www.landmarkmlp.com/js-plugin/owl.carousel/assets/js/jquery-1.9.1.min.js"></script> 
<script src="http://www.landmarkmlp.com/js-plugin/owl.carousel/owl-carousel/owl.carousel.js"></script>

<script src="<?php echo base_url();?>js/horizontalvertical.js"></script>
</html>
