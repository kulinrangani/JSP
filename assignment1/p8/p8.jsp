<%@ page import="java.io.*,java.util.*" %>
<html>
<body align="center">
<%! 
	int count=0;
%>

<%	
	if( count == 0){
		out.println("Welcome to webpage YOU ARE FIRST VISITER");
		count =1;
	}		
	else {
		out.println("Total no. of visite is " + count);
		count ++;
	}
	application.setAttribute("hitCounter",count);
%>
</body>
</html>