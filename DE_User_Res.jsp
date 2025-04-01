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
<title>Data Users Response</title>
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
.style16 {
	font-size: 12px;
	color: #3f3f3f;
}
.style15 {color: #fff;
	font-weight: bold;
}
.style18 {color: #0d6887}
.style20 {font-weight: bold; font-size: 24;}
.style20 {color: #595f61}
.style21 {font-size: 24}
.style22 {color: #FF0000}
.style27 {font-size: 18px}
.style28 {font-size: 12px; }
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
          <li><a href="DE_Main.jsp"><span>Cloud Server </span></a></li>
		  <li><a href="DE_Login.jsp"><span>Logout</span></a></li>
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
          <h2>Query(File) Request Status </h2>
          <p class="infopost">&nbsp;</p>
          <p class="infopost">&nbsp;</p>
          <p>
            <%
			  
			  try 
			  {

				String id = request.getParameter("usid");
				
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				
				Date now = new Date();
				
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;
				
				
				String uname=request.getParameter("uname");
				String owner=request.getParameter("owner");
				String fname=request.getParameter("fname");
				
				
		String query="select * from files  where fname='"+fname+"' and downer='"+owner+"' "; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		if ( rs.next())
		{
		
		
			String query1="select * from request where user='"+uname+"' and owner='"+owner+"' and fname='"+fname+"' "; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if ( rs1.next())
			{
				String download_per=rs1.getString(5);
				if(download_per.equalsIgnoreCase("DQE_Requested"))
				{
					%>
		  </p>
					<p class="style27">Request Already Sent & Waiting For Distributed Query Executor To Permitt !! </p>
					<p><a href="U_Main.jsp" class="style28"></a></p>
					<p>
					<%	
				}
				else if(download_per.equalsIgnoreCase("DQE_Permitted"))
				{
					%>
					</p>
					<p class="style27">Request Already Permitted By Distributed Query Executor !! </p>
					<p><a href="U_Main.jsp" class="style28"></a></p>
					<p>
					<%	
				}
				else if(download_per.equalsIgnoreCase("LQE_Requested"))
				{
					%>
					</p>
					<p class="style27">Request Already Sent & Waiting For Local Query Executor To Permitt !! </p>
					<p><a href="U_Main.jsp" class="style28"></a></p>
					<p>
					<%	
				}
				else if(download_per.equalsIgnoreCase("LQE_Permitted"))
				{
					
					
					
					String query3="update request set download_per ='DQE_Permitted' where user='"+uname+"' and owner='"+owner+"' and fname='"+fname+"'";
					connection.createStatement().executeUpdate(query3);
					
					String query4="insert into query_transaction(user,owner,fname,task,dt) values('DQE','"+owner+"','"+fname+"','DQE_Permitted','"+dt+"')";
					connection.createStatement().executeUpdate(query4);
					
					%>
					</p>
					<p class="style27">Data Users Request Permitted !! </p>
					<p><a href="U_Main.jsp" class="style28"></a></p>
					<p>
					<%
				}
				else
				{
				
					
				}
			}
			else
			{
			
			
				
					%>
					</p>
					<p class="style27">Data Users Have Not Requested For Distributed Query Executor Yet  !! </p>
					<p><a href="U_Main.jsp" class="style28"></a></p>
					<p>
					<%
			}
		}
		else
		{
			%>
			</p>
			<p class="style27">File Doesn't Exist !! </p>
			<p><a href="U_Main.jsp" class="style28"></a></p>
			<p>
			<%
		}
		connection.close();
	}
	catch (Exception e)
	{
		out.print(e);
	}
		
  %></p>
          <p align="right" class="infopost"><a href="DE_Main.jsp">Back</a><a href="U_Main.jsp"></a></p>
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
            <li><a href="DE_Main.jsp">Home</a></li>
            <li><a href="DE_Login.jsp">Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
