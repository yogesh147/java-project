<%-- 
    Document   : email
    Created on : 14-May-2018, 12:08:52
    Author     : hp
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%   


//import java.util.*;
//
//import javax.mail.*;
//import javax.mail.internet.*;
//import javax.mail.internet.MimeMessage;


        try{
            
            String host ="smtp.gmail.com" ;
            String user = "yogeshch147@gmail.com";
            String pass = "  ";
            String to = "tk1234848@gmail.com";
            String from = "yogeshch147@gmail.com";
            String subject = "watch this carefully";
            String messageText = "CALL ME ! HURRY ";
            boolean sessionDebug = false;

            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
            msg.setText(messageText);

            Transport transport=mailSession.getTransport("smtp");
           transport.connect(host, user, pass);
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
            JOptionPane.showMessageDialog(null, "message send successfully");
           response.sendRedirect("Home.jsp"); 
          
           
        }catch(Exception ex)
        {
            System.out.println(ex);
        }

    


            %>
        
        
        
    </body>
</html>
