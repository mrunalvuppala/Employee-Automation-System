
      <%@page import="java.sql.*"%>
      <%@ page import="java.util.*" %>
     

<%@ page import="java.sql.Statement"%> 
<%@ page import="java.sql.DriverManager"%>
<%@ page import= "java.sql.Connection"%>
<%

String select=request.getParameter("select");
String uname=request.getParameter("uid");
String pwd=request.getParameter("pwd");

Connection con=null;
String s1=null,s2=null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeesystem","root","");
	
	if(select.equals("Admin"))
	{
		Statement st=con.createStatement();
	
		ResultSet rs=st.executeQuery("select * from login where username='"+uname+"' and password='"+pwd+"'");
		int count=0;
		while(rs.next())
		{
			count++;
		}
		if(count==1)
		{
		%>
			<jsp:forward page="emp.html"/>
		<% }
		else 
		{%>
			<jsp:forward page="login1.jsp"/>
		<%
		}
	
	}
	else if(select.equals("HR"))
	{
		Statement st=con.createStatement();
	
		ResultSet rs=st.executeQuery("select * from login where username='"+uname+"' and password='"+pwd+"'");
		int count=0;
		while(rs.next())
		{
			count++;
		}
		if(count==1)
		{
		%>
			<jsp:forward page="hrhome.html"/>
		<% }
		else 
		{%>
			<jsp:forward page="login1.jsp"/>
		<%
		}
	
	}
	else if(select.equals("Project Manager"))
	{
		Statement st=con.createStatement();
	
		ResultSet rs=st.executeQuery("select * from login where username='"+uname+"' and password='"+pwd+"'");
		int count=0;
		while(rs.next())
		{
			count++;
		}
		if(count==1)
		{
		%>
			<jsp:forward page="projectmnhome.html"/>
		<% }
		else 
		{%>
			<jsp:forward page="login1.jsp"/>
		<%
		}
	
	}
	else if(select.equals("Employee"))
	{
		Statement st=con.createStatement();
	
		ResultSet rs=st.executeQuery("select * from empreg where empid='"+uname+"' and pwd='"+pwd+"'");
		int count=0;
		while(rs.next())
		{
			count++;
		}
		if(count==1)
		{
		%>
			<jsp:forward page="emphome.html"/>
		<% }
		else 
		{%>
			<jsp:forward page="login1.jsp"/>
		<%
		}
	
	}
	else
	{
		%>
		<jsp:forward page="login1.jsp"/>
	<%
	}
}
catch(Exception e)
{
	System.out.println(e);
}

%>
