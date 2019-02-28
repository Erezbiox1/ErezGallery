<%@ page import="com.erezbiox1.PhotoManager" %>
<%@ page import="com.erezbiox1.SessionManager" %>
<%--
  This is a manual refresh - the reason photos are cached are because the
  system refreshes the cahce everytime an admin changes something through the
  admin panel, this is a manuel version for SQL changes.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Refresh</title>
</head>
<body>
    <%
        String role = "guest";
        SessionManager.Session s = SessionManager.Companion.getSession(request);
        if(s.getUser() != null){
            role = s.getUser().getRole();
        }
        if(role != null && role.equals("admin")){
            PhotoManager.INSTANCE.refresh();
    %>
    <h1>Success</h1>
    <%}else{%>
    <h1>Failed, insufficient permission.</h1>
    <%}%>
    <h2>Rank: <%=role%></h2>
</body>
</html>
