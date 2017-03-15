<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>

<%
String t1=request.getParameter("title");
String t2=request.getParameter("date");
String t3=request.getParameter("matter");

Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeesystem","root","");
	PreparedStatement ps=con.prepareStatement("insert into  notification values(?,?,?)");
	ps.setString(1,t1);
	ps.setString(2,t2);
	ps.setString(3,t3);
	ps.executeUpdate();
	ps.close();
	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from notification where title='"+t1+"'");
	int count=0;
	while(rs.next())
	{
		count++;
	}
	if(count==1)
	{
		request.setAttribute("success","t1");
		%>
		<jsp:forward page="notification.jsp"></jsp:forward>
		<%
	}
	else
	{
		request.setAttribute("unsuccess","t2");
		%>
		<jsp:forward page="notification.jsp"></jsp:forward>
		<%
	}
	
}
catch(Exception e)
{
	out.println(e);
}

%>
</body>
</html>