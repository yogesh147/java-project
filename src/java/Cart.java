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
public class Cart extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();  
         String id = request.getParameter("id");
                        if(session.getAttribute("emailse")!= null)
                        { 
                      
                String title = "";
                String price = "";
                String city = "";
                String image = "";
                String date = "";
                String desc = "";
                String category = "";
                String name = "";
                String time = "";
                String phone = "";
                String address = "";
                String description = "";
                String ok="ok";
                String id2="";
             String quantity="";

                try {
                   

                         id = request.getParameter("hidden");
                          quantity = request.getParameter("texts");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from postadd where id='"+id+"'");

                    rs.next();
                     String ida = rs.getString(1);
                    category = rs.getString(2);
                    title = rs.getString(3);
                    desc = rs.getString(4);
                    image = rs.getString(5);
                    name = rs.getString(6);
                    phone = rs.getString(7);
                    address = rs.getString(8);
                    city = rs.getString(9);
                    price = rs.getString(10);
                    date = rs.getString(11);
                    time = rs.getString(11);
    conn.close();
                    stmt.close();
                  JOptionPane.showMessageDialog(null,ida+"  "+quantity);
                  
                        Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
                        Statement stmt1 = conn1.createStatement();

boolean results = stmt1.execute("insert into cart (id,category,title,description,image,name,phone,address,city,price,quantity) values ('" +ida+ "','" +category+ "','"+title+"','" + desc + "','" + image + "','" + name + "','" + phone + "','" + address + "','" + city + "','" + price + "','" + quantity + "')");
                        if (results == false) {
                            JOptionPane.showMessageDialog(null, "values entered");
                            response.sendRedirect("desc.jsp?id="+id+"&cart=added");
                            
                              HttpSession session1=request.getSession();  
          session1.setAttribute("clicked",ok); 
                             
                             
                             

                        } else {
                            JOptionPane.showMessageDialog(null, "query failed");
                        }
                    conn1.close();
                    stmt1.close();
                    
                    
                    
                
                        
                        
                } catch (Exception e) {
                  //  out.println(e);
                    JOptionPane.showMessageDialog(null, "already entered into cart ..if you want change the quantity then goto cart ,remove the item then again add into the cart");
                      response.sendRedirect("desc.jsp?id="+id+"");
                      
                }
                        } 
      
      else
      {
           response.sendRedirect("Login.jsp");
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
