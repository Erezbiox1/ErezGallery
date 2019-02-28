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
    <title>Erez's Gallery | Register</title>
    <!-- Favicons-->
    <link rel="icon" href="<%=context%>images/logo-colored.png" sizes="32x32">
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
              <h4>Register</h4>
              <p class="center">Join us!</p>
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
              <i class="material-icons prefix pt-5">email</i>
              <input name="email" id="email" type="email">
              <label for="email" class="center-align">Email</label>
            </div>
          </div>
          <div class="row margin">
            <div class="input-field col s12">
              <i class="material-icons prefix pt-5">lock_outline</i>
              <input name="password" id="password" type="password">
              <label for="password">Password</label>
            </div>
          </div>
          <div class="row margin">
            <div class="input-field col s12">
              <i class="material-icons prefix pt-5">lock_outline</i>
              <input name="repassword" id="password-again" type="password">
              <label for="password-again">Password again</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <a onclick="register(document.getElementById('form'))" class="btn waves-effect waves-light col s12 green">Register Now</a> <!--TODO-->
            </div>
            <div class="input-field col s12">
              <p class="margin center medium-small sign-up">Already have an account? <a href="login">Login</a></p>  <!--TODO-->
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