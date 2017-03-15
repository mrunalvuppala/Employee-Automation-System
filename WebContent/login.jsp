<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
function f1()
{

	var x1=document.forms["form1"]["uname"].value;
	var x2=document.forms["form1"]["pwd"].value;
	var x3=document.forms["form1"]["select"].value;
	if(x1==null || x1=="")
	{
		alert("enter user name");
		return false;
	}
	else if(x2==null || x2=="")
	{
		alert("enter password value");
		return false;
	}
	else if(x3==null || x3=="")
	{
		alert("enter employee id value");
		return false;
	}
	else
		{
		return true;
		}
	
}
	</script>
	
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
	width:371px;
	height:153px;
	z-index:1;
	left: 389px;
	top: 275px;
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
      <div class="clr">
       
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div id="Layer1">
      <form id="form1" name="form1" method="post" action="logincheck.jsp" onsubmit="return f1()">
        <table width="326" height="119" border="0">
          <tr>
            <td width="89" height="42">Type Of Id </td>
            <td width="145"><label>
            <select name="select">
			<option >Select Your Id</option>
			<option value="admin">Admin</option>
			<option value="projectmanager">Project Manager</option>
			<option value="hr">HR</option>
            </select>
            </label></td>
          </tr>
          <tr>
            <td>User Name </td>
            <td><input type="text" name="uname" /></td>
          </tr>
          <tr>
            <td>Password</td>
            <td><input type="password" name="pwd" /></td>
          </tr>
        </table>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="submit" name="Submit" value="Submit" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" name="Submit2" value="Reset" />
        </p>
      </form>
    </div>
  </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
