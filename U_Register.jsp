<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Query Data Users </title>
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
.style11 {color: #FFFF00; font-weight: bold; }
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
		  <li><a href="U_Login.jsp"><span>Query Data Users</span></a></li>
          <li><a href="O_Login.jsp"><span>Data Owner</span></a></li>
          <li><a href="DE_Login.jsp"><span>Cloud Server</span></a></li>
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
          <h2>Query Data Users Register </h2>
          <form action="U_RegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><br />
            <br />
</label>
            <table width="590" height="524" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="259" bgcolor="#FF0000" scope="row"><div align="left" class="style11">Data Users Name (required) : </div></td>
                <td width="343"><input id="name" name="userid" class="text" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" ><div align="left" class="style11">Password (required) : </div></td>
                <td><input type="password" id="password" name="pass" class="text" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" scope="row"><div align="left" class="style11">Email Address (required) : </div></td>
                <td><input id="email" name="email" class="text" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" scope="row"><div align="left" class="style11">Mobile Number (required) : </div></td>
                <td><input id="mobile" name="mobile" class="text" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" scope="row"><span class="style11">
                  <label for="label"> </label>
                    <label for="label">
                  </span>
                  <div align="left" class="style11">Your Address : </div>
                  <span class="style11">
                  </label>
                </span></td>
                <td><textarea name="address" cols="45" id="address"></textarea></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" scope="row"><span class="style11">
                  <label for="label"> </label>
                    <label for="label">
                  </span>
                  <div align="left" class="style11">Date of Birth (required) : </div>
                  <span class="style11">
                  </label>
                </span></td>
                <td><input id="dob" name="dob" class="text" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" scope="row"><div align="left" class="style11">Select Gender (required) : </div></td>
                <td><select id="s1" name="gender" class="text">
                    <option>-Select-</option>
                    <option>Male</option>
                    <option>Female</option>
                </select></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" scope="row"><span class="style11">
                  <label for="label"> </label>
                    <label for="label">
                  </span>
                  <div align="left" class="style11">Enter Pincode (required) : </div>
                  <span class="style11">
                  </label>
                </span></td>
                <td><input id="pincode" name="pincode" class="text" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" scope="row"><span class="style11">
                  <label for="location"> </label>
                    <label for="location">
                  </span>
                  <div align="left" class="style11">Enter Location (required) : </div>
                  <span class="style11">
                  </label>
                </span></td>
                <td><input id="loc" name="location" class="text" /></td>
              </tr>
              <tr>
                <td bgcolor="#FF0000" scope="row"><span class="style11">
                  <label for="label"> </label>
                    <label for="label">
                  </span>
                  <div align="left" class="style11">Select Profile Picture (required) : </div>
                  <span class="style11">
                  </label>
                </span></td>
                <td><input type="file" id="pic" name="pic" class="text" /></td>
              </tr>
              <tr>
                <td height="79" scope="row">&nbsp;</td>
                <td><input name="submit" type="submit" value="REGISTER" /></td>
              </tr>
            </table>
            <p align="right">&nbsp;</p>
            <p align="right"><a href="U_Login.jsp">Back</a></p>
          </form>
          <p>&nbsp;</p>
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
            <li><a href="index.html">Home</a></li>
            <li><a href="U_Login.jsp">Query Data Users </a></li>
            <li><a href="O_Login.jsp">Data Owner </a></li>
            <li><a href="DE_Login.jsp">Cloud Server</a></li>
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
