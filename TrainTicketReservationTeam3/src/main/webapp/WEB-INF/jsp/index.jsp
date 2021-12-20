<%@page import="com.team3.model.Train"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html xmlns:th="http://www.thymeleaf.org">
  <head>
    <title>Indian Railways Booking</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link th:href="@{/styles/cssandjs/main.css}" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v6.0"></script>
    <link rel="stylesheet" href="style.css">
 <style>
	@import url('https://fonts.googleapis.com/css2?family=EB+Garamond:wght@600&display=swap');
		body{
            background-image: url("<%=request.getContextPath()%>/img/back.jpg");
            background-repeat: no-repeat, repeat;
            background-position: center;
            background-size: cover;
            
        }

.style-font{
	font-family: 'EB Garamond', serif;
	color:white;
	background-color: purple;
	padding: 2px;
	border-radius: 2px;
}
    
     /* Make the image fully responsive */
  body {
  background-color: lightblue;
}

  .carousel-inner img {
    width: 100%;
    height: -1%;
  }
  .card-item img {
    width: 305px;
    height: 300px;
  }

  .list-group img {
    width: 305px;
    height: 300px;
  }


   .gallery img {
    width: 305px;
    height: 300px;
  }

  .enroll-button {
    width: 100%;
    height: 100%;
  }


  .col-md-3 {
    display: inline-block;
    margin-left:-4px;
  }

  .carousel-indicators .active {
    background-color: blue;
  }

  .col-md-3 img{

    width: 255px;
    height:250px;
  }

  body .carousel-indicator li{
    background-color: blue;
  }

  body .carousel-indicators{
    bottom: 0;
  }

  body .carousel-control-prev-icon,
    body .carousel-control-next-icon{
    background-color: blue;
  }
/*  body .no-padding{
    padding-left: 0,
    padding-right: 0
  }*/

.img-fluid:hover {
  opacity: 0.3;
}

 .media-body:hover text{
  opacity: 1;
}




.fa {
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}

.fa-pinterest {
  background: #cb2027;
  color: white;
}

.fa-snapchat-ghost {
  background: #fffc00;
  color: white;
  text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}

.fa-skype {
  background: #00aff0;
  color: white;
}

.fa-android {
  background: #a4c639;
  color: white;
}

.fa-dribbble {
  background: #ea4c89;
  color: white;
}

.fa-vimeo {
  background: #45bbff;
  color: white;
}

.fa-tumblr {
  background: #2c4762;
  color: white;
}

.fa-vine {
  background: #00b489;
  color: white;
}

.fa-foursquare {
  background: #45bbff;
  color: white;
}

.fa-stumbleupon {
  background: #eb4924;
  color: white;
}

.fa-flickr {
  background: #f40083;
  color: white;
}

.fa-yahoo {
  background: #430297;
  color: white;
}

.fa-soundcloud {
  background: #ff5500;
  color: white;
}

.fa-reddit {
  background: #ff5700;
  color: white;
}

.fa-rss {
  background: #ff6600;
  color: white;
  }
  h6{

   text-align: center;
   font-size: 40px;
   margin-top: 0px;
   background-image: linear-gradient(lightblue,green)

  }
  .image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}


.containeriri:hover .middle {
  opacity: 1;
}
  /*{ margin:0; padding: 0; font-family: 'Courgette', cursive;  */

    
</style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark bg-dark" style="opacity: .7">
  <a class="navbar-brand" href="#">
      Train
    </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto d-flex justify-content-around ">
      <li class="nav-item active p-2">
        <a class="nav-link" href="/home">Home <span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item active p-2">
        <a class="nav-link" href="">About </a>
      </li>


      <li class="nav-item active p-2">
         <a class="nav-link enabled" href="/tut/mypost" tabindex="-1" aria-disabled="false">Contact Us </a>
      </li>

    </ul>
    <form action="/profile">
      <button type="submit" class="btn btn-primary btn-sm mx-2">Log In</button>
    </form>
    <form action="">
      <button type="button" class="btn btn-danger btn-sm mx-2">Logout</button>
    </form>
    <form class="form-inline my-2 my-lg-0" action="/adminLogin">      
      <button type="sumbit" class="btn btn-info btn-sm mx-2">Admin</button>
	</form>
  </div>
</nav>
<div class="container align-center py-5">
    <div class="row justify-content-center align-items-center">
        <div class="col-sm-4">
            <form action="/findTrains" method="post" id="form1">
                <div class="row mb-3">                
                <div class="col-sm-10">
                    <label for="inputEmail3" class="form-label style-font">Train No</label>
                    <input type="text" class="form-control" placeholder="Enter train No" name="trainNo" id="trainNo">
                </div>
                </div>
                <div class="row mb-3">
                <div class="col-sm-10">
                    <label for="inputPassword3" class="form-label style-font">Date</label>
                    <input type="date" class="form-control" name="TravelDate" id="inputPassword3">
                </div>
                </div>
                <p class="style-font" style="padding:0">
                <% String str = (String) request.getAttribute("msg");
                	if(str != null){
                		out.print(str);
                	}
                %>
                </p>
             	<button type="submit" id="btn1" class="btn btn-primary">Search</button>
            </form>
        </div>
        
        <div class="col-sm-4">
            <form action="/trainDetails" method="post">
                <div class="row mb-3">
                	<div class="col-sm-10">
                        <label for="inputEmail3" class="form-label style-font">Enter Source</label>
                        <input type="text" class="form-control" placeholder="Enter Source" name="source" id="inputEmail3">
                    </div>
                </div>
                <div class="row mb-3">                    
                    <div class="col-sm-10">
                        <label for="inputPassword3" class="form-label style-font">Enter Destination</label>
                        <input type="text" class="form-control" placeholder="Enter Destination" name="destination" id="inputPassword3">
                    </div>                    
                </div>
                <div class="row mb-3">
                
                    <div class="col-sm-10">
                        <label for="inputPassword3" class="form-label style-font">Date</label>
                        <input type="date" class="form-control" id="inputPassword3">
                    </div>
                </div> 
                <p class="style-font" style="padding:0">
	                <% String str1 = (String) request.getAttribute("msg1");
	                	if(str1 != null){
	                		out.print(str1);
	                	}
	                %>
                </p>                                  
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>
  </div>















 <footer class="fixed-bottom text-center bg-primary text-white">

    <div class="bg-dark py-3">
   		<p>@copyright ticketbooking.com 2020</p>
    </div>
</footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>-->
<script >
 
</script>
</body>
</html>