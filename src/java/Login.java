/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import javax.swing.JOptionPane;

/**
 *
 * @author hp
 */
public class Login extends HttpServlet {

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
        try
        {
            String email=request.getParameter("email");
            String password=request.getParameter("password");
          
            Class.forName("com.mysql.jdbc.Driver");
              Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost/tarunclark", "root", "");
              Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from register WHERE email='"+email+"' && password='"+password+"'");
 boolean rad= rs.next();
 {
          if(rad==false) {
              
             //JOptionPane.showMessageDialog(null,"Wrong credentials");
              response.sendRedirect("login.html"); 
              out.println("<p>Email or password incorrect</p>");
                
              
              }        
          else
          {   
              String named=rs.getString(2);
         String emaild=rs.getString(3);
         String passwordd=rs.getString(4);
          JOptionPane.showMessageDialog(null,email+"   "+password+"    "+emaild+"   "+passwordd+" "+named);
  //      out.println(email+"   "+password+"    "+emaild+"   "+passwordd+" "+named);
         if(email.equals(emaild) && password.equals(passwordd) ) {
           HttpSession session1=request.getSession();  
        session1.setAttribute("named",named);  
                   
             //  out.println("<script>alert('User or password correct');</script>");
               response.sendRedirect("Home.jsp");
          }
         else
         {
             //request.setAttribute("login","email and password");
         }
          }   
  }      
        }
          catch(Exception e)
          {
            out.println(e);  
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
