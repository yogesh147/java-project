/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author hp
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); {
                 String answer1=request.getParameter("Answer1");
              String answer2=request.getParameter("Answer2");
               
                
                
         if(request.getParameter("submit")!=null)
              
         {
      try
          {
              String name=request.getParameter("name");
              String email=request.getParameter("email");
              String password=request.getParameter("password");
              String phone=request.getParameter("phone");
              String city=request.getParameter("city");
              
             
      
          Class.forName("com.mysql.jdbc.Driver");
              Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
              Statement stmt=conn.createStatement();
 boolean result =stmt.execute("insert into register(name,email,password,answer1,answer2,phone,city) values ('"+name+"','"+email+"','"+password+"','"+answer1+"','"+answer2+"','"+phone+"','"+city+"')"); 
 // out.print("insert into register(name,email,password,answer1,answer2,phone,city) values ('"+name+"','"+email+"','"+password+"','"+answer1+"','"+answer2+"','"+phone+"','"+city+"')");       
 if(result==false) {
              JOptionPane.showMessageDialog(null,"Welcome");
              
               response.sendRedirect("Login.jsp");
          }
          else {
              JOptionPane.showMessageDialog(null,"Signup failed");
             
          }
          }
          catch(Exception e)
          {
          out.println(e);
          }
         }
      
    
        
        }
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
