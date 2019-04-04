<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String context = "/gallery/";
%>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Erez's Gallery | Login</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/logo-colored.png">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${context}vendors/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${context}vendors/sweetalert/sweetalert.css">
    <link rel="stylesheet" type="text/css" href="${context}css/materialize.css">
    <link rel="stylesheet" type="text/css" href="${context}css/style.css">
    <link rel="stylesheet" type="text/css" href="${context}css/pages/login.css">
    <link rel="stylesheet" type="text/css" href="${context}css/custom/custom.css">
</head>
<body class="vertical-layout vertical-menu-collapsible page-header-dark vertical-modern-menu 1-column login-bg  blank-page blank-page" data-open="click" data-menu="vertical-modern-menu" data-col="1-column">
<div class="row">
    <div class="col s12">
        <div class="container"><div id="login-page" class="row">
            <div class="col s12 m6 l4 z-depth-4 card-panel border-radius-6 login-card bg-opacity-8">
                <form id="form" class="login-form" onsubmit="return loginForm(event)">
                    <div class="row">
                        <div class="input-field col s12">
                            <h5 class="ml-4">Sign in</h5>
                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="material-icons prefix pt-2">person_outline</i>
                            <input name="username" id="username" type="text">
                            <label for="username" class="center-align">Username</label>
                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="material-icons prefix pt-2">lock_outline</i>
                            <input name="password" id="password" type="password">
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s12 m12 l12 ml-2 mt-1">
                            <p>
                                <label>
                                    <input type="checkbox" name="remember"/>
                                    <span>Remember Me</span>
                                </label>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <button type="submit" class="btn waves-effect waves-light border-round gradient-45deg-purple-deep-orange col s12">Login</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 m12 12a center-align">
                            <p class="margin medium-small"><a href="register">Register Now!</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        </div>
    </div>
</div>
<script src="${context}js/vendors.min.js" type="text/javascript"></script>
<script src="${context}vendors/sweetalert/sweetalert.min.js" type="text/javascript"></script>
<script src="${context}js/plugins.js" type="text/javascript"></script>
<script src="${context}js/custom/custom-script.js" type="text/javascript"></script>
</body>
</html>