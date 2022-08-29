<html>
<head>
	<title>
		pyramid.jsp
	</title>
</head>
<body align="center">
	<%!
		int p;
		String n;
	%>
	

	<%
		n=request.getParameter("numPyramid");
		p=Integer.parseInt(n);
		
		for(int i=0;i<p;i++){
			for(int j=0;j<=i;j++){
				out.print("* ");
				}
			out.println("<br>");
		}
		for(int k=p;k>=0;k--){
			for(int j=k;j>=0;j--){
				out.print("* ");
				}
			out.println("<br>");
		}
	%>
		
</body>
</html>
