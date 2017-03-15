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
           <li><a href="emp.html"><span>Home </span></a></li>
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
          <h2 class="star">Admin Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
           <li><a href="empreg.html">Employee Registration </a></li>
            <li><a href="empdetails1.jsp">View Employee Details </a></li>
            <li><a href="empdelete.html">Delete Employee Details </a></li>
 			<li><a href="notification.jsp">Submit Notification Details </a></li>     
          </ul>
        </div>
      </div>
      <%@page import="java.sql.*"%>
      <%@page import="java.util.*"%>

<%

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String frname=request.getParameter("frname");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String eduq=request.getParameter("eduq");
String addr=request.getParameter("addr");
String email=request.getParameter("email");
String phno=request.getParameter("phno");

String empdept=request.getParameter("empdept");
String salary=request.getParameter("salary");

String pwd=request.getParameter("pwd");

//making a unique id for each user on that basis he/she will login.
UUID   uid=UUID.randomUUID();
//converting uid to string format.
String cardid=uid.toString();
//we are taking string of length 7 as user id.
String id=cardid.substring(0,7);

Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeesystem","root","");
	 Statement stmt=con.createStatement();
	 ResultSet rst=stmt.executeQuery("select * from empreg where dob='"+dob+"'");
	 int num=0;
	 while(rst.next())
	 {
		 num++;
	 }
	 if(num==0)
	 {
	PreparedStatement ps=con.prepareStatement("insert into  empreg values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,fname);
	ps.setString(3,lname);
	ps.setString(4,frname);
	ps.setString(5,gender);
	ps.setString(6,dob);
	ps.setString(7,eduq);
	ps.setString(8,addr);
	ps.setString(9,email);
	ps.setString(10,phno);
	ps.setString(11,empdept);
	ps.setString(12,salary);
	
	ps.setString(13,pwd);
	ps.executeUpdate();
	ps.close();
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from empreg where empid='"+id+"'");
	int count=0;
	while(rs.next())
	{
		
		count++;
	}
	if(count==1)
	{
		%>
		<form>
		<h2>Registered Successfully with Employee Id:<%out.println(id); %></h2>

		</form>
		<%
	}
	 
	else
	{
		%>
		<form>
		<h2>Not Registered Successfully.try again</h2>

		</form>
		<%
	}
	 }
	 else
	 {
		 %>
		 <h2>you are alredy registered.please go to login</h2>
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
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
