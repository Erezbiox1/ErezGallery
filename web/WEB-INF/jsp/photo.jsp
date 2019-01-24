<%@include file="../top.jsp"%>
        <%
            String id = (String) request.getAttribute("id");
            String name = (String) request.getAttribute("name");
            String trip = (String) request.getAttribute("trip");
            String tripFile = (String) request.getAttribute("tripFile");
            String desc = (String) request.getAttribute("desc");
        %>
        <div class="eg-narrow-content animate-box eg-border-bottom" data-animate-effect="fadeInLeft">
            <div class="row">
                <h2 class="eg-heading" style="display: inline-block"><%=name%></h2>
                <a href="<%=context%>t/<%=tripFile%>" style="float: right;"><i><%=trip%></i></a>
            </div>
            <figure><img src="<%=context%>photos/<%=id%>_big.png" alt="Photo" class="img-responsive">
                <figcaption><%=desc%></figcaption>
            </figure>

        </div>
<%@include file="../bottom.jsp"%>