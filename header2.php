
<!DOCTYPE html>
<html lang="en">
	<head>

		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
		<meta name="description" content="Spruha -  Admin Panel HTML Dashboard Template">
		<meta name="author" content="Spruko Technologies Private Limited">
		<meta name="keywords" content="admin,dashboard,panel,bootstrap admin template,bootstrap dashboard,dashboard,themeforest admin dashboard,themeforest admin,themeforest dashboard,themeforest admin panel,themeforest admin template,themeforest admin dashboard,cool admin,it dashboard,admin design,dash templates,saas dashboard,dmin ui design">
		
		
		<!-- Jquery js-->
		<script src="assets/plugins/jquery/jquery.min.js"></script>
		<!-- Favicon -->
		<link rel="icon" href="assets/img_baac/robot.ico" type="image/x-icon"/>

		<!-- Title -->
		<title>Robo-Trade</title>
		<!-- Bootstrap css-->
		<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

		<!-- Icons css-->
		<link href="assets/plugins/web-fonts/icons.css" rel="stylesheet"/>
		<link href="assets/plugins/web-fonts/font-awesome/font-awesome.min.css" rel="stylesheet">
		<link href="assets/plugins/web-fonts/plugin.css" rel="stylesheet"/>

		<!-- Style css-->
		<link href="assets/css/style.css" rel="stylesheet">
		<link href="assets/css/skins.css" rel="stylesheet">
		<link href="assets/css/dark-style.css" rel="stylesheet">
		<link href="assets/css/colors/default.css" rel="stylesheet">
		  
		<!-- Color css-->
		<link id="theme" rel="stylesheet" type="text/css" media="all" href="assets/css/colors/color3.css">
		 
        <!-- Font -->
        <link href="assets/css/font/kanit.css" rel="stylesheet">
		<!-- Font -->
        <link href="assets/css/font/roboto.css" rel="stylesheet">
		
		<!-- Internal DataTables css-->
		<link href="assets/plugins/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" />
		<link href="assets/plugins/datatable/responsivebootstrap4.min.css" rel="stylesheet" />
		<link href="assets/plugins/datatable/fileexport/buttons.bootstrap4.min.css" rel="stylesheet" />


		
		<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
		 
		<!-- Jquery js-->
		<script src="assets/plugins/jquery/jquery.min.js"></script>

		<!-- Bootstrap js-->
		<script src="assets/plugins/bootstrap/js/popper.min.js"></script>
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

		<!-- Select2 js-->
		<script src="assets/plugins/select2/js/select2.min.js"></script>

		<!-- Custom js -->
		<script src="assets/js/custom.js"></script> 
		
		<!-- Internal Data Table js -->
		<script src="assets/plugins/datatable/jquery.dataTables.min.js"></script>
		<script src="assets/plugins/datatable/dataTables.bootstrap4.min.js"></script>
		<script src="assets/plugins/datatable/dataTables.responsive.min.js"></script>
		
		
	<style>
		 .tx-baac{
                font-family: "Kanit-Light"; 
            } 
		.tx-robo{
                font-family: "Roboto-Light"; 
            } 
			
		.tx-robo-b{
                font-family: "Roboto-Bold"; 
            } 
        </style>
	</style>

<?php 

	include 'Class/Database.php';
	$db = new DatabaseManage;
	$db->connect();

	$result = $db->selectAllData(" tb_users " ,'*'," user_id=1001 ");
	$theme ="";
	$user_id = "";
	$user_name = "";
	$user_role = "";
	foreach ($result as $row){
		$theme =$row["theme"];
		$user_id = $row["user_id"];
		$user_name = $row["user_name"];
		$user_role = $row["user_role"];
	}
	
	$img_logo_dark = "";
	if ($theme=='dark')
	{
		$theme='dark-theme';
		$img_logo_dark = '<img src="assets/img/brand/logo-light.png" class="logo-default top-header-logo2 ht-40">';
	}

?>
	</head>

	<body class="horizontalmenu <?php echo $theme; ?> tx-robo">
		
		<!-- Page -->
		<div class="page  tx-robo">
			
			<!-- Main Header-->
			<div class="main-header side-header hor-header top-header">
				<div class="container">
					<div class="main-header-left">
						<a class="main-header-menu-icon d-lg-none" href="" id="mainNavShow"><span></span></a>
						<a class="main-logo" href="index.html">
							<img src="assets/img/brand/logo.png" class="header-brand-img desktop-logo ht-40 " alt="logo">
							<img src="assets/img/brand/logo-light.png" class="header-brand-img desktop-logo theme-logo ht-40 " alt="logo">
						</a>
					</div>
					<div class="main-header-center">
						<div class="responsive-logo">
							<a href="index.html"><img src="assets/img/brand/logo.png" class="mobile-logo ht-40 " alt="logo"></a>
							<a href="index.html"><img src="assets/img/brand/logo-light.png" class="mobile-logo-dark ht-40 " alt="logo"></a>
						</div>
						 
					</div>
					<div class="main-header-right">
						 
						<a class="header-brand2" href="index.html">
								<img src="assets/img/brand/logo.png" class="logo-white top-header-logo1 ht-40 ">
								<?php echo $img_logo_dark; ?>
						</a>
						 
						<div class="dropdown d-md-flex">
							<a class="nav-link icon full-screen-link" href="">
								<i class="fe fe-maximize fullscreen-button fullscreen header-icons"></i>
								<i class="fe fe-minimize fullscreen-button exit-fullscreen header-icons"></i>
							</a>
						</div>
						 
						 
						
						<div class="dropdown main-profile-menu">
							<a class="d-flex" href="">
								<span class="main-img-user" ><img alt="avatar" src="assets/img/users/dog1.jpg"></span>
							</a>
							<div class="dropdown-menu">
								<div class="header-navheading">
									<h6 class="main-notification-title"><?php echo $user_name;?></h6>
									<p class="main-notification-text"><?php echo $user_role; ?></p>
								</div>
								<a class="dropdown-item border-top" href="profile.html">
									<i class="fe fe-user"></i> My Profile
								</a>
								 
								<a class="dropdown-item" href="signin.html">
									<i class="fe fe-power"></i> Sign Out
								</a>
							</div>
						</div>
						 
						 
					</div>
				</div>
			</div>
			<!-- End Main Header-->
		
			 
			
			<!-- Main Content-->
			<div class="main-content pt-0">

				<div class="container  ">
					<div class="inner-body"> <br/><br/><br/>

                