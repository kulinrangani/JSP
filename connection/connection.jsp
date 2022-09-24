<%@page import="java.sql.*" %>
<% 
	String url="jdbc:mysql://localhost:3306/STUDENT";
	String username= "root";
	String pass ="";
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(url,username,pass); 
	
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from STUDENT");  
	while(rs.next())
	{
		 out.print(rs.getString(1)+"  "+rs.getString(2)+" ");  
	}  
	con.close(); 
%>