<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<%
    String context = "/gallery/";
    String[][] users = (String[][]) request.getAttribute("users");
    String online = (String) request.getAttribute("online");
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Erez's Gallery | Admin</title>
    <link rel="apple-touch-icon" href="<%=context%>/admin/images/favicon/apple-touch-icon-152x152.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=context%>/admin/images/favicon/favicon-32x32.png">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/vendors/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/vendors/sweetalert/sweetalert.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/css/style.min.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/css/custom.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/css/pages/app-sidebar.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/css/pages/app-contacts.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/vendors/flag-icon/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/vendors/data-tables/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="<%=context%>/admin/vendors/data-tables/extensions/responsive/css/responsive.dataTables.min.css">
</head>
<body class="vertical-layout vertical-menu-collapsible page-header-dark vertical-modern-menu app-page" data-open="click" data-menu="vertical-modern-menu" data-col="2-columns"></body>
<header class="page-topbar" id="header">
    <div class="navbar navbar-fixed">
        <nav class="navbar-main navbar-color nav-collapsible sideNav-lock navbar-dark gradient-45deg-indigo-purple no-shadow">
            <div class="nav-wrapper">
                <div class="header-search-wrapper hide-on-med-and-down"><i class="material-icons">graphic_eq</i>
                    <input class="header-search-input z-depth-2" type="text" name="Search" placeholder="Quick Travel">
                </div>
                <ul class="navbar-list right">
                    <li class="hide-on-med-and-down"><a class="waves-effect waves-block waves-light toggle-fullscreen" href="javascript:void(0);"><i class="material-icons">settings_overscan</i></a></li>
                    <li class="hide-on-large-only"><a class="waves-effect waves-block waves-light search-button" href="javascript:void(0);"><i class="material-icons">search</i></a></li>
                    <li><a class="waves-effect waves-block waves-light profile-button" href="javascript:void(0);" data-target="profile-dropdown"><span class="avatar-status avatar-online"><img src="https://robohash.org/Erezbiox1@gmail.com?gravatar=yes" alt="avatar"><i></i></span></a></li>
                </ul>
                <!-- profile-dropdown-->
                <ul class="dropdown-content" id="profile-dropdown">
                    <li><a class="grey-text text-darken-1" href="javascript:WIP()"><i class="material-icons">lock_outline</i> Lock</a></li>
                    <li><a class="grey-text text-darken-1" href="/gallery/admin/logout"><i class="material-icons">keyboard_tab</i> Logout</a></li>
                </ul>
            </div>
        </nav>
    </div>
</header>
<aside class="sidenav-main nav-expanded nav-lock nav-collapsible sidenav-light sidenav-active-square">
    <div class="brand-sidebar">
        <h1 class="logo-wrapper"><a class="brand-logo darken-1" href="javascript:WIP()"><img src="<%=context%>/admin/images/logo/materialize-logo-color.png" alt="materialize logo"><span class="logo-text hide-on-med-and-down">Erez's Gallery</span></a><a class="navbar-toggler" href="#"><i class="material-icons">radio_button_checked</i></a></h1>
    </div>
    <ul class="sidenav sidenav-collapsible leftside-navigation collapsible sidenav-fixed menu-shadow ps" id="slide-out" data-menu="menu-navigation" data-collapsible="menu-accordion" style="transform: translateX(0px);">
        <li class="bold"><a class="waves-effect waves-cyan " href="javascript:WIP()"><i class="material-icons">dashboard</i><span class="menu-title" data-i18n="">Dashboard</span></a>
        </li>
        <li class="navigation-header"><a class="navigation-header-text">Admin </a><i class="navigation-header-icon material-icons">more_horiz</i>
        </li>
        <li class="bold"><a class="waves-effect waves-cyan " href="javascript:WIP()"><i class="material-icons">speaker_notes</i><span class="menu-title" data-i18n="">Tickets</span></a>
        </li>
        <li class="active bold"><a class="waves-effect waves-cyan active " href="#"><i class="material-icons">face</i><span class="menu-title" data-i18n="">Users</span></a>
        </li>
        <li class="bold"><a class="collapsible-body waves-effect waves-cyan " href="#"><i class="material-icons">camera_enhance</i><span class="menu-title" data-i18n="">Photos</span></a>
            <div class="collapsible-body">
                <ul class="collapsible collapsible-sub" data-collapsible="accordion">
                    <li><a class="collapsible-body" href="javascript:WIP()" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>Trips</span></a>
                    </li>
                    <li><a class="collapsible-body" href="javascript:WIP()" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>Photo Manager</span></a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="navigation-header"><a class="navigation-header-text">Misc </a><i class="navigation-header-icon material-icons">more_horiz</i>
        </li>
        <li class="bold"><a class="waves-effect waves-cyan " href="javascript:WIP()"><i class="material-icons">build</i><span class="menu-title" data-i18n="">Settings</span></a>
        </li>
    </ul>
    <div class="navigation-background"></div><a class="sidenav-trigger btn-sidenav-toggle btn-floating btn-medium waves-effect waves-light hide-on-large-only" href="#" data-target="slide-out"><i class="material-icons">menu</i></a>
</aside>
<div id="main">
    <div class="row">
        <div class="content-wrapper-before gradient-45deg-indigo-purple"></div>
        <div class="col s12">
            <div class="container">
                <div class="fixed-action-btn direction-top" style="bottom: 54px; right: 19px;"><a class="btn-floating btn-large primary-text gradient-shadow modal-trigger" href="#createUser"><i class="material-icons">person_add</i></a></div>
                <div>
                    <div class="modal border-radius-6" id="createUser">
                        <div class="modal-content">
                            <h5 class="mt-0">Create new user</h5>
                            <hr>
                            <div class="row">
                                <form onsubmit="return userForm(event)" class="col s12">
                                    <div class="row">
                                        <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                                            <input name="username" class="validate" id="create_username" type="text">
                                            <label for="create_username">Username</label>
                                        </div>
                                        <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                                            <input name="password" class="validate" id="create_password" type="password">
                                            <label for="create_password">Password</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                                            <input name="email" class="validate" id="create_email" type="email">
                                            <label for="create_email">Email</label>
                                        </div>
                                        <div class="input-field col s12"><i class="material-icons prefix"> assignment</i>
                                            <select name="role" class="validate" id="create_role">
                                                <option value="member">Member</option>
                                                <option value="family">Family</option>
                                                <option value="admin">Admin</option>
                                            </select>
                                            <label for="create_role">Role</label>
                                        </div>
                                    </div>
                                    <input type="hidden" name="type" value="create">
                                    <input type="hidden" name="id" value="0">
                                    <div class="modal-footer"><button type="submit" class="btn modal-close waves-effect waves-light mr-2">Create User</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <%
                        for(String[] user: users){
                            String id = user[0];
                            String username = user[1];
                            String email = user[2];
                            String role = user[3];
                            String ip = user[4];
                            String time = user[5];

                            String admin = "", family = "", member = "";
                            if(role.equals("admin"))
                                admin = "selected";
                            if(role.equals("family"))
                                family = "selected";
                            else
                                member = "selected";
                    %>
                    <div class="modal border-radius-6" id="<%=id%>_actions">
                        <div class="modal-content">
                            <h5 class="mt-0"><%=username%> - Actions</h5>
                            <hr>
                            <div class="row">
                                <form onsubmit="return userForm(event)" class="col s12">
                                    <div class="row">
                                        <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                                            <input type="text" name="username" class="validate" id="<%=id%>_username" value="<%=username%>">
                                            <label for="<%=id%>_username">Username</label>
                                        </div>
                                        <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                                            <input type="password" name="password" class="validate" id="<%=id%>_password" value="notapassword">
                                            <label for="<%=id%>_password">Password</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                                            <input type="email" name="email" class="validate" id="<%=id%>_email" value="<%=email%>">
                                            <label for="<%=id%>_email">Email</label>
                                        </div>
                                        <div class="input-field col s12"><i class="material-icons prefix"> assignment</i>
                                            <select name="role" class="validate" id="<%=id%>_role">
                                                <option value="member" <%=member%>>Member</option>
                                                <option value="family" <%=family%>>Family</option>
                                                <option value="admin" <%=admin%>>Admin</option>
                                            </select>
                                            <label for="<%=id%>_role">Role</label>
                                        </div>
                                    </div>
                                    <input type="hidden" name="type" value="change">
                                    <input type="hidden" name="id" value="<%=id%>">
                                    <div class="modal-footer"><button type="submit" class="btn modal-close waves-effect waves-light mr-2">Save</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
                <div class="sidebar-left sidebar-fixed">
                    <div class="sidebar">
                        <div class="sidebar-content">
                            <div class="sidebar-header">
                                <div class="sidebar-details">
                                    <h5 class="m-0 sidebar-title"><i class="material-icons app-header-icon text-top">perm_identity</i> Users</h5>
                                    <div class="mt-10 pt-2">
                                        <p class="m-0 subtitle font-weight-700">Total number of unique visits</p>
                                        <p class="m-0 text-muted"><%=online%> Visits</p>
                                    </div>
                                </div>
                            </div>
                            <div class="sidebar-menu list-group position-relative animate fadeLeft delay-1" id="sidebar-list">
                                <div class="sidebar-list-padding app-sidebar sidenav" id="contact-sidenav">
                                    <ul class="contact-list display-grid">
                                        <li class="sidebar-title">General</li>
                                        <li class="active" id="f-all"><a class="text-sub" href="#!"><i class="material-icons mr-2"> perm_identity</i> All Users</a></li>
                                        <li id="f-latest"><a class="text-sub" href="#!"><i class="material-icons mr-2"> history</i> Latest</a></li>
                                        <li class="sidebar-title">Non-Users</li>
                                        <li id="f-banned"><a class="text-sub" href="#!"><i class="material-icons mr-2"> delete_forever</i> Banned</a></li>
                                        <li class="sidebar-title">Users</li>
                                        <li id="f-admin"><a class="text-sub" href="#!"><i class="amber-text material-icons small-icons mr-2">fiber_manual_record</i> Admin</a></li>
                                        <li id="f-family"><a class="text-sub" href="#!"><i class="purple-text material-icons small-icons mr-2">fiber_manual_record</i> Family</a></li>
                                        <li id="f-member"><a class="text-sub" href="#!"><i class="light-green-text material-icons small-icons mr-2">fiber_manual_record</i> Member</a></li>
                                    </ul>
                                </div>
                            </div><a class="sidenav-trigger hide-on-large-only" href="#" data-target="contact-sidenav"><i class="material-icons">menu</i></a>
                        </div>
                    </div>
                </div>
                <div class="content-area content-right">
                    <div class="app-wrapper">
                        <div class="datatable-search"><i class="material-icons mr-2 search-icon">search</i>
                            <input class="app-filter" id="global_filter" type="text" placeholder="Search user">
                        </div>
                        <div class="card card card-default scrollspy border-radius-6 fixed-width" id="button-trigger">
                            <div class="card-content p-0">
                                <table class="display" id="data-table-contact" style="width:100%;">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th>Username</th>
                                        <th>Email</th>
                                        <th>Rank</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        //{id, username, email, role, ip, time}
                                        for(String[] user: users){
                                            String id = user[0];
                                            String username = user[1];
                                            String email = user[2];
                                            String role = user[3];
                                            String ip = user[4];
                                            String time = user[5];

                                            String admin = "grey", family = "grey", member = "grey";
                                            if(role.equals("admin"))
                                                admin = "amber";
                                            else if(role.equals("family"))
                                                family = "purple";
                                            else
                                                member = "green";
                                    %>
                                    <tr style="height: 80px !important;">
                                        <td class="datum center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/<%=email%>?gravatar=yes" alt="avatar"></span></td>
                                        <td class="datum"><%=username%></td>
                                        <td class="datum"><%=email%></td>
                                        <td class="datum"><span onclick="setRole(<%=id%>, 'admin')" class="badge <%=admin%> waves-effect">Admin</span><span> </span><span onclick="setRole(<%=id%>, 'family')" class="badge <%=family%> waves-effect">Family</span><span> </span><span onclick="setRole(<%=id%>, 'member')" class="badge <%=member%> waves-effect">Member</span>
                                        </td>
                                        <td>
                                            <a class="modal-trigger" href="#<%=id%>_actions"><i class="material-icons">build</i></a>
                                            <i onclick="swal('Info', 'IP: <%=ip%>, Time: <%=time%>', 'info')" class="material-icons">info</i>
                                            <i onclick="deleteUser(<%=id%>)" class="material-icons">delete_outline</i>
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="page-footer footer footer-static footer-dark gradient-45deg-indigo-purple gradient-shadow navbar-border navbar-shadow">
    <div class="footer-copyright">
        <div class="container"><span>Erezbiox1 © 2019</span><span class="right hide-on-small-only">All sources available in<a href="https://github.com/Erezbiox1/ErezGallery"> GITHUB</a></span></div>
    </div>
</footer>
<%--<script src="<%=context%>/admin/js/materialize.min.js" type="text/javascript"></script>--%>
<script src="<%=context%>/admin/js/vendors.min.js" type="text/javascript"></script>
<script src="<%=context%>/admin/vendors/sweetalert/sweetalert.min.js" type="text/javascript"></script>

<script src="<%=context%>/admin/vendors/data-tables/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="<%=context%>/admin/vendors/data-tables/extensions/responsive/js/dataTables.responsive.min.js" type="text/javascript"></script>

<script src="<%=context%>/admin/js/plugins.js" type="text/javascript"></script>
<script src="<%=context%>/admin/js/custom/custom-script.js" type="text/javascript"></script>

<script src="<%=context%>/admin/js/scripts/app-contacts.js" type="text/javascript"></script>
</html>