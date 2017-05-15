<!DOCTYPE html>  
<html>
	<head>
		<title>ICICI Appathon Page</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" /> -->
		<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
		<link type="text/css" rel="stylesheet" media="all" href="fonts/fonts.css" />
		<link type="text/css" rel="stylesheet" media="all" href="css/animate.css" />
		<link type="text/css" rel="stylesheet" media="all" href="css/font-awesome.min.css" />
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<link rel="stylesheet" type="text/css" href="css/User_Styles.css">
	</head>
	<body class="userLoginPage">
		
		<div id="loginPageContainer">
			<header class="header_title_section">
				<div class="login_head_section">
					<h3>Hello Anusuya M</h3>
				</div>
			</header>
			<div class="loginPageMainContainer col-xs-12">
								
				<div class="loginPageAdCarousel">
					<div id="loginPageCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
					  <!-- Indicators -->
					 <!--  <ol class="carousel-indicators">
						<li data-target="#loginPageCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#loginPageCarousel" data-slide-to="1"></li>
						<li data-target="#loginPageCarousel" data-slide-to="2"></li>
						<li data-target="#loginPageCarousel" data-slide-to="3"></li>
					  </ol> -->

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="images/loginImg1.jpg" class="loginPageOfferImg" alt="Login Page Offers">
							<div class="carousel-caption">								
							</div>
						</div>

						<div class="item">
						  	<img src="images/loginImg2.jpg" class="loginPageOfferImg" alt="Login Page Offers" style="height: 282px;">
							<div class="carousel-caption">								
							</div>
						</div>

						<div class="item">
						  	<img src="images/loginImg3.jpg" class="loginPageOfferImg" alt="Login Page Offers" style="height: 282px;">
							<div class="carousel-caption">
							</div>
						</div>

						<div class="item">
						  	<img src="images/loginImg4.jpg" class="loginPageOfferImg" alt="Login Page Offers" style="height: 282px;">
							<div class="carousel-caption">
							</div>
						</div>
					  </div>					  
					</div>
					<div class="col-xs-12">
						<form id="loginPageFormDetails" name="loginPageFormDetails" action="userAppFirstPage" >
							<div class="form-group">
								<span>
									<i class="fa fa-lock" aria-hidden="true" id="loginLock"></i>
									<input type="tel" class="form-control" name="userPIN" id="userPIN" minimum="4" maximum="4" placeholder="Enter 4 Digit Login PIN Number" />
								</span>
							</div>	
							<a href="#"	class="forgotLoginPIN">Forgot Login PIN ?</a>	
						</form>
						<!--<div class="col-xs-12 loginFooterMenu">
							<div class="col-xs-4 loginFooterMenu1">
								<div class="login_col1_img">
									<img src="images/groupImg.jpg" alt="Group Image" class="grpImg" />
								</div>
								<p class="instaBanking">Insta Banking</p>
							</div>
							<div class="col-xs-4">
								<div class="col2_img">
									<img src="images/groupImg.jpg" alt="Group Image" class="grpImg" />
								</div>
								<p>Apply Now</p>
							</div>
							<div class="col-xs-4">
								<div class="col3_img">
									<img src="images/groupImg.jpg" alt="Group Image" class="grpImg" />
								</div>
								<p>Offers</p>
							</div>
						</div>-->
					</div>					
				</div>
				
			</div>
		</div>
		
		<script>
			$("#cardDetailsSubmit").click(function(){
				document.getElementById("cardlessFormDetails").submit();
			});
			$("#userPIN").on('keyup', function(){
				if($("#userPIN").val().length === 4){
					/* window.location = "/jsp/UserApp_FirstPage.jsp"; */
					document.loginPageFormDetails.submit();
				}
			});
		</script>
		
	</body>
</html>
