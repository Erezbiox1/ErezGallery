<%@include file="../top.jsp"%>
        <div class="eg-gallery">
            <%
                /*
                String[][] photos = {
                        {"1", "London", "A dog"},
                        {"2", "London", "A wolf"},
                        {"3", "London", "Sunshine"},
                        {"4", "London", "Me"},
                        {"5", "London", "You"},
                        {"6", "London", "A dog"},
                        {"7", "London", "A wolf"},
                        {"8", "London", "Sunshine"},
                        {"9", "London", "Me"},
                        {"10", "London", "You"},
                        {"11", "London", "A dog"},
                        {"12", "London", "A wolf"},
                        {"13", "London", "Sunshine"},
                        {"14", "London", "Me"},
                        {"15", "London", "You"},
                        {"16", "London", "A dog"}
                };
                */

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

