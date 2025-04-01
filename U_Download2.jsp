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
.style36 {
	font-size: 18px;
	color: #FF0000;
}
.style37 {color: #FF0000}
-->
</style>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
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
          <h2>Download Documents !!! </h2>
          <p class="infopost">&nbsp;</p>
          <%
		  	
			try 
			{
		  		String file = request.getParameter("t1");
				String trapdoor=request.getParameter("t12");
				String sk=request.getParameter("t13");
				
				String ct="",pk="";
				
				
				String user=(String) application.getAttribute("uname");
				
				
				
				
				String strQuery2 = "select * from files where fname='"+file+"' and  trapdoor='"+trapdoor+"'";
				ResultSet rs2 = connection.createStatement().executeQuery(strQuery2);
				if(rs2.next()==true)
							{
								ct=rs2.getString(3);
								pk=rs2.getString(5);
								
									if(pk.equals(sk))
									{
										String rank=rs2.getString(6);
										
										int updaterank = Integer.parseInt(rank)+1;
										String strQuer = "update files set rank='"+updaterank+"' where fname='"+file+"'";
										connection.createStatement().executeUpdate(strQuer);
										
										SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
										SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					
										Date now = new Date();
					
										String strDate = sdfDate.format(now);
										String strTime = sdfTime.format(now);
										String dt = strDate + "   " + strTime;	
										
										
										String task="Download";
										String Query2 = "insert into transaction(user,fname,task,dt) values('"+user+"','"+file+"','"+task+"','"+dt+"')";
										connection.createStatement().executeUpdate(Query2);
										
										
										String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(ct.getBytes()));
										%>
          </span>
          <h3 align="center" class="infopost style16">File Contents</h3>
          <div align="center">
            <textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
            <br/>
            <br/>
            <td><button onclick="saveTextAsFile()">Download</button></td>
          </div>
          </label>
          <%	
									}
									else
									{
									
										SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
										SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				
										Date now = new Date();
						
										String strDate = sdfDate.format(now);
										String strTime = sdfTime.format(now);
										String dt = strDate + "   " + strTime;
								
										String str="SecretKey Missmatch";
										
										
										String strQuer1 = "insert into attacker(user,fname,sk,dt,attacktype) values('"+user+"','"+file+"','"+sk+"','"+dt+"','"+str+"')";
										connection.createStatement().executeUpdate(strQuer1);
										%>
          <h3 class="style36 style37" >Secret Key Mismatch !!</h3>
          <span class="style37">
          <%
									}
							}
							else
							{
										SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
										SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				
										Date now = new Date();
						
										String strDate = sdfDate.format(now);
										String strTime = sdfTime.format(now);
										String dt = strDate + "   " + strTime;
								
										String str="Trapdoor Missmatch";
										
										
										String strQuer1 = "insert into attacker(user,fname,sk,dt,attacktype) values('"+user+"','"+file+"','"+sk+"','"+dt+"','"+str+"')";
										connection.createStatement().executeUpdate(strQuer1);
							
								%>
          </p>
          </span>
          <h3 class="style36">Trapdoor Mismatch !!</h3>
          <p align="left">
            <%
							}
				
        	connection.close();
	  } 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%>
          </p>
          <p align="right">            <a href="U_Main.jsp">Back</a></p>
        </div>
        <div class="clr"></div>
          <div class="clr"></div>
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
        <div class="gadget">      </div>

          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">Home</a></li>
            <li><a href="U_Login.jsp">Logout </a></li>
          </ul>
      </div>
    </div></div>
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
