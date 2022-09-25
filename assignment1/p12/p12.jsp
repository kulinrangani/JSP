<%@ page import="java.util.Random" %>

<html>
<body align="center">

<table align="center" border="1">
<th>Odd</th><th>Even</th>
<%!
	Random r=new Random();
	int no;
 %>
<% for(int i=1;i<=10;i++) {
	no=r.nextInt(10) + 1;
	%>
<tr>
	<td>
	<% if(no % 2 != 0) {%>
	<%= no %>
	</td>
	<% }
	else { %>
	<td>
	<%= no %>
	</td>
	<% } %>
</tr>
<% } %>
</body>
</html>