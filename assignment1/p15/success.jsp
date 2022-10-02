<!DOCTYPE html>
<html lang="en">
  <body align="center">
    <%!
      void printDetails(JspWriter out, String cities, int distance, int time) throws Exception {
        double speed = distance / time;
        out.println("<div>");
        out.println("<p>City: " + cities + "</p>");
        out.println("<p>Distance : " + distance + "km</p>");
        out.println("<p>Time Taken: " + time + "hr</p>");
        out.println("<p>Speed(km/h) : " + speed + "km/h</p>");
        out.println("</div>");
      }
    %>
    <main>
      <h1>Speed Details</h1>
      <%! String txtABDistance, txtABTime, txtBCDistance,txtBCTime, txtCDDistance, txtCDTime; %>
      <%
        try{
          txtABDistance = request.getParameter("abDistance");
          txtABTime = request.getParameter("abTime");
          txtBCDistance = request.getParameter("bcDistance");
          txtBCTime = request.getParameter("bcTime");
          txtCDDistance = request.getParameter("cdDistance");
          txtCDTime = request.getParameter("cdTime");
          if(txtABDistance == null || txtABTime == null || txtBCDistance == null || txtBCTime == null || txtCDDistance == null || txtCDTime == null){
            throw new Exception("Enter valid data");
          }
          printDetails(out, "A-B", Integer.parseInt(txtABDistance), Integer.parseInt(txtABTime));
          printDetails(out, "B-C", Integer.parseInt(txtBCDistance), Integer.parseInt(txtBCTime));
          printDetails(out, "C-D", Integer.parseInt(txtCDDistance), Integer.parseInt(txtCDTime));

        }catch(Exception e){
      %>
            <jsp:forward page="error.jsp">
              <jsp:param name="error" value="<%= e.getMessage() %>"/>
            </jsp:forward>
      <%
        }
      %> 
      <a href="./index.jsp">
        <button class="button">Go Back</button>
      </a>
    </main>
  </body>
</html>


