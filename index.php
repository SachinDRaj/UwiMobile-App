<?php


?>



<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Uwi Web App</title>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


  	<link href="css/index.css" rel="stylesheet">

	<style type="text/css">
	</style>

	<script>

</script>
</head>

<body id="bg" data-spy="scroll" data-target=".navbar" data-offset="50">

<!-- **************************************************************************************************** -->
<!-- Carousel -->
	 
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	      <li data-target="#myCarousel" data-slide-to="3"></li>
	    </ol>

	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">

	      <div class="item active">
	        <img src="img/uwi1.jpg" alt="UWI St.Augustine" width="460" height="345">
		      <div class="carousel-caption">
			    <h3>UWI</h3>
			    <p>Uwi Campus St.Augustine Trinidad and Tobago.</p>
			  </div>
	      </div>

	      <div class="item">
	        <img src="img/uwi2.jpg" alt="UWI St.Augustine" width="460" height="345">
	        <div class="carousel-caption">
			    <h3>UWI</h3>
			    <p>Uwi Campus St.Augustine Trinidad and Tobago.</p>
			</div>
	      </div>
	    
	      <div class="item">
	        <img src="img/uwi3.jpg" alt="UWI St.Augustine" width="460" height="345">
	        <div class="carousel-caption">
			    <h3>UWI</h3>
			    <p>Uwi Campus St.Augustine Trinidad and Tobago.</p>
			</div>
	      </div>

	      <div class="item">
	        <img src="img/uwi4.jpg" alt="UWI MONA" width="460" height="345">
	        <div class="carousel-caption">
			    <h3>UWI</h3>
			    <p>Uwi Campus St.Augustine Trinidad and Tobago.</p>
			</div>
	      </div>
	    </div>

	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	
<!-- **************************************************************************************************** -->
<!-- Nav Bar top of page -->

	<nav class="navbar navbar-inverse navbar-fixed-top">
	  <div class="container-fluid">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">UWI MOBILE</a>
	    </div>
	    <div>
	      <div class="collapse navbar-collapse" id="myNavbar">
	        <ul class="nav navbar-nav">
	          <li><a href="#section1">About the Uwi</a></li>
	          <li><a href="#section2">News Feed</a></li>
	          <li><a href="#section3">How To Apply</a></li>
	          <li><a href="#section4">Our Programmes</a></li>
	          <li><a href="#section5">Contact Us</a></li>
	        </ul>
	      </div>
	    </div>
	  </div>
	</nav>

<!-- **************************************************************************************************** -->
<!-- Jumbotron and Nav Bar right of page -->

	<div class="container-fluid">
      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">More Information</button>
          </p>
          <div class="jumbotron">
            <h1>Hello, world!</h1>
            <p>This is an example to show the potential of an offcanvas layout pattern in Bootstrap. Try some responsive-range viewport sizes to see it in action.</p>
          </div>
        </div>


        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
          <div class="list-group">
            <a href="#" class="list-group-item active">Admissions</a>
            <a href="programmes.php" class="list-group-item">Our Programmes</a>
            <a href="#" class="list-group-item">Student Resources and Financial Aid</a>
            <a href="#" class="list-group-item">Map of UWI</a>
            <a href="#" class="list-group-item">Contact Us</a>
            <a href="#" class="list-group-item">Visit the Official Site</a>
          </div>
        </div>
      </div>

    </div>

<!-- **************************************************************************************************** -->
<!-- All other Sections -->

	<div id="section1" class="container-fluid">
	  <h1>Section 1</h1>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	</div>
	<div id="section2" class="container-fluid">
	  <h1>Section 2</h1>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	</div>
	<div id="section3" class="container-fluid">
	  <h1>Section 3</h1>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	</div>

	<div id="section4" class="container-fluid">
	  <h1>Section 4</h1>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	</div>

	<div id="section5" class="container-fluid">
	  <h1>Section 5</h1>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	  <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
	</div>




	<script src="js/canvas.js"></script>
</body>



</html>

