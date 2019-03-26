package com.vehicle;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.swing.*;
public class login extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("username");
        String pass = request.getParameter("password");
        String usertype=request.getParameter("usertype");
        if(usertype.equals("user"))
        {
            if(Validate.checkUser(email, pass))
            {
                HttpSession session=request.getSession();
                session.setAttribute("name",email);
                response.sendRedirect("dashboard.html");
                 
            }
            else
            {
                 out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                 out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                 out.println("<script>");
                 out.println("$(document).ready(function(){");
                 out.println("swal('Oops','Incorrect username or password!' ,'error' )");
                 out.println("});");
                 out.println("</script>");
                 RequestDispatcher rs = request.getRequestDispatcher("login.html");
                 rs.include(request, response);

            }
        }
        else if(usertype.equals("admin"))
        {
            if(Validate.checkadmin(email, pass))
            {
                 out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                 out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                 out.println("<script>");
                 out.println("$(document).ready(function(){");
                 out.println("swal('Welcome','Login succesful!' ,'success' )");
                 out.println("});");
                 out.println("</script>");
                 response.sendRedirect("dashboardadmin.html");
            }
            else
            {
                 out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                 out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                 out.println("<script>");
                 out.println("$(document).ready(function(){");
                 out.println("swal('Oops','Incorrect username or password!' ,'error' )");
                 out.println("});");
                 out.println("</script>");
                 RequestDispatcher rs = request.getRequestDispatcher("login.html");
                 rs.include(request, response);

            }
        }
    }  
}