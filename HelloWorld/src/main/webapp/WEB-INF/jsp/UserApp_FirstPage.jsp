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
	<body class="userAppThirdPage">
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
		<div id="UserAppContainer">
			<header class="header_section">
				<div class="menu_search_section">
					<img src="images/menu.png" alt="Menu Icon" class="menuIcon" />
					<img src="images/close.png" alt="Close Icon" class="closeIcon" />
					<img src="images/iciciLogo.png" alt="ICICI Logo" class="iciciLogo" />
					<img src="images/search.png" alt="Search Icon" class="searchIcon" />
				</div>
				<div class="user_details">
					<img src="images/user.jpg" alt="User Icon" class="userIcon" />
					<div class="userLogin">
						<h5>Hello ANUSUYA M</h5>
						<p>Last visited 01st Apr 2017, 10:28:11 IST</p>
					</div>
				</div>
			</header>
			
			
			<div class="favourite_section col-xs-12">
				<div class="fav_star_img col-xs-2">
					<img src="images/star.png" alt="Favourite Star" class="starImg"/>
				</div>
				<div class="fav_transaction col-xs-8">
					<h3>Favourite Transactions</h3>
					<h5>Transact Super Fast From Here</h5>
				</div>
				<div class="fav_fwd_img col-xs-2">
					<img src="images/right-arrow.png" class="arrowImg" alt="Right Arrow" />
				</div>
			</div>
			<form id="userAppFormDetails" name="userAppFormDetails" action="cardLessTransactionPage" >
			<div class="main_container">
				<div class="row1 col-xs-12">
					<div class="acc_deposit col-xs-4">
						<div class="col1_img">
							<img src="images/groupImg.jpg" alt="Group Image" class="grpImg" />
						</div>
						<p>Accounts & Deposits</p>
					</div>
					<div class="fund_transfer col-xs-4">
						<div class="col2_img">
							<img src="images/fundTransferImg.jpg" alt="Fund Image" class="fundImg" />
						</div>
						<p>Fund <br/>Transfer</p>
					</div>
					<div class="recharge col-xs-4">
						<div class="col3_img">
							<img src="images/recharge.png" alt="Recharge Image" class="rechargeImg" />
						</div>
						<p>Recharge</p>
					</div>
				</div>
				<div class="row2 col-xs-12">
					<div class="bill_payment col-xs-4">
						<div class="col1_img">
							<img src="images/billPay.jpg" alt="Billpay Image" class="billPayImg" />
						</div>
						<p>Bill Payment & Reminders</p>
					</div>
					<div class="cardless col-xs-4">
						<div class="col2_img">
							<img src="images/cardLess.png" alt="Cardless Image" class="cardLessImg" />
						</div>
						<p id="cardless_transaction" style="margin-top:5px;">Cardless Transactions</p>
					</div>
					<div class="card_loans col-xs-4">
						<div class="col3_img">
							<img src="images/cardLoan.jpg" alt="Card Loan Image" class="cardLoanImg" />
						</div>
						<p style="margin-top:5px;">Card Loans & Forex</p>
					</div>
				</div>
				<div class="row3 col-xs-12">
					<div class="shopping col-xs-4">
						<div class="col1_img">
							<img src="images/shopping.png" alt="Shopping Image" class="shopImg" />
						</div>
						<p>Shopping & Offers</p>
					</div>
					<div class="investments col-xs-4">
						<div class="col2_img">
							<img src="images/investment.jpg" alt="Investment Image" class="investImg" />
						</div>
						<p>Investment & Tax Payment</p>
					</div>
					<div class="smarKeys col-xs-4">
						<div class="col3_img">
							<img src="images/smartKey.png" alt="SmartKeys Image" class="smartKeyImg" />
						</div>
						<p>SmartKeys & Services</p>
					</div>
				</div>
			</div>
			</form>
		</div>
		
		<script>
			$(document).ready(function(){
				$(".closeIcon").hide();
			});
			$(function()
			{
				var expanded = false;
				$('.menuIcon, .closeIcon').click(function()	{
					if (!expanded) {
						$("#menuSection").animate({'left' : '0px'}, {duration : 400});
						$("#UserAppContainer").addClass("mainDivMove");
						$(".menuIcon").hide();
						$(".closeIcon").show();
						expanded = true;
					}
					else {
						$("#menuSection").animate({'left' : '-500px'}, {duration: 100});
						$("#UserAppContainer").removeClass("mainDivMove");
						$(".menuIcon").show();
						$(".closeIcon").hide();
						expanded = false;
					}
				});
			});
			$("#cardless_transaction, .cardLessImg").click(function(){
				/* window.location = "CardLessTransaction.jsp"; */
				document.userAppFormDetails.submit();
			});
		</script>
		
	</body>
</html>
