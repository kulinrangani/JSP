<!DOCTYPE html>
<html lang="en">
  <body align="center"> 
    <main>
        <h1>Error Occured</h1>
        <div class="w-10/12 mx-auto text-lg font-medium">
            <%
                String error = request.getParameter("error");
                if(error == null){
                    error = "Someting went wrong!";
                }
                out.println("<p class=\"text-red-500\">Error: " + error + "</p>");
            %>

            <a href="./index.jsp">
                <button class="button">Go Back</button>
            </a>
        </div>
    </main>
  </body>
</html>
