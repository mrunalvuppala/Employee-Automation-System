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
#Layer4 {
	position:absolute;
	width:423px;
	height:167px;
	z-index:1;
	left: 269px;
	top: 290px;
}
#Layer5 {
	position:absolute;
	width:470px;
	height:261px;
	z-index:1;
	left: 122px;
	top: 255px;
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
        <ul><li><a href="projectmnhome.html"><span>Home </span></a></li>
          <li class="active"><a href="loginhome.html">logout</a></li>
          
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
          <h2 class="star">Project Mang.  Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="terminationreq.html">Termination Request </a></li>
            <li><a href="infotohr.html">Send Info to HR</a></li>
            <li><a href="changerelievinginfo.html">Change Relieving Data </a></li>
            <li><a href="projectdetails.html">Insert Emp. Project Status</a></li>
          <li><a href="viewprojdetails.jsp">View Emp. Project Status</a></li>
          <li><a href="pmviewnote.jsp">View Notifications</a></li>
          
          </ul>
        </div>
      </div>
      <%@page import="java.sql.*"%>

<%
String empid=request.getParameter("t1");
int emid=Integer.parseInt(empid);
String pname=request.getParameter("t2");
String pduration=request.getParameter("t3");
String role=request.getParameter("t4");
String performance=request.getParameter("t5");


Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeesystem","root","");
	PreparedStatement ps=con.prepareStatement("insert into projectdetails values(?,?,?,?,?)");
	ps.setInt(1,emid);
	ps.setString(2,pname);
	ps.setString(3,pduration);
	ps.setString(4,role);
	ps.setString(5,performance);
	
	ps.executeUpdate();
	ps.close();
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from projectdetails where empid='"+emid+"'");
	int count=0;
	while(rs.next())
	{
		count++;
	}
	if(count>=1)
	{
		%>
		
		<h2>Project Details Successfully inserted with Employee Id:<%out.println(emid); %></h2>
		<%
	}
	else
	{
		%>
		
		<h2>Project Details not inserted</h2>
		<h4><a href="projectdetails.html">try again</a></h4>
		
		<%
	}
}
catch(Exception e)
{
	out.println(e);
}

%>
      
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>

</html>
