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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ankit Singh
 */
public class registervehicle extends HttpServlet{

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            response.setContentType("text/html;charset=UTF-8");
           PrintWriter out = response.getWriter();
        
            String rtoname1 = request.getParameter("rtoname");
            String chasisno1 = request.getParameter("chasisno");
            String engineno = request.getParameter("engineno");
            String ownership = request.getParameter("ownership");
            String vtype = request.getParameter("vtype");
            String vclass= request.getParameter("vclass");
            String btype = request.getParameter("btype");
            String maker = request.getParameter("maker");
            String mdate= request.getParameter("mdate");
            String pdate= request.getParameter("pdate");
            String saleamount=request.getParameter("saleamount");
            
            
            String icompany = request.getParameter("icompany");
            String coverno = request.getParameter("coverno");
            String itype = request.getParameter("itype");
            String istart=request.getParameter("istart");
            String iend=request.getParameter("iend");
            
            String ownername = request.getParameter("ownername");
            String panno = request.getParameter("panno");
            String caddress = request.getParameter("caddress");
            String ccity = request.getParameter("ccity");
            String cpincode = request.getParameter("cpincode");
            String dname = request.getParameter("dname");
            String fname = request.getParameter("fname");
            String mobno = request.getParameter("mobno");
            String paddress = request.getParameter("paddress");
            String pcity = request.getParameter("pcity");
            String ppincode = request.getParameter("ppincode");

            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle","root","");
                
                PreparedStatement ps=con.prepareStatement("insert into v values(?,?,?,?,?,?,?,?,?,?,?)"); 
                ps.setString(1,rtoname1);
                ps.setString(2,chasisno1);
                ps.setString(3,engineno);
                ps.setString(4,ownership);
                ps.setString(5,vtype);
                ps.setString(6,vclass);
                ps.setString(7,btype);
                ps.setString(8,maker);
                ps.setString(9,mdate);
                ps.setString(10,pdate);
                ps.setString(11,saleamount);
                int i=ps.executeUpdate();
                
                
                PreparedStatement pst=con.prepareStatement("insert into insurance values(?,?,?,?,?,?)");
                pst.setString(1,chasisno1);
                pst.setString(2,icompany);
                pst.setString(3,coverno);
                pst.setString(4,itype);
                pst.setString(5,istart);
                pst.setString(6,iend);
                int j=pst.executeUpdate();
                
                PreparedStatement pstm=con.prepareStatement("insert into owner values(?,?,?,?,?,?,?,?,?,?,?,?)");
                pstm.setString(1,ownername);
                pstm.setString(2,panno);
                pstm.setString(3,caddress);
                pstm.setString(4,ccity);
                pstm.setString(5,cpincode);
                pstm.setString(6,dname);
                pstm.setString(7,fname);
                pstm.setString(8,mobno);
                pstm.setString(9,paddress);
                pstm.setString(10,pcity);
                pstm.setString(11,ppincode);
                pstm.setString(12,chasisno1);        
                int k=pstm.executeUpdate();
                
                if(k>0) {
                    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                    out.println("<script>");
                    out.println("$(document).ready(function(){");
                    out.println("swal('Congrats','Registered Successfully..!' ,'success' )");
                    out.println("});");
                    out.println("</script>");
                    RequestDispatcher rs = request.getRequestDispatcher("dashboard.html");
                    rs.include(request, response);
                }
                else {
                    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                    out.println("<script>");
                    out.println("$(document).ready(function(){");
                    out.println("swal('error','Registered failed..!' ,'error' )");
                    out.println("});");
                    out.println("</script>");
                    RequestDispatcher rs = request.getRequestDispatcher("dashboard.html");
                    rs.include(request, response);
                }
            }
            catch (Exception e2){
                System.out.println(e2);
            }
        }     
    }       

    

    

