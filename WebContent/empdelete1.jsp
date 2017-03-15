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
	width:314px;
	height:32px;
	z-index:1;
	left: 280px;
	top: 344px;
}
#Layer4 {
	position:absolute;
	width:761px;
	height:414px;
	z-index:1;
	left: 14px;
	top: 203px;
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
	  
<h2>After Deletion: New Employee List</h2>	  
<%@page import="java.sql.*"%>

<%
Connection con=null;
int count=0;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeesystem","root","");
	 System.out.println("connection created");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from empreg");
	while(rs.next())
	{
	
	count++;
	
	}
	
	if(count>=1)
	{
		%>
		<table border="1">
		<tr>
		<td>Emp.Id</td><td>First Name</td><td>Last Name</td><td>Father's Name</td>
		<td>Gender</td><td>DOB</td><td>Qua.</td><td>Addr</td>
		<td>Email Id</td><td>Ph.No.</td><td>Emp.Dept.</td><td>Emp.Salary</td>
		
		</tr>
		
		<%
		Statement st1=con.createStatement();
		ResultSet rs1=st1.executeQuery("select * from empreg");
		while(rs1.next())
		{
			%>
			<tr>
			<td><%=rs1.getInt(1) %></td><td><%=rs1.getString(2)%></td><td><%=rs1.getString(3) %></td><td><%=rs1.getString(4) %></td>
			<td><%=rs1.getString(5) %></td><td><%=rs1.getString(6) %></td><td><%=rs1.getString(7) %></td><td><%=rs1.getString(8) %></td>
			<td><%=rs1.getString(9) %></td><td><%=rs1.getString(10) %></td><td><%=rs1.getString(11) %></td><td><%=rs1.getString(12) %></td>
			</tr>
			<%
		}
		%>
		</table>
		<%
	}
	else
	{
		out.println("Employee List Is Empty");
	}
	
}
catch(Exception e)
{
	out.println(e);
}

%>
    </div>
      
      <div class="clr"></div>
  </div>
</div>
  <div class="footer"></div>
</div>

</html>
