<%@ page import="java.lang.Math" %>
<html>

<body align="center">
<h1>Sin Table</h1>
<table border="1" align="center">
<th> No. </th><th> Sin Value </th>
<%!
	int no[]={0,1,5,10,15,20};
%>
<%
	for(int i=0;i<no.length;i++){ %>
		<tr>
				<td><%= no[i] %></td>
				<td><%= Math.sin(no[i]) %></td>
		</tr>
	<% } %>
</table>	
</body>

</html>