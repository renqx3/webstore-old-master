<!DOCTYPE html>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/custom.css"> <!-- nasze wlasne style w custom.css -->
<title>Witaj</title>
</head>
 <body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  <a class="navbar-brand" href="welcome.html"><span class="glyphicon glyphicon-tags" aria-hidden="true"></span> JS&Kptn OutdoorShop</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse navbar-right">
			  <ul class="nav navbar-nav">
				<li><a href="login.html">Moje konto</a></li>
				<li><a href="cart.html">Koszyk</a></li>
			  </ul>
			</div><!--/.nav-collapse -->
		  </div>
		</nav> 
	<div class="container-fluid">
		<div class="nav_second">
			<nav class="navbar kategorie">
				<div class="container">
					<div id="navbar" class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false" >Akcesoria</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Scyzoryki i noże</a></li>
									<li><a href="#">Miski i kubki termiczne</a></li>
									<li><a href="#">Sprzęt wspinaczkowy</a></li>
									<li><a href="#">Latarki</a></li>
									<li><a href="#">Wszystko</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false" >Bagaż</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Plecaki</a></li>
									<li><a href="#">Torby</a></li>
									<li><a href="#">Saszetki</a></li>
									<li><a href="#">Wszystko</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false" >Buty damskie</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Letnie</a></li>
									<li><a href="#">Zimowe</a></li>
									<li><a href="#">Sandały</a></li>
									<li><a href="#">Wszystko</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false" >Odzież damska</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Kurtki</a></li>
									<li><a href="#">Bluzy i polary</a></li>
									<li><a href="#">Bielizna termoaktywna</a></li>
									<li><a href="#">T-shirty</a></li>
									<li><a href="#">Spodnie</a></li>
									<li><a href="#">Wszystko</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false" >Buty męskie</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Letnie</a></li>
									<li><a href="#">Zimowe</a></li>
									<li><a href="#">Sandały</a></li>
									<li><a href="#">Wszystko</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false" >Odzież męska</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Kurtki</a></li>
									<li><a href="#">Bluzy i polary</a></li>
									<li><a href="#">Bielizna termoaktywna</a></li>
									<li><a href="#">T-shirty</a></li>
									<li><a href="#">Spodnie</a></li>
									<li><a href="#">Wszystko</a></li>
									
								</ul>
								
							</li>

							</ul>
						</ul>
					</div><!--koniec .navbar -->
				</div><!--koniec .container -->
			</nav>
		</div> <!--koniec .nav_second -->
	</div><!--koniec .container-fluid --> 
	<div class="bg">
		<div class="jumbotron">
		  <div class="container text-center col-sm-offset-4 col-sm-6">
			  <div class="naglowek">
				<h1> ${greeting} </h1>
				<p> ${tagline} </p>
			  </div>
		  </div>
		  <br/>

				<form class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-offset-4 col-sm-4 ">
							<br>
							<input type="email" class="form-control" id="inputEmail3" placeholder="buty, plecaki, ubrania...">
						</div>
						<div class="col-sm-2">
							<br>
							<button type="submit" class="btn-lg btn-primary">Szukaj przedmiotów</button>
						</div>
					</div>
					
				</form>
		</div>

	
	
		
		<div class="container">
		<div class="row">
			<div class="col-sm-10">
				<h2>Najchętniej wybierane</h2>
				<p>Zobacz co wybrali inni</p>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-3">
				<a href="#" class="thumbnail">
					<img src="img/1.jpg" style="height:143px">
					<h4><strong>Moneta z 1894 roku</strong> <span class="label label-default text-right">45 zł</span></h4>
				</a>
			</div>
					<div class="col-sm-3">
				<a href="#" class="thumbnail">
					<img src="img/2.jpg" style="height:143px">
					<h4><strong>Telefon komórkowy</strong> <span class="label label-default text-right">99 zł</span></h4>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="#" class="thumbnail">
					<img src="img/3.jpg" style="height:143px">
					<h4><strong>Stary laptop</strong> <span class="label label-default text-right">125 zł</span></h4>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="#" class="thumbnail">
					<img src="img/4.jpg" style="height:143px">
					<h4><strong>Dżojstik (sprawny)</strong> <span class="label label-default text-right">20 zł</span></h4>
				</a>
			</div>
				<div class="col-sm-2 col-sm-offset-9">
				<a href="#" class="btn btn-success">Zobacz wszystkie</a>
			</div>
		</div>


		
	</div>
        <script src="http://code.jquery.com/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
   </body>


</html>
