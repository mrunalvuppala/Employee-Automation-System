<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Onti | Support</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:323px;
	height:566px;
	z-index:1;
	left: 233px;
	top: 237px;
}
#Layer2 {
	position:absolute;
	width:200px;
	height:54px;
	z-index:2;
	left: 298px;
	top: 241px;
}
#Layer3 {
	position:absolute;
	width:374px;
	height:32px;
	z-index:1;
	left: 302px;
	top: 324px;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span>Employee Pre-Exit System</span></a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="loginhome.html">login</a></li>
          <li><a href="about.html"><span>About Us</span></a></li>
          
          <li><a href="contact.html"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Employee Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          	<li><a href="empviewnote.jsp">View Notifications </a></li>
            <li><a href="emprelieving.html">Employee Relieving Form </a></li>
            <li><a href="empdoc.html">Collecting Documents </a></li>
            <li><a href="empdocupload.html">Upload Documents </a></li>
          </ul>
        </div>
      </div>
            <%@page import="java.sql.*"%>
<%@ page import="java.sql.Statement"%> 
<%@ page import="java.sql.DriverManager"%>
<%@ page import= "java.sql.Connection"%>
<%
String empid=request.getParameter("t1");
int emid=Integer.parseInt(empid);
String ename=request.getParameter("t2");
String edept=request.getParameter("t3");
String pname=request.getParameter("t4");
Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeesystem","root","");
	PreparedStatement ps=con.prepareStatement("insert into emprelievinginfo values(?,?,?,?)");
	ps.setInt(1,emid);
	ps.setString(2,ename);
	ps.setString(3,edept);
	ps.setString(4,pname);
	ps.executeUpdate();
	ps.close();
}
catch(Exception e)
{
	out.println(e);
}

%>
<form>
<h2>Employee with Emp. Id :<%out.println(emid); %>Registered Successfully</h2>

</form>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
