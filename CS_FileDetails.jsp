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
<title>Cloud Files</title>
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
.style32 {
	font-size: 12px;
	color: #FFFF00;
}
.style34 {
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
          <h2 class="style34">View File Details !!! </h2>
          <p class="infopost">&nbsp;</p>
          <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11,s12,s13;
	int i=0,j=0,k=0;
int id = Integer.parseInt(request.getParameter("usid"));
try 
	{
      		String query="Select *from files where id='"+id+"'"; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			if ( rs.next() )
			{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s4=rs.getString(4);
					s5=rs.getString(5);
					s6=rs.getString(6);
					s7=rs.getString(7);
					s8=rs.getString(8);
					s9=rs.getString(9);
					s10=rs.getString(10);

				
			
			
			%>
          <table width="549" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
            <tr>
              <td width="142" height="36" bgcolor="#FF0000"><div align="center" class="style29 style32">
                  <div align="left"><strong> ID :</strong></div>
              </div></td>
              <td width="394"><label>
                <input readonly="readonly"  name="textfield" type="text" value="<%=i%>" size="49" />
                </label>              </td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>File Name : </strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield2" type="text" size="49" value="<%=s2%>" />              </td>
            </tr>
            <tr>
              <td height="186" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Contents :</strong></div>
              </div></td>
              <td><label>
                <textarea readonly="readonly" rows="10"  cols="50"  name="textarea"><%=s3%></textarea>
                </label>              </td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Digital Sign :</strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield3" type="text" value="<%=s4%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Secret Key : </strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield32" type="text" value="<%=s5%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Rank :</strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s6%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Date &amp; Time :</strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield332" type="text" value="<%=s7%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Data Owner : </strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield332" type="text" value="<%=s8%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Doc Tag  : </strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield332" type="text" value="<%=s9%>" size="49" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FF0000"><div align="center" class="style32">
                  <div align="left"><strong>Doc Uses  : </strong></div>
              </div></td>
              <td><input readonly="readonly"  name="textfield332" type="text" value="<%=s10%>" size="49" /></td>
            </tr>
          </table>
          <p>
            <%
			
			}		
           connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%></p>
          <p align="right"><a href="DE_Main.jsp">Back</a></p>
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
            <li><a href="LE_Main.jsp">Home</a></li>
			<li><a href="LE_Login.jsp">Logout</a></li>
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
