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
		<script src="js/jquery-qrcode-0.14.0.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
		<link rel="stylesheet" type="text/css" href="css/ATM_Styles.css">
	</head>
	<body class="atmAppSecondPage">
		
		<div id="ATMQRContainer" class="col-xs-12">			
			<div class="transactionType col-xs-12">
				<br/>
				<h1>Welcome to ICICI Bank ATM</h1>
				<br/>
				<img src="images/iciciLogo.png" alt="ICICI Bank Image" class="iciciBankLogoImg" />
				<!--<h3>Get your money more secure and easier with Cardless transaction</h3>-->
				<p>&nbsp;</p>
				<h3>Scan the below QR Code for processing</h3>
				<div class="atmQRCodeSection">
					<!-- This is where the generated QR code will appear -->
					<br/>				
					<br/>
					<br/>
					<div id="randomQRImg"></div>
					<br/>
					<br/>
					<br/>
					<button type="submit"  id="cancelATMRequest" class="btn btn-primary">Cancel Transaction</button>
 				</div>
				<br/>
				<br/>
				<br/>
				<br/>
			</div>			
		</div>
		
		<!-- Now generate the QR code! -->
		<script>
			var uniqueATMNo = 10589724;
			var randomUUID = Math.floor(10000000000000 + Math.random() * 90000000000000)
			randomUUID = randomUUID.toString().substring(0, 12);

			$('#randomQRImg').qrcode({
				render: 'image',
				width: 400,
				height: 400,
				color: '#000000',
				text: uniqueATMNo+'|'+randomUUID,
				ecLevel: 'H',
				bgColor: '#FFFFFF',
				radius: 0.5
			 });

			$("#cancelATMRequest").click(function(){
				window.location = "ATMApp_FirstPage.html";
			});
		</script>
	</body>
</html>
