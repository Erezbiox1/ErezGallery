<%@include file="../top.jsp"%>
    <div class="eg-gallery">
    <%
        String[][] photos = (String[][]) request.getAttribute("photos");

        for(String[] photo: photos){
            String id = photo[0];
            String trip = photo[1];
            String name = photo[2];
    %>
    <a class="gallery-item" href="<%=context%>p/<%=id%>">
        <img alt="Photo" src="<%=context%>photos/<%=id%>.jpg">
        <span class="overlay">
                        <h2><%=name%></h2>
                        <span><%=trip%></span>
                    </span>
    </a>
    <%
        }
    %>
    </div>
<%@include file="../bottom.jsp"%>