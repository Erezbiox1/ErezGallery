<%@include file="../top.jsp"%>
    <%
        String[] first = (String[]) request.getAttribute("firstTrip");
        String[][] otherTrips = (String[][]) request.getAttribute("otherTrips");

        String fName = first[0];
        String fFile = first[1];
        String fDate = first[2];
        String fDesc = first[3];
    %>
    <div class="eg-narrow-content">
        <div class="row">
            <div class="col-md-5">
                <h2 class="eg-heading animate-box fadeInLeft animated" data-animate-effect="fadeInLeft">Last Trip I took: <%=fName%>!</h2>
                <h4 class="animate-box fadeInLeft animated" data-animate-effect="fadeInLeft"><%=fDate%></h4>
                <p class="eg-lead animate-box fadeInLeft animated" data-animate-effect="fadeInLeft"><%=fDesc%></p>
                <p><a href="t/<%=fFile%>" class="btn btn-primary btn-outline animate-box fadeInLeft animated">Check it out</a></p>
            </div>
            <div class="col-md-6 col-md-push-1 animate-box fadeInLeft animated" data-animate-effect="fadeInLeft">
                <img src="<%=context%>photos/trips/<%=fFile%>.jpg" alt="Image" class="img-responsive">
            </div>
        </div>

    </div>

    <div class="eg-narrow-content  animate-box eg-border-bottom fadeInLeft animated" data-animate-effect="fadeInLeft">
        <h2 class="eg-heading">Other Trips</h2>
        <div class="row">
            <%
                for(String[] trip: otherTrips){
                    String name = trip[0];
                    String file = trip[1];
                    String date = trip[2];
                    String desc = trip[3];
            %>
            <div class="col-md-4 eg-staff">
                <img src="<%=context%>photos/trips/<%=file%>.jpg" alt="Image" class="img-responsive">
                <h3><%=name%></h3>
                <h4><%=date%></h4>
                <p><%=desc%></p>
                <div class="eg-social">
                    <p><a href="t/<%=file%>" class="btn btn-primary btn-outline">Check it out</a></p>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
<%@include file="../bottom.jsp"%>

