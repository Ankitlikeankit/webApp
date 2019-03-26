<%-- 
    Document   : selectNumber
    Created on : Mar 13, 2019, 10:15:45 PM
    Author     : Ankit Singh
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            .btn
            {
                border:none;
                border-radius:2.5rem;
                padding: 1%;
                width: 20%;
                cursor: pointer;
                
            }
            .container{
                margin-top:25px;
            }
            .form-content
            {
                padding: 5%;
                margin-right: 5%;
                margin-bottom: 2%;
            }
            .form-control{
                border-radius:1.5rem;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <center><h3 style="color:blue;"><u><i>APPLICANTS HOME</i></u></h3></center>
            <form action="registervehicle" method="post">
                <div class="container" style="border:2px solid burlywood">
                            <div class="form-content">
                                
                                <div class="form-group  col-md-4">
                                     <label for="rtoname">Select RTO name:  </label>
                                     <select class="form-control"  required name="rtoname" style=" max-width: 320px;">
					<option disabled selected hidden value=""> --Select RTO name--</option>
                                        <option >BR01-RTO patna</option>
                                        <option >BR02-RTO Gaya</option>
                                        <option >BR03-RTO Aarah</option>
                                        <option>BR04-RTO Chhapra</option>
                                        <option>BR05-RTO Motihari</option>
                                        <option>BR06-RTO Muzaffarpur</option>
                                        <option>BR07-RTO Darbhanga</option>
                                        <option>BR08-RTO Munger</option>
                                        <option>BR09-RTO Begusarai</option>
                                        <option>>BR10-RTO Purnia</option>
                                     </select> 
                                </div>
                                
                                <div class="form-group  col-md-4">
                                    <label for="vclass">Select Vechile Category:  </label>
                                    <select class="form-control" name="vclass" style=" max-width: 320px;" required>
                                            <option disabled selected hidden value=""> -- Select Vechile category--</option>
                                            <option>Motorcycle</option>
                                            <option>Cars</option>
                                            <option>Buses</option> 
                                            <option>Three tier Rickshaw</option> 
                                            <option>Two axle-trucks</option> 
                                            <option>Three axle-trucks</option>
                                            <option>Four axle-trucks</option>
                                            <option>other</option>       
                                       </select>
                                </div>
                                
                                <div class="form-group col-md-4">
                                    <label for="rno">Enter Registration Number:  </label>
                                    <input type="text" class="form-control" required placeholder="Enter Registration number" name="rno" style=" max-width: 320px;">
                                </div>
                                <center><div class="form-group">
                                    <label for="no">Enter Number:  </label>
                                    <input type="text" class="form-control" placeholder="Enter 4-digit number" name="no" style=" max-width: 300px;" required>
                                </div>
                                    <button class=" btn btn-danger" type="submit">Check Availability</button>
                                    
                                </center>

                            </div>
                        </div>
            </form>
        </div>
    </body>
</html>
