<html>

<body>
    <%! 
		String s;
		int n,result;
		int getFactorial(int i){
		if(i==0)
			return 1; 
		else
			return i*getFactorial(i-1); 
			 
		} 
	%>
		
	<% 
		s=request.getParameter("txtFact");
		n= Integer.parseInt(s);
		result=getFactorial(n); 
	%>
	<h2>
		Factorial is: 
	</h2>
	<%= result %>
</body>



</html>