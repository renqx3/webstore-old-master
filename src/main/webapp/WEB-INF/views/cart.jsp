<!DOCTYPE html>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/koszyk.css"> 

	<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
	<script src="/resource/js/controllers.js"></script>

	<title>Koszyk</title>
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
	
	<div class="bg" >


				<div class="container">
					<h1>Koszyk</h1>
					<p>Produkty w Twoim koszyku</p>
				</div>

		<br>

		<section class="container" ng-app="cartApp">
			<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">

				<div style="padding-bottom:10px; margin-top 10px;">
					<a class="btn btn-danger pull-left"
					   ng-click="clearCart()"> <span
							class="glyphicon glyphicon-remove-sign" ></span> Wyczyść koszyk
					</a> <a href="#" class="btn btn-success pull-right"> <span
						class="glyphicon-shopping-cart glyphicon"></span> Kupuję
				</a>
				</div>
				
				<table class="table table-hover">
					<tr>
						<th>Produkt</th>
						<th>Cena za sztukę</th>
						<th>Liczba sztuk</th>
						<th>Cena</th>
						<th>Akcja</th>

					</tr>
					<tr ng-repeat="item in cart.cartItems">
						<td>{{item.product.productId}}-{{item.product.name}}</td>
						<td>{{item.product.unitPrice}} PLN</td>
						<td>{{item.quantity}}</td>
						<td>{{item.totalPrice}} PLN</td>
						<td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)"> <span
								class="glyphicon glyphicon-remove" /></span> Usuń
						</a></td>
					</tr>
					<tr>
						<th></th>
						<th></th>
						<th>Łączna cena</th>
						<th>{{cart.grandTotal}} PLN</th>
						<th></th>
					</tr>
				</table>

				<a href="<spring:url value="/products" />" class="btn btn-default">
					<span class="glyphicon-hand-left glyphicon"></span> Wróć do zakupów
				</a>
			</div>
		</section>
	</div>
</body>
</html>
