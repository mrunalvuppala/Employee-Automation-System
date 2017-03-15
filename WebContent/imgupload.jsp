
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<%@ page language="java" import="javazoom.upload.*,java.util.*" %>

<%
String urlpath=request.getContextPath();
urlpath=urlpath+"/img";
%>
<jsp:useBean id="upBean" scope="page" class="javazoom.upload.UploadBean" >
  <jsp:setProperty name="upBean" property="folderstore" value="C:/Users/sravan/Desktop/projects/Employee pre-Exit system/Code/emppre/WebContent/img"/>
  <jsp:setProperty name="upBean" property="parser" value="<%= MultipartFormDataRequest.CFUPARSER %>"/>
  <jsp:setProperty name="upBean" property="parsertmpdir" value="c:/temp"/>
  <jsp:setProperty name="upBean" property="overwritepolicy" value="nametimestamp" />
</jsp:useBean>




<ul class="style1">
<%

UploadFile file=null;

   String ffile=null,ImgUrl=null;
   String uid=null;
   
    if (MultipartFormDataRequest.isMultipartFormData(request))
      {
         // Uses MultipartFormDataRequest to parse the HTTP request.
         MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
         String todo = null;
         if (mrequest != null) todo = mrequest.getParameter("todo");
	     if ( (todo != null) && (todo.equalsIgnoreCase("upload")) )
	     {
            Hashtable files = mrequest.getFiles();
            if ( (files != null) && (!files.isEmpty()) )
            {
              file = (UploadFile) files.get("uploadfile");
                if (file != null) out.println("<li>Form fields : uploadfile"+"<BR> Uploaded file : "+file.getFileName()+" ("+file.getFileSize()+" bytes)"+"<BR> Content Type : "+file.getContentType());
                // Uses the bean now to store specified by jsp:setProperty at the top.
                upBean.store(mrequest, "uploadfile");
            }
            else
            {
               out.println("<li>No uploaded files");
            }
		    if (mrequest != null)
		    {
		    
		      String[] vals = mrequest.getParameterValues("multipleselect");
		      if (vals != null)
		      {
			    for (int j=0;j<vals.length;j++)
                {
			      out.println("<BR> multipleselect="+vals[j]);
			    }
		      }
		  
		    }
	     }
         else out.println("<BR> todo="+todo);
      
          
         ffile=mrequest.getParameter("uploadfile");
       
        uid=mrequest.getParameter("t1");
         ImgUrl="img/"+file.getFileName();
         try
         {
         
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employeesystem","root","");
            Statement stmt=con.createStatement();
            String ss="insert into upload values('"+uid+"','"+ImgUrl+"')";
            stmt.executeUpdate(ss);
            out.println("updated");
            
         }
         catch(Exception e)
         {
        	 e.printStackTrace();
         }
      }               
         %>
        
        
</ul>