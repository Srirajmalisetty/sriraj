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
.style25 {color: #FFFF00; font-weight: bold; }
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
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
          <h2>Upload file </h2>
          <p class="infopost">&nbsp;</p>
          <form action="O_Upload2.jsp" method="post">
            <p>
              <%
      	try {
			String filename=request.getParameter("t42");
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
      		String tag=request.getParameter("tag");
      		String uses=request.getParameter("uses");
			application.setAttribute("file1",file);


				String keys = "ef50a0ef2c3e3a5f";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));

			String namefile=request.getRealPath("file");
      		PrintStream p = new PrintStream(new FileOutputStream(namefile+"/"));
			p.print(new String(cont));
      		String h1="";
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(namefile+"/");
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
			
%>
            </p>
            <p>&nbsp;</p>
            <table width="580" border="0" align="center" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
              <tr>
                <td width="176" height="34" bgcolor="#FF0000"><span class="style25">File Name : </span></td>
                <td width="405"><input name="t42" type="text" id="t42" size="49" value="<%= file %>" readonly="readonly" /></td>
              </tr>
              <tr>
                <td height="42" bgcolor="#FF0000" ><span class="style25">Tag : </span></td>
                <td><input name="t4222" type="text" id="t4222" size="49" value="<%= tag %>" readonly="readonly" /></td>
              </tr>
              <tr>
                <td height="42" bgcolor="#FF0000" ><span class="style25">Uses : </span></td>
                <td><label>
                  <input name="t422" type="text" id="t422" size="49" value="<%= uses %>" readonly="readonly" />
                </label></td>
              </tr>
              <tr>
                <td height="256" bgcolor="#FF0000"><span class="style25"><%=file%> Data(Encrypted) : </span></td>
                <td><textarea name="text2" id="textarea" cols="50" onchange=" AlertFilesize()" rows="15" readonly="readonly"><%= encryptedValue %></textarea></td>
              </tr>
              <tr>
                <td height="34" bgcolor="#FF0000"><span class="style25">Trapdoor : </span></td>
                <td><input name="t4223" type="text" id="t4223" size="49" value="<%= h1 %>" readonly="readonly" /></td>
              </tr>
              <tr>
                <td height="34"><div align="right"> </div></td>
                <td><input  type="submit" name="Submit2" value="Upload" /></td>
              </tr>
            </table>
            <p>
              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </p>
          </form>
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
