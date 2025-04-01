<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Login</title>
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
.style9 {font-size: 14px}
.style10 {color: #FF0000}
.style12 {color: #FF0000; font-weight: bold; }
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
		  <li><a href="U_Login.jsp"><span> Data Users</span></a></li>
          <li><a href="O_Login.jsp"><span>Data Owner</span></a></li>
          <li></li>
          <li><a href="DE_Login.jsp"><span>Cloud Server </span></a></li>
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
          <h2>Cloud Server  Login </h2>
          <form action="DE_Authentication.jsp" method="post" id="leavereply">
            <label for="name"> <br />
            <span class="style9"><br />
            <br />
            <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style12">  Name (required)</span></span><span class="style12">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></label>
            <span class="style12">
            <input name="userid" type="text" class="box" id="name" value="" size="35" />
            <label for="email"><br />
            <br />
            <span class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password (required) </span></label>
            </span><span class="style10"><label for="email"></label>
            </span>
            <label for="email">&nbsp; </label>
            <input name="pass" type="password" class="box" id="pass" size="35" />
            <p>&nbsp;</p>
            <p align="center">
              <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
              <input type="reset" name="imageField" id="imageField"  class="RESET" /></p>
            <p align="center">&nbsp;</p>
            <p align="center">&nbsp;</p>
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
            <li><a href="U_Login.jsp">Data Users </a></li>
            <li><a href="O_Login.jsp">Data Owner </a></li>
            <li><a href="DE_Login.jsp">Cloud Server </a></li>
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
