<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Query Data Users</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {font-size: 31px}
.style30 {font-size: 14px; color: #FF0000; font-weight: bold; }
.style31 {font-size: 14px}
.style32 {
	color: #FF0000;
	font-weight: bold;
}
.style33 {
	font-size: 14px;
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style5">Securing Organizations Data A Role-Based Authorized Keyword Search Scheme with Efficient Decryption</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="U_Main.jsp"><span>Hi <%=application.getAttribute("uname")%> !!</span></a></li>
		<li><a href="U_Login.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Request Secret Key  !!! </h2>
                          <%
try
	{
	
		String owner = request.getParameter("fowner");
		String fname = request.getParameter("fname");
		String uname=(String)application.getAttribute("uname");
		String generate ="Generate MSK Key";
		
		
		String query="select * from request_sk  where user='"+uname+"' and fname='"+fname+"' and owner='"+owner+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		
		if ( rs.next()==true)
		{
			%>
			<p class="style30 style31">Request Already Sent To Owner!!!</p>
			<p class="style6 style31 style32"><a href="U_Request_Key.jsp" class="style3">Back</a></p>
			<span class="style30">
			<%	
		}
		else
		{	
		
			String query1="select * from files  where fname='"+fname+"' and downer='"+owner+"' "; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if ( rs1.next())
			{
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
					
					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
				
				
					String query4="insert into request_sk(user,owner,fname,sk_status,dt) values('"+uname+"','"+owner+"','"+fname+"','NO','"+dt+"')";
					connection.createStatement().executeUpdate(query4); 
					
					
					%>
		    </span>
			<p class="style33">Request Sent To Owner !! </p>
					<p class="style6 style31 style32"><a href="U_Request_Key.jsp" class="style3">Back</a></p>
					<span class="style30">
					<%
			}
			else 
			{
				%>
				    </span>
				<p class="style33">File Doesn't Exist!!! </p>
				<p><a href="U_Request_Key.jsp" class="style31">Home Page</a></p>
				<%
			}
		}
	connection.close();
	} 
catch(Exception e)
{
out.println(e.getMessage());
}
	%>
          <p class="infopost">&nbsp;</p>
          <p align="right" class="infopost"><a href="U_Main.jsp">Back</a></p>
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
