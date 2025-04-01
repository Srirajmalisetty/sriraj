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
.style16 {
	font-size: 12px;
	color: #3f3f3f;
}
.style28 {font-size: 12px; }
.style35 {color: #9d080d}
.style36 {color: #FFFF00}
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
          <h2>Download !!! </h2>
          <p class="infopost">&nbsp;</p>
          <form action="U_Download2.jsp" method="post" name="form1" id="form1">
              <p>
                <%
		  
	try 
		{
			String file = request.getParameter("t1");
			String trapdoor="";
			String sk="",pk1="",pk2="";
			String user=(String) application.getAttribute("uname");
			String sks="Permitted";
			
			
			String Query11 = "select * from request_sk where fname='"+file+"' and user='"+user+"' and  sk_status='"+sks+"'";
			ResultSet rs11 = connection.createStatement().executeQuery(Query11);
			if(rs11.next()==true)
			{
			
			
			String Query1 = "select * from files where fname='"+file+"'";
			ResultSet rs1 = connection.createStatement().executeQuery(Query1);
			if(rs1.next()==true)
			{
			
				String fowner=rs1.getString(8);
				
			
							trapdoor=rs1.getString(4);
							sk=rs1.getString(5);
									
								%>
			  </p>
							  <table width="548" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
								<tr>
								<td width="223" height="35" bgcolor="#FF0000"><span class="style16 style36"><strong>Enter File Name :</strong></span></td>
								<td width="245"><label>
								<input required="required" name="t1" type="text" value="<%=file%>" size="40" />
								</label></td>
								</tr>
								<tr>
								<td height="41" bgcolor="#FF0000"><span class="style16 style36"><strong>Trapdoor :</strong></span></td>
								<td><input name="t12" type="text" value="<%=trapdoor%>" size="40" /></td>
								</tr>
								<tr>
								<td height="40" bgcolor="#FF0000"><span class="style16 style36"><strong>Secret Key :</strong></span></td>
								<td><input name="t13" type="text" value="<%=sk%>" size="40" /></td>
								</tr>
								<tr>
								<td height="41"><div align="right"></div></td>
								<td><input type="submit" name="Submit2" value="Download" /></td>
								</tr>
			  </table>
								<%
							}
						
				else
				{
				%>
				<h1>File <span class="style35">Doesn't Exist</span> !!!</h1>
				<%
			}
			}
			else
			{
			%>
				<h1>File <span class="style35">Secret Key Not Requested</span> !!!</h1>
				<%
			
			}
			connection.close();
		}
	
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
				<p align="right"><a href="U_Main.jsp" class="style28">Back</a></p>
            </form>
        </div>
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
