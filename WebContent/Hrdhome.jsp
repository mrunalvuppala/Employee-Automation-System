<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Forthright  
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20130409

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Forthright by FCT</title>
<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed|Open+Sans:400,300,700|Yesteryear" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="Functions.js"></script>
</head>
<body>
<div id="menu-wrapper">
	<div id="menu">
		<ul>
			<li><a href="hrhome.html"><span>Home </span></a></li>
          <li class="active"><a href="loginhome.html">logout</a></li>
		</ul>
	</div>
	<!-- end #menu -->
</div>

<div id="wrapper">
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
	
	
	
				
<div id="home1" style="display: none;">
Home
</div>
<div id="log" style="display: none;">
Register <input type="radio" name="events" onclick="operation('event')"/>Events<input type="radio" name="events" onclick="operation('fresh')" />Freshers
</div>
<div id="pho" style="display: none;">
Photos
</div>
<div id="abou" style="display: none;">
About
</div>
<div id="cont" style="display: none;">
Contact
</div>
	
	<div id="even" style="display: none;">
					
				<form action="eventStore.jsp">
				<table>
<tr><td>Type of the Event:</td><td> <select name="t1">
<option value="Conference">Conference</option>
<option value="Official Meeting">Official Meeting</option>
</select></td></tr>
<tr><td>Name of the Event: </td><td><input type="text" name="t2" /></td></tr>
<tr><td>Description:  </td><td><textarea rows="3" cols="30" name="t5"></textarea></td></tr>
<tr><td colspan="2" align="center"> <input type="submit" value="Submit"/> </td></tr>
</table>
</form>

</div>

<div id="fre" style="display: none;">
<table>
<form method="post" enctype="multipart/form-data" action="freshStore.jsp">
<tr><td>Email ID:</td><td><input type="text" name="t1"/></td></tr>
<tr><td>Full Name:</td><td><input type="text" name="t2"/></td></tr>
<tr><td>Phone no:</td><td><input type="text" name="t3"/></td></tr>
<tr><td>Present Address:</td><td><textarea rows="3" cols="27" name="t4"></textarea></td></tr>
<tr><td>Permanant Address:</td><td><textarea rows="3" cols="27" name="t5"></textarea></td></tr>
<tr><td>Experience details:</td><td><textarea rows="3" cols="27" name="t6"></textarea></td></tr>
<tr><td>Key Skills:</td><td><textarea rows="3" cols="27" name="t7"></textarea></td></tr>
<tr><td>Which Industry does your company belong to? :</td><td><textarea rows="3" cols="27" name="t8"></textarea></td></tr>
<tr><td>Which Functional Area do you work in? :</td><td><textarea rows="3" cols="27" name="t9"></textarea></td></tr>
<tr><td>Graduated in : </td><td><select name="t10">
<option value="Btech/BE">Btech/BE</option>
<option value="BArch">BArch</option>
<option value="BCA">BCA</option>
<option value="B.com">B.com</option>
<option value="B.B.A">B.B.A</option>
<option value="B.Sc">B.Sc</option>
<option value="B.A">B.A</option>
</select></td></tr>
<tr><td>From College/University :</td><td><input type="text" name="t11"></td></tr>
<tr><td>Year of Passout:</td><td><input type="text" name="t12"></textarea></td></tr>
<tr><td>Percentage acquired:</td><td><input type="text" name="t13"></td></tr>
<tr><td>Post Graduated in:</td><td><input type="text" name="t14"></textarea></td></tr>
<tr><td>Upload Resume Document:</td><td><input type="file" name="t15" value="Upload"></td></tr>

<tr><td><input type="submit" name="Submit" value="Submit">
</td><td><input type="reset" name="Reset" value="Reset"></td></tr>
</form>
</table>
</div>





					
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
</div>
<!-- end #footer -->
</body>
</html>
