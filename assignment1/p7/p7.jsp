   <html>
	<head>
			<title>
		  Body color
			</title>
	</head>
	<%
	if (request.getParameter("color") != null){%>
		<body bgcolor="<%= request.getParameter("color")  %>">
	<%}
	else{%>
		<body bgcolor="white">	
	<%}%>		
</body>
</html>
