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
.style21 {font-size: 24}
.style22 {color: #FF0000}
.style25 {font-size: 24; color: #FF0000; font-weight: bold; }
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
          <h2>Searched Results </h2>
          <p class="infopost">&nbsp;</p>
          <table width="605" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
            <tr>
              <td width="52" height="29" bgcolor="#FFFF00"><div align="center" class="style22"><span class="style21">Id </span></div></td>
              <td width="135" bgcolor="#FFFF00"><div align="center" class="style22"><span class="style21">File Name </span></div></td>
              <td width="159" bgcolor="#FFFF00"><div align="center" class="style22"><span class="style21">Document Tag </span></div></td>
              <td width="126" bgcolor="#FFFF00"><div align="center" class="style22"><span class="style21">Document Uses </span></div></td>
             
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
    String user=(String)application.getAttribute("uname");
try 
  {
		String keyword = request.getParameter("t14");
		String keys = "ef50a0ef2c3e3a5f";
		String h1="";
		String filename="filename.txt";
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		byte[] keyValue = keys.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.ENCRYPT_MODE, key);
		String search = new String(Base64.encode(keyword.getBytes()));
		
		
		String strQuery21 ="insert into transaction(user,fname,task,dt) values('"+user+"','"+keyword+"','Search','"+dt+"')";
		connection.createStatement().executeUpdate(strQuery21);
		
		
		String strQuery22 ="insert into search(user,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
		connection.createStatement().executeUpdate(strQuery22);
		
		int found=0,total=0;
		String query4="select * from files"; 
		Statement st4=connection.createStatement();
		ResultSet rs=st4.executeQuery(query4);
		while ( rs.next() )
		{
			i=rs.getInt(1);
			s2=rs.getString(2);
			s1=rs.getString(3);
			s3=rs.getString(4);
			s5=rs.getString(7);
			s4=rs.getString(9);
			s6=rs.getString(8);
			s7=rs.getString(10);
			
			total=total+1;
			
			c.init(Cipher.DECRYPT_MODE,key);
			String decryptedValue = new String(Base64.decode(s1.getBytes()));
			
			if((decryptedValue.toLowerCase().contains(keyword.toLowerCase()))||(s2.toLowerCase().contains(keyword.toLowerCase()))||(s4.toLowerCase().contains(keyword.toLowerCase()))||(s7.toLowerCase().contains(keyword.toLowerCase())))
			{
				found=found+1;
				String strQuery1 = "select * from files where fname='"+s2+"'";
				ResultSet rs11 = connection.createStatement().executeQuery(strQuery1);
				if(rs11.next()==true)
				{
					String rank=rs11.getString(6);
					int updaterank = Integer.parseInt(rank)+1;
					String strQuery2 = "update files set rank='"+updaterank+"' where fname='"+s2+"'";
					connection.createStatement().executeUpdate(strQuery2);
					%>
			</tr>
					<tr>
					<td height="28"><div align="center" class="style25"><%=i%></div></td>
					<td><div align="center" class="style25"><%=s2%></div></td>
					<td><div align="center" class="style25"><%=s4%></div></td>
					<td><div align="center" class="style25"><%=s7%></div></td>
					</tr>
					<%
				}
				else
				{ 
					%>
					<h2>File Not Found !!!</h2>
					<%
				}
			}
		}
		%>
		<br />
		<p align="right" class="style22" >Search Ratio = <%=found%> : <%=total%></p>
		<%  
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
          </table>
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
