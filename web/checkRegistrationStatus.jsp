
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css">
       
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script> 
            $(function(){
              $("#header").load("navbar.html"); 
              $("#footer").load("footer.html"); 
            });
        </script> 
        <style>
            .panel{
                margin-top: 5%;
                width: 80%;
            }
            .panel-body{
                margin-left:130px;
                margin-top: 50px;
                color: red;
                height: 350px;
            }
            .form-content{
                margin-top: 25px;
            }
            .form-control{
                border-radius:1.5rem;
            }
            .form-group{
                color: blueviolet;
                
                margin-left: 80px;
            }
            
        </style>
    </head>
    <body>
        
        <div class="container">
            <div class="panel panel-info ml-auto mr-auto">
                <div class="panel-heading"><center><h2>Vehicle Registration Status</h2></center></div>
                <div class="panel-body">
                    <div class="container search">
                    <i><u>  BY Chasis No : </u></i>
                    <form action="checkRegistration" method="post">
                        <div class="container">
                            <center>
                            <div class="form-content">
                                <div class="form-group form-inline">
                                    <label for="chasisno">Enter Chasis No :   </label>
                                    <input name="chasisno" type="text" class="form-control" value="" required style="margin-left: 30px; max-width: 220px;">
                                </div>
                                <center><button type="submit" class="btn btn-primary btn-block" style=" margin-right: 520px; max-width: 120px;">Search Vehicle</button></center>
                            </center>
                        </div>
                    </form>
                    </div>
                     
                     
                        

                </div>
             </div>
                
        </div>
    
    </body>
</html> 
