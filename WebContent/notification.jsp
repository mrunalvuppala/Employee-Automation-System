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
      <%if(request.getAttribute("success")!=null){
    %>
    <font color="red"> <b>Thank you !!!!!! .</b> </font>  <br> <br>
<%}
      if(request.getAttribute("unsuccess")!=null)
      {
    	  %>
    	  <font color="red"> <b>Sorry Try Again.</b> </font>  <br> <br>
    	  <%
      }
%>
      
      <form action="note.jsp">
      <table>
      <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
      <tr><td>Date:</td><td><input type="text" name="date"/></td></tr>
      <tr><td>Matter:</td><td><textarea name="matter"></textarea></td></tr>
      </table>
      <input type="submit" name="Submit" value="Submit"/>
      </form>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>

</html>
