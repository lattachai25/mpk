<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Admin MPK</title>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="LOGOsmartsure.png"/>
    <link rel="bookmark" href="LOGOsmartsure.png"/>
    <!-- site css -->

    
   
    <link rel="stylesheet" href="<?php echo base_url();?>assets/dist/css/site.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/admin/dataTable.css">
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/admin/jasny.css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,800,700,400italic,600italic,700italic,800italic,300italic" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="<?php echo base_url();?>css/jquery.mCustomScrollbar.css" />

<script type="text/javascript" src="<?php echo base_url();?>assets/dist/js/site.min.js"></script>
<script src="/code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>js/fancybox.js"></script>
<script src="<?php echo base_url();?>js/masonry.js"></script>
<script src="<?php echo base_url();?>js/jquery.mCustomScrollbar.concat.min.js"></script>
    <style>
      body {
        padding-top: 40px;
        padding-bottom: 40px;

        background-color:#dbdbdb;
        /* background:url('<?php echo base_url();?>image/bg_login.jpg') no-repeat center center fixed; */
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        color: #ff0000
      }
    </style>
  </head>
  <body>
    <div class="container">

      <?php
      $at = array('class' => 'form-signin', 'id' => 'myform','role' => 'form');
       echo form_open('verifylogin',$at); ?>
        <h3 class="form-signin-heading" style='margin:50px 0;'><center>
      <img  src="<?php echo base_url();?>assets/images/logo.png" width='100%'>
        </center>
        </h3>
          <?php echo validation_errors(); ?>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <i class="glyphicon glyphicon-user"></i>
            </div>
            <input type="text" class="form-control" name="username" id="username" placeholder="Username" autocomplete="off" />
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">
              <i class=" glyphicon glyphicon-lock "></i>
            </div>
            <input type="password" class="form-control" name="password" id="password" placeholder="Password" autocomplete="off" />
          </div>
        </div>
        <label class="checkbox">
          <input type="checkbox" value="remember-me" name='expire'> &nbsp Remember me
        </label>
        <button class="btn btn-lg btn btn btn-block" type="submit" style=" background-color:#000000; color:#fff;" >Login</button>
      </form>

    </div>
    <div class="clearfix"></div>
    <br><br>
    <!--footer-->
    <div style='width:100%;position:fixed;bottom:0;left:0;background:#373e4a;padding-top:5px;'>
      <div class="container">
        <div class="copyright clearfix text-center">
          <p><b>Copyrights © Nextcis .All Rights Reserved. </b></p>

        </div>
      </div>
    </div>
  </body>
</html>
