<html>
<head>
	<title>
		palindrom.jsp
	</title>
</head>
<body align="center"> 
<%!
	int temp,rem,sum,num;
	String val,result;
	String checkPalindrom(int n){
		temp=n;
		while(n > 0){
			rem=n%10;
			sum=(sum*10)+rem;
			n=n/10;
		}
		
		if(temp == sum)
			return "Number is Palindrom";
		else
			return "Number is not palindrom";
		
	}
%>
	
<%
	val=request.getParameter("numPalindrom");
	num=Integer.parseInt(val);
	result=checkPalindrom(num);
%>
<h2>
<%=  result  %>
</h2>
</body>
</html>