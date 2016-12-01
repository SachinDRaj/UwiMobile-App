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

  	<link href="css/template2.css" rel="stylesheet">

	<style type="text/css">
	</style>
	
	<script>

</script>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">
<!-- **************************************************************************************************** -->
<!-- Nav bar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">UWI MOBILE - Programmes</a>
      </div>
      <div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Home Page</a></li>
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
<!-- second Nav bar for search-->
<div class="tab">
    <ul class="nav nav-tabs" id="myTab">
        <li class="active"><a href="#sectionA">Search All Degrees</a></li>
        <li><a href="#sectionB">Search by Grades</a></li>
      
    </ul>
    <div class="tab-content">

        <!-- Search All Degrees-->
        <div id="sectionA" class="tab-pane fade in active">

            <div id="col1" class="container">
              <h3>Choose Faculty</h3>
              <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#home" data-toggle="pill">Faculty of Engineering</a></li>
                <li><a href="#home" data-toggle="pill">Faculty of Food & Agriculture</a></li>
                <li><a href="#home" data-toggle="pill">Faculty of Humanities & Education</a></li>
                <li><a href="#home" data-toggle="pill">Faculty of Law</a></li>
                <li><a href="#home" data-toggle="pill">Faculty of Medical Sciences</a></li>
                <li><a href="#home" data-toggle="pill" >Faculty of Science & Technology</a></li>
                <li><a href="#home" data-toggle="pill">Faculty of Social Sciences</a></li>
              </ul>
            </div>

            <div id="col2" class="container">
            <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
              <h3>Choose Degree</h3>
              <ul class="nav nav-pills nav-stacked">
                <li><a href="#" data-toggle="modal" data-target="#myModal">Option 1</a></li>
                <li><a href="#" data-toggle="modal" data-target="#myModal">Option 2</a></li>
                <li><a href="#" data-toggle="modal" data-target="#myModal">Option 2</a></li>
                <li><a href="#" data-toggle="modal" data-target="#myModal">Option 3</a></li>
              </ul>
            </div>
            </div>
            </div>
            
        </div>

        <!-- Search by Grades -->
        <div id="sectionB" class="tab-pane fade">
            <h3>Section B</h3>
            <p>Vestibulum nec erat eu nulla rhoncus fringilla ut non neque. Vivamus nibh urna, ornare id gravida ut, mollis a magna. Aliquam porttitor condimentum nisi, eu viverra ipsum porta ut. Nam hendrerit bibendum turpis, sed molestie mi fermentum id. Aenean volutpat velit sem. Sed consequat ante in rutrum convallis. Nunc facilisis leo at faucibus adipiscing.</p>
        </div>

       
    </div>
</div>


<!-- **************************************************************************************************** -->
<!-- Modal Window -->

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">

      <!-- Modal content-->
      <div class="modal-content">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Course Name</h4>
        </div>

        <div class="modal-body">
          <p>About Course</p>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>

      </div>
    </div>
  </div>

<!-- **************************************************************************************************** -->

<script src="js/programmes.js"></script>
</body>


</html>