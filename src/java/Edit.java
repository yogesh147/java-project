/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.oreilly.servlet.MultipartRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
public class Edit extends HttpServlet {

    String categorydb = "";
    String titledb = "";
    String descdb = "";
    String imagedb = "";
    String imagedb1 = "";
    String namedb = "";
    String phonedb = "";
    String citydb = "";
    String pricedb = "";
    String cat_name = "";
    String cat;
    String idm;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        MultipartRequest multi = new MultipartRequest(request, "D:\\Users\\hp\\Documents\\NetBeansProjects\\Tarunclark\\web\\image");

        PrintWriter out = response.getWriter();
        idm = multi.getParameter("pid");
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/Tarunclark", "root", "");
            Statement stmt = con.createStatement();

            String query = "select * from postadd where id='" + idm + "'";
            ResultSet rs = stmt.executeQuery(query);
            rs.next();
            categorydb = rs.getString(2);
            titledb = rs.getString(3);
            descdb = rs.getString(4);
            imagedb = rs.getString(5);
            namedb = rs.getString(6);
            phonedb = rs.getString(7);
            citydb = rs.getString(9);
            pricedb = rs.getString(10);
            out.println("db " + categorydb + "   " + namedb + "   " + imagedb + "   " + titledb + "   " + descdb + "   " + phonedb + "   " + citydb + "   " + pricedb);

            //     imagedb = rs.getString(5);
            categorydb = multi.getParameter("cat_name");

            namedb = multi.getParameter("name");
             if(multi.getFileNames()!=null)
             {
            Enumeration e = multi.getFileNames();

            while (e.hasMoreElements()) {
                String upload = (String) e.nextElement();
                imagedb = multi.getFilesystemName(upload);
            }
             }
            titledb = multi.getParameter("title");
            descdb = multi.getParameter("desc");
            phonedb = multi.getParameter("phone");
            citydb = multi.getParameter("city");
            pricedb = multi.getParameter("price");

            out.println("form " + categorydb + "   " + namedb + "   " + cat + "   " + titledb + "   " + descdb + "   " + phonedb + "   " + citydb + "   " + pricedb);

            if (categorydb.equals("")) {
                categorydb = rs.getString(2);
            }
            if (titledb.equals("")) {
                titledb = rs.getString(3);
            }
            if (descdb.equals("")) {
                descdb = rs.getString(4);
            }

            if (imagedb.equals("")) {
                imagedb = rs.getString(5);

            }

            if (namedb.equals("")) {
                namedb = rs.getString(6);
            }
            if (phonedb.equals("")) {
                phonedb = rs.getString(7);
            }
            if (citydb.equals("")) {
                citydb = rs.getString(9);
            }
            if (pricedb.equals("")) {
                pricedb = rs.getString(10);
            }

            out.println("final values " + categorydb + "   " + namedb + "   " + imagedb + "   " + titledb + "   " + descdb + "   " + phonedb + "   " + citydb + "   " + pricedb);

            String query1 = "update postadd set category='" + categorydb + "', title='" + titledb + "', description='" + descdb + "',image='" + imagedb + "', name='" + namedb + "', phone='" + phonedb + "' ,price='" + pricedb + "', city='" + citydb + "' where id='" + idm + "'";
            out.println(query1);
            int result = stmt.executeUpdate(query1);
            if (result > 0) {
                JOptionPane.showMessageDialog(null, "Record updated");
                //           response.sendRedirect("edit.jsp");
            }
        } catch (Exception e) {
            out.println(e);
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
