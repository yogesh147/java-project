<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%
    
   
String item_transaction   = request.getParameter("txn_id"); // Paypal transaction ID
String item_price         = request.getParameter("mc_gross"); // Paypal received amount
 String item_currency      = request.getParameter("mc_currency"); // Paypal received currency type

   String price = session.getAttribute("price").toString();
 String currency="USD";
        
out.println(item_transaction+" "+item_price+" " + item_currency);
//Rechecking the product price and currency details

    out.println("<h1>Welcome, Guest</h1>");
    out.println("<h1>Payment Successful</h1>");
    
    
        
		final String username = "yogeshch147@gmail.com";
		final String password = "yog456ESH";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session1 = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session1);
			message.setFrom(new InternetAddress("yogeshch147@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("Shubham.netmax@gmail.com"));
			message.setSubject("Testing Subject");
			message.setText("Dear Mail Crawler,"
				+ "\n\n No spam to my email, please!");
 
			Transport.send(message);
 
			out.println("Done");
 
		} catch (MessagingException e) {
			out.println(e);
		}
    
    

%>