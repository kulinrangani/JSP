<%@ page import="java.sql.*" %>
		<%
		try{
			
		String url="jdbc:mysql://localhost:3306/STUDENT";
		String username= "root";
		String pass ="";
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(url,username,pass); 
		
		Statement st=con.createStatement();
		
		int id= Integer.parseInt(request.getParameter("sid"));
		String name=request.getParameter("sname");
		String query = "insert into STUDENT values("+id+",'"+name+"')";
		
		st.executeUpdate(query);	
		
		con.close();
		}
		catch(Exception e){out.println(e);}
		%>
		
		<h2 align="center">Record inserted Succesfully</h2>