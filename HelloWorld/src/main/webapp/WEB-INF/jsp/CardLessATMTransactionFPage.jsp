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
	<body class="userAppFirstPage">
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
		<div id="CardLessATMContainer">
			<header class="header_title_section">
				<div class="menu_help_section">
					<img src="images/left-arrow.png" alt="Left Arrow Icon" class="leftArrowIcon" />
					<img src="images/menuCard.png" alt="Menu Icon" class="menuCardIcon" />
					<img src="images/close.png" alt="Close Icon" class="closeMenuIcon" />
					<h3>Cardless ATM Transaction</h3>
					<img src="images/helpIcon.png" alt="Search Icon" class="helpIcon" />
				</div>
			</header>
			<div class="cardLessMainATMContainer col-xs-12">
				<div class="mainSection">
					<h4 id="chooseCardHead">Choose Your Card & Get Started With CardLess ATM Transaction</h4>
				</div>
				
				<div class="cardSelection">
					
					<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
					  <!-- Indicators -->
					  <ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					  </ol>

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" role="listbox">
						<!--<div class="item active">
							<img src="images/atmCard1.png" alt="Debit Card">
							<div class="carousel-caption">								
							</div>
						</div>

						<div class="item">
						  <img src="images/atmCard2.png" alt="Debit Card">
							<div class="carousel-caption">								
							</div>
						</div>

						<div class="item">
						  <img src="images/atmCard3.png" alt="Debit Card">
							<div class="carousel-caption">
							</div>
						</div>

						<div class="item">
						  <img src="images/atmCard4.png" alt="Debit Card">
							<div class="carousel-caption">
							</div>
						</div>-->
					  </div>

					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<img src="images/carouselLeft.png" alt="Previous Image" class="carouselLeftImg" />
					  </a>
					  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<img src="images/carouselRight.png" alt="Next Image" class="carouselRightImg" />
					  </a>
					</div>
					<div class="col-xs-12">
						<form id="cardlessFormDetails" action="cardlessTranscation" >
							<!--<div class="form-group">
								<label for="cardNo" class="cardNoLabel">Card Number</label>
								<input type="number" class="form-control" name="cardNo" id="cardNo" value="1234567891234">
							</div>-->						
							
						</form>
					</div>					
				</div>
				
			</div>
		</div>
		
		<script>

			var cardNoList = [];
			var actualCardNoList1, actualCardNoList2, splitCardNoList1, splitCardNoList2, cardNoList1Part1, cardNoList1Part2, cardNoList2Part1, cardNoList2Part2, activeNode1, activeNode2;

			$(function()
			{
				var expanded = false;
				$('.menuCardIcon, .closeMenuIcon').click(function()	{
					if (!expanded) {
						$("#menuSection").animate({'left' : '0px'}, {duration : 400});
						$("#CardLessATMContainer").addClass("mainDivMove");
						$(".menuCardIcon").hide();
						$(".closeMenuIcon").show();
						expanded = true;
					}
					else {
						$("#menuSection").animate({'left' : '-500px'}, {duration: 100});
						$("#CardLessATMContainer").removeClass("mainDivMove");
						$(".menuCardIcon").show();
						$(".closeMenuIcon").hide();
						expanded = false;
					}
				});
			});
			$(".leftArrowIcon").click(function(){
				window.location = "CardLessTransaction.html";
			});
			
			$("#cardDetailsSubmit").click(function(){
				document.getElementById("cardlessFormDetails").submit();
			});

			var data = {
				"cardDetails": [{
				    "carouselClassName": "item active",
				    "cardImage": "images/atmCard1.png",
				    "cardItemList": "list1",
				    "cardNo": "123456789412",
				  }, {
				    "carouselClassName": "item",
				    "cardImage": "images/atmCard2.png",
				    "cardItemList": "list2",
				    "cardNo": "321456987412",
				  }, {
				    "carouselClassName": "item",
				    "cardImage": "images/atmCard3.png",
				    "cardItemList": "list3",
				    "cardNo": "987456210358",
				  }, {
				    "carouselClassName": "item",
				    "cardImage": "images/atmCard4.png",
				    "cardItemList": "list4",
				    "cardNo": "574512478977",
				  }]
				}			

			for (var key in data) {
			    for (var i = 0; i < data[key].length; i++) {
			        var carouselClassName = data[key][i].carouselClassName;
			        var cardImage = data[key][i].cardImage;
			        var cardNo = data[key][i].cardNo;
			        var cardItemList = data[key][i].cardItemList;
			        
			        cardNoList.push(cardNo+'&'+cardItemList);

			        $( "<div class='" + carouselClassName + "' id='" + cardItemList + "'><img src='" + cardImage + "' alt='Debit Card'><div class='carousel-caption'></div></div>" ).appendTo( ".carousel-inner" );
			    }			   
			}

			$(document).ready(function(){
				$(".closeMenuIcon").hide();
				
				setTimeout(function(){
						activeNode1 = $(".carousel-inner").find(".active").attr('id');
						for (var j = 0; j < cardNoList.length; j++) {
						actualCardNoList1 = cardNoList[j];
						splitCardNoList1 = actualCardNoList1.split("&");
						cardNoList1Part1 = splitCardNoList1[0];
						cardNoList1Part2 = splitCardNoList1[1];

						$("#cardlessFormDetails").empty();

						if(activeNode1 == cardNoList1Part2){
							$( "<div class='form-group'><label for='cardNo' class='cardNoLabel'>Card Number</label><input type='number' class='form-control' name='cardNo' id='cardNo' value='" + cardNoList1Part1 + "'></div><br/><button type='submit'  id='cardDetailsSubmit' class='btn btn-primary'>Use This Card</button>" ).appendTo( "#cardlessFormDetails" );
							return false;
						}
					}
				}, 500);
			});

			$(".left, .right").on('click', function(){
				setTimeout(function(){
					activeNode2 = $(".carousel-inner").find(".active").attr('id');
					for (var j = 0; j < cardNoList.length; j++) {
						actualCardNoList2 = cardNoList[j];
						splitCardNoList2 = actualCardNoList2.split("&");
						cardNoList2Part1 = splitCardNoList2[0];
						cardNoList2Part2 = splitCardNoList2[1];

						$("#cardlessFormDetails").empty();

						if(activeNode2 == cardNoList2Part2){
							$( "<div class='form-group'><label for='cardNo' class='cardNoLabel'>Card Number</label><input type='number' class='form-control' name='cardNo' id='cardNo' value='" + cardNoList2Part1 + "'></div><br/><button type='submit'  id='cardDetailsSubmit' class='btn btn-primary'>Use This Card</button>" ).appendTo( "#cardlessFormDetails" );
							return false;
						}
					}
				}, 1000);
			});

			
			$.getJSON( "json/cardDetails.json", function( data ) {
			  	/*var items = [];
			  	$.each( data, function( key, val ) {
			    	//items.push( "<li id='" + key + "'>" + val + "</li>" );
			    	$( "<div class='" + key + "'><img src='" + val + "' alt='Debit Card'><div class='carousel-caption'></div></div>" ).appendTo( ".carousel-inner" );
			  	});*/				
			});

			/*$(document).ready(function() {

			    // process the form
			    $('form').submit(function(event) {

			        // get the form data
			        // there are many ways to get this data using jQuery (you can use the class or id also)
			        var formData = {
			            'name'              : $('input[name=name]').val(),
			            'email'             : $('input[name=email]').val(),
			            'superheroAlias'    : $('input[name=superheroAlias]').val()
			        };

			        // process the form
			        $.ajax({
			            type        : 'POST', // define the type of HTTP verb we want to use (POST for our form)
			            url         : 'process.php', // the url where we want to POST
			            data        : formData, // our data object
			            dataType    : 'json', // what type of data do we expect back from the server
			            encode          : true
			        })
		            // using the done promise callback
		            .done(function(data) {

		                // log data to the console so we can see
		                console.log(data); 

		                // here we will handle errors and validation messages
		            });

			        // stop the form from submitting the normal way and refreshing the page
			        event.preventDefault();
			    });

			});*/
		</script>
		
	</body>
</html>
