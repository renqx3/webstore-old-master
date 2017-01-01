<!DOCTYPE html>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/custom.css"> 
	<title>Produkty</title>
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
				<li><a href="<c:url value="/j_spring_security_logout" />">wyloguj</a></li>
				<li><a href="cart.html">Koszyk</a></li>
				<li><a href="?language=pl" style="color:red">polski</a></li>
				<li><a href="?language=nl" style="color:aqua">holenderski</a></li>
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
			<section>
			<div class="jumbotron">
				<div class="container text-center col-sm-offset-4 col-sm-6">
					<div class="naglowek">
						<h1>JS&Kaptn outdoor sklep!!"</h1>
						<p>Wszystkie dostępne produkty</p>
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
		</section>



		<section class="container">
			<form:form  modelAttribute="newProduct" class="form-horizontal" enctype="multipart/form-data">
				<fieldset>
					<legend>Dodaj nowy produkt</legend>

					<form:errors path="*" cssClass="alert alert-danger" element="div"/>
					<div class="form-group">
						<label class="control-label col-lg-2 col-lg-2" for="productId"><spring:message code="addProduct.form.productId.label"/></label>
						<div class="col-lg-10">
							<form:input id="productId" path="productId" type="text" class="form:input-large"/>
							<form:errors path="productId" cssClass="text-danger"/>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2" for="name"><spring:message code="addProduct.form.name.label"/></label>
						<div class="col-lg-10">
							<form:input id="name" path="name" type="text" class="form:input-large"/>
							<form:errors path="name" cssClass="text-danger"/>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2" for="unitPrice"><spring:message code="addProduct.form.unitPrice.label"/></label>
						<div class="col-lg-10">
							<div class="form:input-prepend">
								<form:input id="unitPrice" path="unitPrice" type="text" class="form:input-large"/>
								<form:errors path="unitPrice" cssClass="text-danger"/>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2" for="description"><spring:message code="addProduct.form.description.label"/></label>
						<div class="col-lg-10">
							<form:textarea id="description" path="description" rows = "2"/>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2" for="manufacturer"><spring:message code="addProduct.form.manufacturer.label"/></label>
						<div class="col-lg-10">
							<form:input id="manufacturer" path="manufacturer" type="text" class="form:input-large"/>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2" for="category"><spring:message code="addProduct.form.category.label"/></label>
						<div class="col-lg-10">
							<form:input id="category" path="category" type="text" class="form:input-large"/>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2" for="unitsInStock"><spring:message code="addProduct.form.unitsInStock.label"/></label>
						<div class="col-lg-10">
							<form:input id="unitsInStock" path="unitsInStock" type="text" class="form:input-large"/>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2" for="productImage"><spring:message code="addProduct.form.productImage.label"/></label>
						<div class="col-lg-10">
							<form:input id="productImage" path="productImage" type="file"
										class="form:input-large" />
						</div>
					</div>


					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<input type="submit" id="btnAdd" class="btn btn-primary" value ="Dodaj"/>
						</div>
					</div>

				</fieldset>
			</form:form>
		</section>
</div>
</body>
</html>
