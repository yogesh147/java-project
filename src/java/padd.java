/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.oreilly.servlet.MultipartRequest;
import java.awt.HeadlessException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author hp
 */
public class padd extends HttpServlet {

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
        {

            try {
                MultipartRequest multi = new MultipartRequest(request, "C:\\Users\\tarun\\Documents\\NetBeansProjects\\yogunew\\web\\images");
                String name = multi.getParameter("name");
                String category = multi.getParameter("category");
                String author = multi.getParameter("author");
                String price = multi.getParameter("price");
                String brand = multi.getParameter("brand");
                String desc = multi.getParameter("desc");

          //      String color = multi.getParameter("color");
          //      String size = multi.getParameter("size");

                String image1 = "";
            //    String image2 = "";
            //    String image3 = "";
                Enumeration e = multi.getFileNames();

                while (e.hasMoreElements()) {
                    String upload = (String) e.nextElement();
                    image1 = multi.getFilesystemName(upload);
            //        image2 = multi.getFilesystemName(upload);
            //        image3 = multi.getFilesystemName(upload);
                }
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
                Statement stmt = con.createStatement();
                boolean result = stmt.execute("insert into product (name,category,author,price,brand,description,image) values ('"+name+"','"+category+"','"+author+"','"+price+"','"+brand+"','"+desc+"','"+image1+"')");
                //   out.println("insert into product (p_name,p_price,p_brand,p_description,p_img1,p_img2,p_img3,cat_id,subcat_id,color,size) values ('"+name+"','"+price+"','"+brand+"','"+desc+"','"+image1+"','"+image2+"','"+image3+"','"+catid+"','"+subcatid+"','"+color+"','"+size+"')");
                if (result == false) {
                    JOptionPane.showMessageDialog(null, "values entered");
                } else {
                    JOptionPane.showMessageDialog(null, "query failed");
                }
                response.sendRedirect("padd.jsp");
            

            } catch (Exception e) {
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
