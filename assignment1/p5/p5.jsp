<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body align="center">
  <br><br>
  <h3>Order page</h3>
    <%
		String pname = request.getParameter("p_name");
		int amount=Integer.parseInt(request.getParameter("amount"));
		int unit=Integer.parseInt(request.getParameter("unit"))	;		
	%>
	
    <table border="1"  align="center">
      <tr>
        <td>Product Name:</td>
		<td><% out.print(pname); %></td>
      </tr>
	  <tr>
        <td>Unit:</td>
		<td><% out.print(unit); %></td>
      </tr>
	  <tr>
        <td>Amount:</td>
		<td><% out.print(amount); %></td>
      </tr>
	  <tr>
        <td> Total Amount:</td>
		<td><% out.print(amount*unit); %></td>
      </tr>
 
	  
    </table>
  </body>
</html>
