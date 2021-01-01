<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Admin </title>

<?php
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>

<!-- MetisMenu CSS -->
<link href="<?=base_url();?>bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<?=base_url();?>dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<?=base_url();?>bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<?=base_url();?>assets/css/util.carousel.css" />
	<link rel="stylesheet" href="<?=base_url();?>assets/css/util.carousel.skins.css" />

<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
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
    <script src="<?=base_url();?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->

<!-- Custom Theme JavaScript -->
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
				<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
				<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>
	<div id="wrapper">
	<?php $this->load->view('menu_admin_view'); ?>

			<!-- Page Content -->
			<div id="page-wrapper">
					<div class="container-fluid">
							<div class="row">


											<div style='height:20px;'></div>
										    <div>
												<?php echo $output; ?>
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
		<script src="<?=base_url();?>bower_components/metisMenu/dist/metisMenu.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="<?=base_url();?>dist/js/sb-admin-2.js"></script>
		<script src="<?=base_url();?>assets/css/jquery.utilcarousel.min.js"></script>
	<script>
	$(function() {
	$('#features-carousel').utilCarousel({
		responsiveMode : 'itemWidthRange',
		itemWidthRange : [260, 300],
		autoPlay : true,
		interval : 3000
	});
});

	</script>



</body>
</html>
