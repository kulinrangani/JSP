<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body align="center">
    <% out.print("Good Morning "); %> 
    <% response.setContentType("text/html"); %>
    <% 
        String name = "";
        if(name == "")
        {
            session.setAttribute(name,"Kulin Rangani");
        }
            out.print(session.getAttribute(name));
    
    %>
</body>
</html>