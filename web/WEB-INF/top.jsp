<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<%
    String active = (String) request.getAttribute("menu");
    String home = "", trips = "", contact = "";

    if(active.equals("home")) home = "eg-active";
    if(active.equals("trips")) trips = "eg-active";
    if(active.equals("contact")) contact = "eg-active";

    String context = (String) request.getAttribute("context");
    if(context == null)
        context = "";
%>
<head>
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <title>Erez's Gallery</title>
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="Erez's Gallery" name="description"/>
    <meta content="erez gallery, gallery, photos, pictures, nature, landscape, photography" name="keywords"/>
    <meta content="Erez" name="author"/>

    <!-- Facebook and Twitter integration -->
    <meta content="" property="og:title"/>
    <meta content="" property="og:image"/>
    <meta content="" property="og:url"/>
    <meta content="" property="og:site_name"/>
    <meta content="" property="og:description"/>
    <meta content="" name="twitter:title"/>
    <meta content="" name="twitter:image"/>
    <meta content="" name="twitter:url"/>
    <meta content="" name="twitter:card"/>

    <link href="<%=context%>images/logo-colored.png" rel="shortcut icon">

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700' rel='stylesheet'
          type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">

    <!-- Animate.css -->
    <link href="<%=context%>css/animate.css" rel="stylesheet">
    <!-- Icomoon Icon Fonts-->
    <link href="<%=context%>css/icomoon.css" rel="stylesheet">
    <!-- Bootstrap  -->
    <link href="<%=context%>css/bootstrap.css" rel="stylesheet">
    <!-- Owl Carousel -->
    <link href="<%=context%>css/owl.carousel.min.css" rel="stylesheet">
    <link href="<%=context%>css/owl.theme.default.min.css" rel="stylesheet">
    <!-- Theme style  -->
    <link href="<%=context%>css/style.css" rel="stylesheet">

    <!-- Modernizr JS -->
    <script src="<%=context%>js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="<%=context%>js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div id="eg-page">
    <a class="js-eg-nav-toggle eg-nav-toggle" href="#"><i></i></a>
    <aside class="border js-fullheight" id="eg-aside" role="complementary">
        <h1 id="eg-logo"><a href="<%=context%>index.jsp"><img alt="Bio Gallery" src="<%=context%>images/logo-colored.png"></a></h1>
        <nav id="eg-main-menu" role="navigation">
            <ul>
                <li class="<%=home%>"><a href="/<%=context%>">Home</a></li>
                <li class="<%=trips%>"><a href="<%=context%>trips">Trips</a></li>
                <li class="<%=contact%>"><a href="<%=context%>contact">Contact</a></li>
            </ul>
        </nav>

        <div class="eg-footer">
            <p>
                <small>&copy; 2018 Erezbiox1</small>
            </p>
            <ul>
                <li><a href="<%=context%>mailto:erezbiox1@gmail.com"><i class="icon-envelope"></i></a></li>
                <li><a href="<%=context%>https://twitter.com/erezbiox1"><i class="icon-twitter"></i></a></li>
                <li><a href="<%=context%>https://www.instagram.com/erezrotem1/"><i class="icon-instagram"></i></a></li>
                <li><a href="<%=context%>/admin/login"><i class="icon-key"></i></a></li>
            </ul>
        </div>

    </aside>

    <div id="eg-main">