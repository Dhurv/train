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

    <title>Admin</title>
  </head>
  <style>
    body{
      background: -webkit-linear-gradient(left, #b0d1b4, #496454);
    }
  </style>
<body>
<div class="container-fluid p-5">
  <h1><span class="badge bg-success">Admin Panel</span></h1>
</div>


<div class="container-fluid px-5">
  <table>
    <tr>
      <form class="">
          <div class="row">
            <div class="col-auto">
              <label for="inputTrainNo" class="form-label">Train No</label>
              <input type="text" class="form-control" id="inputTrainNo">
            </div>
            <div class="col-auto">
              <label for="inputTrainName" class="form-label">Train Name</label>
              <input type="text" class="form-control" id="inputTrainName">
            </div>
            <div class="col-auto">
              <label for="inputSource" class="form-label">Source</label>
              <input type="text" class="form-control" id="inputSource">
            </div>
            <div class="col-auto">
              <label for="inputDestination" class="form-label">Destination</label>
              <input type="text" class="form-control" id="inputDestination">
            </div>
            <div class="col-auto">
              <label for="inputTicketPrice" class="form-label">Ticket Price</label>
              <input type="text" class="form-control" id="inputTicketPrice">
            </div>
          </div><br>
          <div class="btn-group" role="group" aria-label="Basic mixed styles example">
            <button type="button" class="btn btn-success">Add</button>
          </div>
      </form>
    </tr>
  </table>
</div>
<div class="container-fluid">
  <hr style="height: 4px;">
</div>


<div class="container-fluid p-5">
  <table>
    <tr>
      <form class="">
          <div class="row">
            <div class="col-auto">
              <label for="inputTrainNo" class="form-label">Train No</label>
              <input type="text" class="form-control" id="inputTrainNo">
            </div>
            <div class="col-auto">
              <label for="inputTrainName" class="form-label">Train Name</label>
              <input type="text" class="form-control" id="inputTrainName">
            </div>
            <div class="col-auto">
              <label for="inputSource" class="form-label">Source</label>
              <input type="text" class="form-control" id="inputSource">
            </div>
            <div class="col-auto">
              <label for="inputDestination" class="form-label">Destination</label>
              <input type="text" class="form-control" id="inputDestination">
            </div>
            <div class="col-auto">
              <label for="inputTicketPrice" class="form-label">Ticket Price</label>
              <input type="text" class="form-control" id="inputTicketPrice">
            </div>
          </div><br>
          <div class="btn-group" role="group" aria-label="Basic mixed styles example">
            <button type="button" class="btn btn-danger mx-1">Delete</button>
            <button type="button" class="btn btn-success">Update</button>
          </div>
      </form>
    </tr>
  </table>
</div> <!--End of main div-->
      
  
  

</div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>