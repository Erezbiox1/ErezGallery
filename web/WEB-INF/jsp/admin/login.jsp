<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%
  String context = "/gallery/";
%>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="msapplication-tap-highlight" content="no">
  <title>Erez's Gallery | Login</title>
  <!-- Favicons-->
  <link rel="icon" href="<%=context%>/admin/images/logo/logo.png" sizes="32x32">
  <link href="<%=context%>/admin/images/logo/logo.png" rel="shortcut icon">
  <!-- CORE CSS-->
  <link href="<%=context%>/admin/css/themes/collapsible-menu/materialize.css" type="text/css" rel="stylesheet">
  <link href="<%=context%>/admin/css/themes/collapsible-menu/style.css" type="text/css" rel="stylesheet">
  <!-- Custome CSS-->
  <link href="<%=context%>/admin/css/custom/custom.css" type="text/css" rel="stylesheet">
  <link href="<%=context%>/admin/css/layouts/page-center.css" type="text/css" rel="stylesheet">
  <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
  <link href="<%=context%>/admin/vendors/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet">
</head>
  <body class="green">
    <!-- Start Page Loading -->
    <div id="loader-wrapper">
      <div id="loader"></div>
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
    </div>
    <!-- End Page Loading -->
    <div id="login-page" class="row">
      <div class="col s12 z-depth-4 card-panel">
        <form id="form" class="login-form">
          <div class="row">
            <div class="input-field col s12 center">
              <img src="<%=context%>images/logo-colored.png" alt="" class=" responsive-img valign profile-image-login">
              <p class="center login-form-text">Erez's Gallery | Login</p>
            </div>
          </div>
          <div class="row margin">
            <div class="input-field col s12">
              <i class="material-icons prefix pt-5">person_outline</i>
              <input name="username" id="username" type="text">
              <label for="username" class="center-align">Username</label>
            </div>
          </div>
          <div class="row margin">
            <div class="input-field col s12">
              <i class="material-icons prefix pt-5">lock_outline</i>
              <input name="password" id="password" type="password">
              <label for="password">Password</label>
            </div>
          </div>
          <div class="row">
            <div class="col s12 m12 l12 ml-2 mt-3">
              <input name="remember" type="checkbox" id="remember-me" />
              <label for="remember-me">Remember me</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
                <a onclick="login(document.getElementById('form'))" class="btn waves-effect waves-light col s12 green">Login</a>  <!--TODO-->
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <p class="margin center medium-small"><a href="register">Register</a></p>  <!--TODO-->
            </div>
          </div>
        </form>
      </div>
    </div>
    <script type="text/javascript" src="<%=context%>/admin/vendors/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="<%=context%>/admin/js/materialize.min.js"></script>
    <script type="text/javascript" src="<%=context%>/admin/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript" src="<%=context%>/admin/js/plugins.js"></script>
    <script type="text/javascript" src="<%=context%>/admin/js/custom-script.js"></script>
  </body>
</html>