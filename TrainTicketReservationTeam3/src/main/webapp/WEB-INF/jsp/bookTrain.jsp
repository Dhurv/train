<%@page import="javax.persistence.criteria.CriteriaBuilder.In"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.team3.model.Passenger"%>
<%@page import="java.util.TreeMap"%>
<%@page import="com.team3.model.Train"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    

    <title>Hello, world!</title>
    <style>
        body{
            background-image: url("<%=request.getContextPath()%>/img/back.jpg");
            background-repeat: no-repeat, repeat;
            background-position: center;
            background-size: cover;
            
        }
        
    </style>
    
  </head>
  <body>
    <%-- <div class="container py-2 mt-5 bg-dark text-white opacity-75">
        <h3><span class="badge bg-secondary">Train Details</span></h3>
        <div class="row">
          <div class="col">
            <p>Train No</p>
          </div>
          <div class="col">
            <p>Train name</p>
          </div>
          <div class="col">
            <p>Source</p>
          </div>
          <div class="col">
            <p>Destination</p>
          </div>
          <div class="col">
            <p>Travel Date</p>
          </div>
          <div class="col">
            <p>Ticket Price</p>
          </div>          
        </div>
        <hr>
        <div class="row" style="opacity: .7;">
        <% Train t = (Train) request.getAttribute("trainDetails"); %>
            <div class="col">
              <p><% out.print(t.getTrain_no());%></p>
            </div>
            <div class="col">
              <p><% out.print(t.getTrain_name());%></p>
		    </div>
            <div class="col">
              <p><% out.print(t.getSource());%></p>
		    </div>
            <div class="col">
              <p><% out.print(t.getDestination());%></p>		
            </div>
            <div class="col">
              <p>2021/12/31</p>
            </div>
            <div class="col">
              <p><% out.print(t.getTicket_price());%></p>
            </div>          
          </div>
    </div> --%>
    <!-- start of the form for adding passengers -->
    <div class="container py-5">
        <form class="row g-3" action="/addPassengers" method="post">
            <div class="col-md-3">
              <label for="inputName" class="form-label text-white">Passenger Name</label>
              <input type="text" class="form-control" name="name" placeholder="Enter Name...">
            </div>
            <div class="col-md-3">
              <label for="inputPassword4" class="form-label text-white">Age</label>
              <input type="text" class="form-control" name="age" placeholder="Enter Age...">
            </div>
            <div class="col-md-3">
                <label for="inputPassword4" class="form-label text-white">Gender</label>
                <input type="text" class="form-control" name="gender" placeholder="Enter gender (M/F)">
              </div>
            <div class="col-12">
              <button type="submit" id="btn1" onclick="show()" class="btn btn-primary">Add</button>
            </div>
        </form>
    </div>
    <div class="container py-2 mt-5 bg-dark text-white opacity-75">
        <h3><span class="badge bg-secondary">Passenger Details</span></h3>
        <div class="row">
          <div class="col">
            <p>Passenger Name:</p>
          </div>
          <div class="col">
            <p>Passenger Age</p>
          </div>
          <div class="col">
            <p>Passenger Gender</p>
          </div>   
          <div class="col">
            <p>Fare</p>
          </div>       
        </div>
        <hr>
        <%ArrayList<Passenger> list = (ArrayList) request.getAttribute("passengerDetails"); %>
            <%
            if(list != null){
            for(Passenger p:list){ 
            
            %>
            <form action="/deletePassenger" method="post">
		        <div class="row">
		        
		            <div class="col">
		            
		              <p><input type="text" name="name" value="<%out.print(p.getName());%>"/></p>
		            </div>
		            <div class="col">
		              <p><input type="text" name="age" value="<%out.print(p.getAge());%>"/></p>
				    </div>
		            <div class="col">
		              <p><input type="text" name="gender" value="<%out.print(p.getGender()); %>"/></p>
				    </div>
				    <div class="col">
		              <p>total fare</p>
				    </div>
				    
				    <div class="col">
		              <input type="submit" class="btn btn-danger" value="Remove">
				    </div>
				    
		    	</div>
    		</form>
    	<%}} %>
    </div>
    
    <% if(list != null) { %>
    <div class="container py-3">
      <div class="text-center">
      	<form action="/payment" method="get">
        	<button type="submit" class="btn btn-primary btn-lg ">Book Train</button>
        </form>
      </div>
    </div>
    <%} %>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <%-- <script src="<%=request.getContextPath()%>/js/index.js"></script>  --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    
     
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
        
  </body>
</html>