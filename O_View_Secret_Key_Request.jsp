<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>

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
.style35 {color: #FFFF00}
.style37 {color: #FF0000; font-weight: bold; }
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
          <h2> View Secret key Request Details !!! </h2>
          <p class="infopost">&nbsp;</p>
          <p>&nbsp;</p>
          <table width="552" border="1.5" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                      <td width="42" height="30" bgcolor="#FF0000"><div align="center" class="style21 style35"><span class="style22"> ID </span></div></td>
                      <td width="97" bgcolor="#FF0000"><div align="center" class="style21 style35"><span class="style22"> Requested User Name </span></div></td>
                      <td width="129" bgcolor="#FF0000"><div align="center" class="style21 style35"><span class="style22">Data Owner Name </span></div></td>
                      <td width="111" bgcolor="#FF0000"><div align="center" class="style21 style35"><span class="style22">File Name </span></div></td>
                      <td width="142" bgcolor="#FF0000"><div align="center" class="style21 style35 style35"><span class="style22">Secret Key Request Status </span></div></td>
                      <td width="142" bgcolor="#FF0000"><div align="center" class="style21 style35"><span class="style22">Requested Date and Time </span></div></td>
                      <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
	
			String oname=(String)application.getAttribute("doname");
	
        	
      		String query="select * from request_sk where Owner='"+oname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		%>
                    </tr>
                    <tr>
                      <td height="49"><div align="center" class="style37"><%=i%></div></td>
                      <td><div align="center" class="style37"><%=s2%></div></td>
                      <td><div align="center" class="style37"><%=s3%></div></td>
                      <td><div align="center" class="style37"><%=s4%></div></td>
                      <%	
			if(s5.equalsIgnoreCase("NO"))
			{
			
		%>
                      <td bgcolor="#FF0000"><div class="style37 style35">
                          <div align="center"><a href="O_Secret_Key_Generate.jsp?usid=<%=i%>&amp;fname=<%=s4%>"><%=s5%></a></div>
                      </div></td>
                      <%
		
			}else
			{
		%>
                      <td width="17"><div class="style37">
                          <div align="center"><%=s5%></div>
                      </div></td>
					
                    <%
			  }
			  
			  %>
			    <td><div align="center" class="style37"><%=s6%></div></td>
                    </tr><%
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
          </p>
          <p align="right"><a href="O_Main.jsp">Back</a></p>
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
            <li>L<a href="O_Login.jsp">ogout </a></li>
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
