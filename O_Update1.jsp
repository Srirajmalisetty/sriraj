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
<title>Data Owner </title>
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
.style21 {font-size: 14px}
.style23 {color: #666666; font-weight: bold;}
.style10 {color: #504b4b}
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px}
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
          <li><a href="O_Main.jsp"><span>Hi <%=application.getAttribute("doname")%> !!</span></a></li>
		<li><a href="O_Login.jsp"><span>Logout</span></a></li>
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
          <h2>Update file </h2>
          <p class="infopost">&nbsp;</p>
          <%
		try {
		int uid = Integer.parseInt(request.getParameter("usid"));
      			String keys = "ef50a0ef2c3e3a5f";
				String filen=request.getParameter("fname");
			  %>
          <form action="O_Update2.jsp?usid=<%=uid%>" method="post" id="leavereply">
            <span class="style10">
            <label for="name"><br />
            <%
		String quey1="select * from files  where id='"+uid+"' "; 
		Statement st1=connection.createStatement();
		ResultSet rs4=st1.executeQuery(quey1);
		while ( rs4.next())
		{	
			String ct=rs4.getString(3);
			String trapdoor=rs4.getString(4);
			
			byte[] keyValue1 = keys.getBytes();
				Key key1 = new SecretKeySpec(keyValue1,"AES");
				Cipher c1 = Cipher.getInstance("AES");
				c1.init(Cipher.DECRYPT_MODE, key1);
				String decryptedValue = new String(Base64.decode(ct.getBytes()));

			%>
            <br />
            </label>
            </span>
            <table width="553" border="0"  style="border-collapse:collapse" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="134" height="39"><span class="odd style14 style28"><span class="odd style11 style16"> Select Document:</span></span></td>
                <td width="411"><input type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
              </tr>
              <tr>
                <td height="35"><span class="odd style14 style28"><span class="odd style11 style16"> Document Name:</span></span></td>
		        <td>
	<label>
<input type="text" name="fname" value="<%=filen%>" />
	</label>
		</td>
              </tr>
              <tr>
                <td height="255">&nbsp;</td>
                <td><textarea name="text" id="textarea" cols="50" rows="15"><%=decryptedValue%></textarea></td>
              </tr>
              <tr>
                <td height="35"><div align="right"></div></td>
                <td><input type="submit" name="Submit" value="Update" /></td>
              </tr>
            </table>
            <%}
			%>
          </form>
          <%
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
			  
			  %>
          <p align="right"><a href="O_Main.jsp">Back</a></p>
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
            <li><a href="O_Main.jsp">Home</a></li>
            <li><a href="O_Login.jsp">Logout </a></li>
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
