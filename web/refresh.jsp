<%@ page import="com.erezbiox1.PhotoManager" %>
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
        // Check privilege - TODO
        PhotoManager.INSTANCE.refresh();
        if(true){
    %>
    <h1>Success</h1>
    <%}else{%>
    <h1>Failed, insufficient permission.</h1>
    <%}%>
</body>
</html>
