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
		<link rel="stylesheet" type="text/css" href="css/ATM_Styles.css">
	</head>
	<body class="atmAppFirstPage">
		
		<div id="ATMContainer" class="col-xs-12">			
			<div class="transactionType col-xs-12">
				<br/>
				<h1 id="atmWelcomeHead">Welcome to ICICI Bank ATM</h1>
				<img src="images/iciciLogo.png" alt="ICICI Bank Image" class="iciciBankLogoImg" />
				<h3>Choose Your Transaction Type</h3>
				<div class="atmCardTransaction">
					<img src="images/atmCard.png" alt="ATM Card Transaction" class="atmCardTransactionImg"/>
					<h4><strong>Card Transaction</strong></h4>
				</div>
				<br/>
				<div class="clearfix"></div>
				<div class="atmCardLessTransaction">
					<img src="images/atmCardLess.png" alt="ATM CardLess Transaction" class="atmCardLessTransactionImg"/>
					<h4><strong>CardLess Transaction</strong></h4>
				</div>
				<br/>
				<br/>
			</div>			
		</div>
		
		<script>
			$(".atmCardTransaction").on('click', function(){
				/* window.location = 'ATMApp_FirstPage.jsp'; */
			});
			$(".atmCardLessTransaction").on('click', function(){
				/* window.location = 'ATMApp_SecondPageScan.jsp'; */
			});			
		</script>
		
	</body>
</html>
