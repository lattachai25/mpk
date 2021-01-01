<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="bas">
		<meta name="author" content="bas">

		<title>Admin </title>

		<link type="text/css" rel="stylesheet" href="<?php base_url();?>assets/grocery_crud/themes/bootstrap/css/bootstrap/bootstrap.min.css" />
			<link type="text/css" rel="stylesheet" href="<?php base_url();?>assets/grocery_crud/themes/bootstrap/css/font-awesome/css/font-awesome.min.css" />
			<link type="text/css" rel="stylesheet" href="<?php base_url();?>assets/grocery_crud/themes/bootstrap/css/common.css" />
			<link type="text/css" rel="stylesheet" href="<?php base_url();?>assets/grocery_crud/themes/bootstrap/css/list.css" />
			<link type="text/css" rel="stylesheet" href="<?php base_url();?>assets/grocery_crud/themes/bootstrap/css/general.css" />
			<link type="text/css" rel="stylesheet" href="<?php base_url();?>assets/grocery_crud/themes/bootstrap/css/plugins/animate.min.css" />

		<!-- MetisMenu CSS -->
		<link href="<?php base_url();?>bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

		<!-- Custom CSS -->
		<link href="<?php base_url();?>dist/css/sb-admin-2.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<link href="<?php base_url();?>bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

			<script src="<?php base_url();?>assets/grocery_crud/js/jquery-1.11.1.min.js"></script>
			<script src="<?php base_url();?>assets/grocery_crud/themes/bootstrap/build/js/global-libs.min.js"></script>
			<script src="<?php base_url();?>assets/grocery_crud/themes/bootstrap/js/bootstrap/modal.min.js"></script>
			<script src="<?php base_url();?>assets/grocery_crud/themes/bootstrap/js/jquery-plugins/bootstrap-growl.min.js"></script>
			<script src="<?php base_url();?>assets/grocery_crud/themes/bootstrap/js/jquery-plugins/jquery.print-this.js"></script>
			<script src="<?php base_url();?>assets/grocery_crud/themes/bootstrap/js/datagrid/gcrud.datagrid.js"></script>
			<script src="<?php base_url();?>assets/grocery_crud/themes/bootstrap/js/datagrid/list.js"></script>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a {
	color: #337ab7;
  text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: underline;
}

</style>


<!-- Bootstrap Core JavaScript -->
    <script src="<?php base_url();?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<?php base_url();?>bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<?php base_url();?>dist/js/sb-admin-2.js"></script>
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
				<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
				<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>
	<div id="wrapper">

         <?php  $this->load->view('Menu_admin_view'); ?>
			<!-- Page Content -->
			<div id="page-wrapper">
					<div class="container-fluid">
							<div class="row">


											<div style='height:20px;'></div>
										    <div>
												<?php $this->load->view($content); ?>
										    </div>



									<!-- /.col-lg-12 -->
							</div>
							<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
			</div>
			<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->


		<!-- Metis Menu Plugin JavaScript -->
		<script src="<?php base_url();?>bower_components/metisMenu/dist/metisMenu.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="<?php base_url();?>dist/js/sb-admin-2.js"></script>

</body>
</html>
