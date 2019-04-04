<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<%
    String context = "/gallery/";
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
            <li><a class="grey-text text-darken-1" href="user-lock-screen.html"><i class="material-icons">lock_outline</i> Lock</a></li>
            <li><a class="grey-text text-darken-1" href="login.jsp"><i class="material-icons">keyboard_tab</i> Logout</a></li>
          </ul>
        </div>
      </nav>
    </div>
  </header>
  <aside class="sidenav-main nav-expanded nav-lock nav-collapsible sidenav-light sidenav-active-square">
    <div class="brand-sidebar">
      <h1 class="logo-wrapper"><a class="brand-logo darken-1" href="index.html"><img src="<%=context%>/admin/images/logo/materialize-logo-color.png" alt="materialize logo"><span class="logo-text hide-on-med-and-down">Erez's Gallery</span></a><a class="navbar-toggler" href="#"><i class="material-icons">radio_button_checked</i></a></h1>
    </div>
    <ul class="sidenav sidenav-collapsible leftside-navigation collapsible sidenav-fixed menu-shadow ps" id="slide-out" data-menu="menu-navigation" data-collapsible="menu-accordion" style="transform: translateX(0px);">
      <li class="bold"><a class="waves-effect waves-cyan " href="index.html"><i class="material-icons">dashboard</i><span class="menu-title" data-i18n="">Dashboard</span></a>
      </li>
      <li class="navigation-header"><a class="navigation-header-text">Admin </a><i class="navigation-header-icon material-icons">more_horiz</i>
      </li>
      <li class="bold"><a class="waves-effect waves-cyan " href="tickets.html"><i class="material-icons">speaker_notes</i><span class="menu-title" data-i18n="">Tickets</span></a>
      </li>
      <li class="active bold"><a class="waves-effect waves-cyan active " href="users.html"><i class="material-icons">face</i><span class="menu-title" data-i18n="">Users</span></a>
      </li>
      <li class="bold"><a class="collapsible-body waves-effect waves-cyan " href="#"><i class="material-icons">camera_enhance</i><span class="menu-title" data-i18n="">Photos</span></a>
        <div class="collapsible-body">
          <ul class="collapsible collapsible-sub" data-collapsible="accordion">
            <li><a class="collapsible-body" href="trips.html" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>Trips</span></a>
            </li>
            <li><a class="collapsible-body" href="photos.html" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>Photo Manager</span></a>
            </li>
          </ul>
        </div>
      </li>
      <li class="navigation-header"><a class="navigation-header-text">Misc </a><i class="navigation-header-icon material-icons">more_horiz</i>
      </li>
      <li class="bold"><a class="waves-effect waves-cyan " href="settings.html"><i class="material-icons">build</i><span class="menu-title" data-i18n="">Settings</span></a>
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
          <div class="modal border-radius-6" id="createUser">
            <div class="modal-content">
              <h5 class="mt-0">Create new contact</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Add Contact</a></div>
          </div>
          <div class="modal border-radius-6" id="Erezbiox1_actions">
            <div class="modal-content">
              <h5 class="mt-">Erezbiox1 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="vivian6_actions">
            <div class="modal-content">
              <h5 class="mt-">vivian6 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="salazar9_actions">
            <div class="modal-content">
              <h5 class="mt-">salazar9 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="angelica7_actions">
            <div class="modal-content">
              <h5 class="mt-">angelica7 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="chase1_actions">
            <div class="modal-content">
              <h5 class="mt-">chase1 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="greta7_actions">
            <div class="modal-content">
              <h5 class="mt-">greta7 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="clara7_actions">
            <div class="modal-content">
              <h5 class="mt-">clara7 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="beth17_actions">
            <div class="modal-content">
              <h5 class="mt-">beth17 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="margie10_actions">
            <div class="modal-content">
              <h5 class="mt-">margie10 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="ramona4_actions">
            <div class="modal-content">
              <h5 class="mt-">ramona4 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="alana7_actions">
            <div class="modal-content">
              <h5 class="mt-">alana7 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="latasha6_actions">
            <div class="modal-content">
              <h5 class="mt-">latasha6 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="tommie11_actions">
            <div class="modal-content">
              <h5 class="mt-">tommie11 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="mckay17_actions">
            <div class="modal-content">
              <h5 class="mt-">mckay17 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="morin7_actions">
            <div class="modal-content">
              <h5 class="mt-">morin7 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="dora14_actions">
            <div class="modal-content">
              <h5 class="mt-">dora14 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="little18_actions">
            <div class="modal-content">
              <h5 class="mt-">little18 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="maynard3_actions">
            <div class="modal-content">
              <h5 class="mt-">maynard3 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="erin4_actions">
            <div class="modal-content">
              <h5 class="mt-">erin4 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="jeannette18_actions">
            <div class="modal-content">
              <h5 class="mt-">jeannette18 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="modal border-radius-6" id="bond15_actions">
            <div class="modal-content">
              <h5 class="mt-">bond15 - Actionss</h5>
              <hr>
              <div class="row">
                <form class="col s12">
                  <div class="row">
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="first_name" type="text">
                      <label for="first_name">First Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> perm_identity</i>
                      <input class="validate" id="last_name" type="text">
                      <label for="last_name">Last Name</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business</i>
                      <input class="validate" id="company" type="text">
                      <label for="company">Company</label>
                    </div>
                    <div class="input-field col m6 s12"><i class="material-icons prefix"> business_center</i>
                      <input class="validate" id="business" type="text">
                      <label for="business">Job Title</label>
                    </div>
                  </div>
                  <div class="row">
                    <div class="input-field col s12"><i class="material-icons prefix"> email</i>
                      <input class="validate" id="email" type="email">
                      <label for="email">Email</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> call</i>
                      <input class="validate" id="phone" type="number">
                      <label for="phone">Phone</label>
                    </div>
                    <div class="input-field col s12"><i class="material-icons prefix"> note</i>
                      <input class="validate" id="notes" type="text">
                      <label for="notes">Notes</label>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="modal-footer"><a class="btn modal-close waves-effect waves-light mr-2">Save</a></div>
          </div>
          <div class="sidebar-left sidebar-fixed">
            <div class="sidebar">
              <div class="sidebar-content">
                <div class="sidebar-header">
                  <div class="sidebar-details">
                    <h5 class="m-0 sidebar-title"><i class="material-icons app-header-icon text-top">perm_identity</i> Users</h5>
                    <div class="mt-10 pt-2">
                      <p class="m-0 subtitle font-weight-700">Total number of online users</p>
                      <p class="m-0 text-muted">1457 Online</p>
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
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Rank</th>
                        <th>Info</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/Erezbiox1@gmail.com?gravatar=yes" alt="avatar"></span></td>
                        <td>Erezbiox1</td>
                        <td>Erez Rotem</td>
                        <td>Erezbiox1@gmail.com</td>
                        <td><span class="badge amber waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge grey waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#Erezbiox1_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/glenda conley@steelfab.us?gravatar=yes" alt="avatar"></span></td>
                        <td>vivian6</td>
                        <td>Glenda Conley</td>
                        <td>glenda conley@steelfab.us</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge purple waves-effect">Family</span><span> </span><span class="badge grey waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#vivian6_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/lawson clements@homelux.biz?gravatar=yes" alt="avatar"></span></td>
                        <td>salazar9</td>
                        <td>Lawson Clements</td>
                        <td>lawson clements@homelux.biz</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge purple waves-effect">Family</span><span> </span><span class="badge grey waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#salazar9_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/burris william@sportan.co.uk?gravatar=yes" alt="avatar"></span></td>
                        <td>angelica7</td>
                        <td>Burris William</td>
                        <td>burris william@sportan.co.uk</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#angelica7_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/cannon strong@bedlam.info?gravatar=yes" alt="avatar"></span></td>
                        <td>chase1</td>
                        <td>Cannon Strong</td>
                        <td>cannon strong@bedlam.info</td>
                        <td><span class="badge red waves-effect">Banned</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#chase1_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/roxie osborne@phormula.net?gravatar=yes" alt="avatar"></span></td>
                        <td>greta7</td>
                        <td>Roxie Osborne</td>
                        <td>roxie osborne@phormula.net</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#greta7_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/young dennis@imaginart.org?gravatar=yes" alt="avatar"></span></td>
                        <td>clara7</td>
                        <td>Young Dennis</td>
                        <td>young dennis@imaginart.org</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#clara7_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/harrison kirby@zogak.tv?gravatar=yes" alt="avatar"></span></td>
                        <td>beth17</td>
                        <td>Harrison Kirby</td>
                        <td>harrison kirby@zogak.tv</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#beth17_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/bauer snow@undertap.com?gravatar=yes" alt="avatar"></span></td>
                        <td>margie10</td>
                        <td>Bauer Snow</td>
                        <td>bauer snow@undertap.com</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#margie10_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/juliet griffin@comfirm.ca?gravatar=yes" alt="avatar"></span></td>
                        <td>ramona4</td>
                        <td>Juliet Griffin</td>
                        <td>juliet griffin@comfirm.ca</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#ramona4_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/josefa riddle@ecrater.io?gravatar=yes" alt="avatar"></span></td>
                        <td>alana7</td>
                        <td>Josefa Riddle</td>
                        <td>josefa riddle@ecrater.io</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#alana7_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/rutledge sharp@ultrimax.biz?gravatar=yes" alt="avatar"></span></td>
                        <td>latasha6</td>
                        <td>Rutledge Sharp</td>
                        <td>rutledge sharp@ultrimax.biz</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#latasha6_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/baker wood@electonic.me?gravatar=yes" alt="avatar"></span></td>
                        <td>tommie11</td>
                        <td>Baker Wood</td>
                        <td>baker wood@electonic.me</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge purple waves-effect">Family</span><span> </span><span class="badge grey waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#tommie11_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/valentine vance@geekus.us?gravatar=yes" alt="avatar"></span></td>
                        <td>mckay17</td>
                        <td>Valentine Vance</td>
                        <td>valentine vance@geekus.us</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge purple waves-effect">Family</span><span> </span><span class="badge grey waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#mckay17_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/enid simmons@syntac.biz?gravatar=yes" alt="avatar"></span></td>
                        <td>morin7</td>
                        <td>Enid Simmons</td>
                        <td>enid simmons@syntac.biz</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#morin7_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/leach walsh@vantage.co.uk?gravatar=yes" alt="avatar"></span></td>
                        <td>dora14</td>
                        <td>Leach Walsh</td>
                        <td>leach walsh@vantage.co.uk</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#dora14_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/rosie roberson@quadeebo.info?gravatar=yes" alt="avatar"></span></td>
                        <td>little18</td>
                        <td>Rosie Roberson</td>
                        <td>rosie roberson@quadeebo.info</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#little18_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/addie herman@valreda.net?gravatar=yes" alt="avatar"></span></td>
                        <td>maynard3</td>
                        <td>Addie Herman</td>
                        <td>addie herman@valreda.net</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#maynard3_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/jannie mcmahon@geekosis.org?gravatar=yes" alt="avatar"></span></td>
                        <td>erin4</td>
                        <td>Jannie Mcmahon</td>
                        <td>jannie mcmahon@geekosis.org</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#erin4_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/velez navarro@isodrive.tv?gravatar=yes" alt="avatar"></span></td>
                        <td>jeannette18</td>
                        <td>Velez Navarro</td>
                        <td>velez navarro@isodrive.tv</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge grey waves-effect">Family</span><span> </span><span class="badge green waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#jeannette18_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
                      <tr>
                        <td class="center-align"><span class="avatar-contact avatar-online"><img src="https://robohash.org/hendricks lancaster@ginkle.com?gravatar=yes" alt="avatar"></span></td>
                        <td>bond15</td>
                        <td>Hendricks Lancaster</td>
                        <td>hendricks lancaster@ginkle.com</td>
                        <td><span class="badge grey waves-effect">Admin</span><span> </span><span class="badge purple waves-effect">Family</span><span> </span><span class="badge grey waves-effect">Member</span>
                        </td>
                        <td><span>IP: 192.168.1.1</span><br><span>Time: 19:12 - 17/3/2019</span></td>
                        <td><a class="modal-trigger" href="#bond15_actions"><i class="material-icons">build</i></a><i class="material-icons">info</i><i class="material-icons delete">delete_outline</i></td>
                      </tr>
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
  <script src="<%=context%>/admin/js/materialize.min.js" type="text/javascript"></script>
  <script src="<%=context%>/admin/js/vendors.min.js" type="text/javascript"></script>
  <script src="<%=context%>/admin/js/custom/custom-script.js" type="text/javascript"></script>
  <script src="<%=context%>/admin/js/plugins.js" type="text/javascript"></script>
  <script src="<%=context%>/admin/js/scripts/app-contacts.js" type="text/javascript"></script>
  <script src="<%=context%>/admin/vendors/data-tables/js/jquery.dataTables.min.js" type="text/javascript"></script>
  <script src="<%=context%>/admin/vendors/data-tables/extensions/responsive/js/dataTables.responsive.min.js" type="text/javascript"></script>
</html>