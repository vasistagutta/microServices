<!DOCTYPE html>  
<html>
	<head>
		<title>ICICI Appathon Page</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" /> -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link type="text/css" rel="stylesheet" media="all" href="fonts/fonts.css" />
		<link type="text/css" rel="stylesheet" media="all" href="css/animate.css" />
		<link type="text/css" rel="stylesheet" media="all" href="css/font-awesome.min.css" />
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<link rel="stylesheet" type="text/css" href="css/User_Styles.css">
	</head>
	<body class="userAppSecondPage">
		<div id="menuSection">			
			<ul>
				<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li><a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i> Passbook</a></li>
				<li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Apply Now</a></li>
				<li><a href="#"><i class="fa fa-keyboard-o" aria-hidden="true"></i> SmartKeys</a></li>
				<li><a href="#"><i class="fa fa-inbox" aria-hidden="true"></i> Inbox (0)</a></li>
				<li><a href="#"><i class="fa fa-weixin" aria-hidden="true"></i> Chat</a></li>
				<li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i> Contact Us</a></li>
				<li><a href="#"><i class="fa fa-mobile" aria-hidden="true"></i> Change Login PIN</a></li>
				<li><a href="#"><i class="fa fa-calculator" aria-hidden="true"></i> Calculator</a></li>
				<li><a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> Feedback</a></li>
				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i> Rate Us</a></li>
				<li><a href="#"><i class="fa fa-power-off" aria-hidden="true"></i> Logout</a></li>
			</ul>
		</div>
		<div id="CardLessContainer">
		    <form  id="userAppBackFormDetails" name="userAppBackFormDetails" action="userAppFirstPage">
			<header class="header_title_section">
				<div class="menu_help_section">
					<img src="images/left-arrow.png" alt="Left Arrow Icon" class="leftArrowIcon" />
					<img src="images/menuCard.png" alt="Menu Icon" class="menuCardIcon" />
					<img src="images/close.png" alt="Close Icon" class="closeMenuIcon" />
					<h3>Cardless Transaction</h3>
					<img src="images/helpIcon.png" alt="Search Icon" class="helpIcon" />
				</div>
			</header>
			</form>
			<form  id="cardLessATMFormDetails" name="cardLessATMFormDetails" action="cardLessATMPage">
			<div class="cardLessMainContainer">
				<div class="mainSection">
					<h3>Secure & Easy Money Transaction</h3>
				</div>
				<div class="cardLessOptions">
					<div class="atmSection">
						<img src="images/atm.jpg" alt="ATM Image" class="atmImg" />
						<h3>Cardless ATM Transaction</h3>
					</div>
					<div class="posSection">
						<img src="images/posMachine.png" alt="POS Transaction" class="posImg" />
						<h3>Cardless POS Transaction</h3>
					</div>
					<br/>	
					<br/>
				</div>

			</div>
			</form>
		</div>
		
		<script>
			$(document).ready(function(){
				$(".closeMenuIcon").hide();
			});
			$(function()
			{
				var expanded = false;
				$('.menuCardIcon, .closeMenuIcon').click(function()	{
					if (!expanded) {
						$("#menuSection").animate({'left' : '0px'}, {duration : 400});
						$("#CardLessContainer").addClass("mainDivMove");
						$(".menuCardIcon").hide();
						$(".closeMenuIcon").show();
						expanded = true;
					}
					else {
						$("#menuSection").animate({'left' : '-500px'}, {duration: 100});
						$("#CardLessContainer").removeClass("mainDivMove");
						$(".menuCardIcon").show();
						$(".closeMenuIcon").hide();
						expanded = false;
					}
				});
			});
			$(".leftArrowIcon").click(function(){
				/* window.location = "UserApp_FirstPage.jsp"; */
				document.userAppBackFormDetails.submit();
			});
			$(".atmSection").click(function(){
				/* window.location = "CardLessATMTransactionFPage.jsp"; */
				document.cardLessATMFormDetails.submit();
			});
		</script>
		
	</body>
</html>
