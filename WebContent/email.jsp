<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%
String SMTP_HOST_NAME = "smtp.gmail.com";
String SMTP_PORT = "465";
String emailMsgTxt = request.getParameter("body");
 String emailSubjectTxt = request.getParameter("sub");
 String emailFromAddress = request.getParameter("from"); 
 String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
 String  emailTo=request.getParameter("to");
 boolean debug = true;
 Properties props = new Properties();
 props.put("mail.smtp.host", SMTP_HOST_NAME);
 props.put("mail.smtp.auth", "true");
 props.put("mail.debug", "true");
 props.put("mail.smtp.port", SMTP_PORT);
 props.put("mail.smtp.socketFactory.port", SMTP_PORT);
 props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
 props.put("mail.smtp.socketFactory.fallback", "false");

 javax.mail.Session session1 = javax.mail.Session.getDefaultInstance(props,new javax.mail.Authenticator() {

 protected PasswordAuthentication getPasswordAuthentication() {
 return new PasswordAuthentication("abdulmoiz.coign@gmail.com", "2007bit031");
 }
 });

 session1.setDebug(debug);

 Message msg = new MimeMessage(session1);
 InternetAddress addressFrom = new InternetAddress(emailFromAddress); 
 msg.setFrom(addressFrom);

 InternetAddress addressTo =new InternetAddress(emailTo);
 msg.setRecipient(Message.RecipientType.TO, addressTo);

 // Setting the Subject and Content Type
 msg.setSubject("message From Service Provider");
 msg.setContent("Congratulations! Your loginId :  and Your Login password :", "text/plain");
 Transport.send(msg);


  out.println("Message Send.....");

%>
</body>
</html>