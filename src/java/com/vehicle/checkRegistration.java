/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vehicle;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ankit Singh
 */
public class checkRegistration extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String chasisno = request.getParameter("chasisno");
        try{  
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root","");  
            Statement stmt = con.createStatement();
            Statement stmt1 = con.createStatement();
            String query ="SELECT ownername,engineno,ownership,vclass,vtype from owner inner join v on owner.chasisno = v.chasisno where v.chasisno='"+chasisno+"' ";
            String query1 ="SELECT rnumber from rno where rno.chasisno='"+chasisno+"' ";
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next() == false) {
                out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                 out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                 out.println("<script>");
                 out.println("$(document).ready(function(){");
                 out.println("swal('Oops','NO DATA FOUND!' ,'error' )");
                 out.println("});");
                 out.println("</script>");
                 RequestDispatcher rd = request.getRequestDispatcher("checkRegistrationStatus.jsp");
                 rd.include(request, response);
              }
            else{ 
                do   
                {
                     request.setAttribute("ownername",rs.getString(1).toUpperCase());
                     request.setAttribute("engineno",rs.getString(2).toUpperCase());
                     request.setAttribute("ownership",rs.getString(3).toUpperCase());
                     request.setAttribute("vclass",rs.getString(4).toUpperCase());
                     request.setAttribute("vtype",rs.getString(5).toUpperCase());
                }
                while(rs.next());
                
                 rs = stmt1.executeQuery(query1);
                if(rs.next()==false)
                {
                    request.setAttribute("rno","NOT FOUND");
                }
                else{
                    request.setAttribute("rno",rs.getString(1).toUpperCase());
                }
               request.getRequestDispatcher("Datapage.jsp").forward(request, response);
            }
      
         
      
      
        }
            catch (Exception e2){
                System.out.println(e2);
            }  
       

  

            out.close();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
