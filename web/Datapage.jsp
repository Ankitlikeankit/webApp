<%-- 
    Document   : Datapage
    Created on : Mar 10, 2019, 11:45:10 PM
    Author     : Ankit Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Vehicle</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
      .table{
          margin-top: 150px;
      }
      .button{
          margin-left: 400px;
      }
      .btn
            {
                border:none;
                border-radius:1.5rem;
                padding: 1%;
                width: 20%;
                cursor: pointer;
                margin-top: 50px;
            }
  </style>
</head>
<body>

    <div class="container" style="border:2px;">
  <table class="table">
    <thead class="thead-dark">
      <tr>
        <th>OwnerName</th>
        <th>Engine No</th>
        <th>ownership</th>
        <th>Vechile Class</th>
        <th>Vechile type</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${ownername}</td>
        <td>${engineno}</td>
        <td>${ownership}</td>
        <td>${vclass}</td>
        <td>${vtype}</td>
      </tr>
    </tbody>
  </table>
        <center><h2>STATUS  :</h2><h4> Registration No: ${rno}</h4></center>
      <div class="button">
      
      <a href="checkRegistrationStatus.jsp"><button class=" btn btn-danger">Search Again</button></a>
      <a href="dashboard.html"><button class=" btn btn-primary ">Cancel</button></a>
      </div>
</div>

</body>
</html>

