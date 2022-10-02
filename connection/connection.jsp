<%@ page import="java.sql.*" %>
		<%	
		String url="jdbc:mysql://localhost:3306/STUDENT";
		String username= "root";
		String pass ="";
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(url,username,pass); 
		
		Statement st=con.createStatement();		
		%>
<html>
<style>
		input{
			width:220px;
		}
		body{
			background:linear-gradient(200deg,skyblue,pink);
		}
		button{
			width:200px;
			}
		body{
			text-align:center;
			}
		table,th,td {
			text-align:center;
			margin-left:auto;
			margin-right:auto;
			border:1px solid ;
			border-collapse:collapse;
			width:50%;
			}
</style>
<body>
<br>
<% 
ResultSet rs=st.executeQuery("select * from STUDENT");
%>
<table>
<th colspan="2">Current Records</th>
		<tr>
			<th>
				Student Id
			</th>
			<th>
				Student Name
			</th>
		</tr>
</table>
<%
while(rs.next()){
	%>
	<table>
		<tr>
			<td>
			<%	out.print(rs.getString(1)); %>
			</td>
			<td>
			<% out.print(rs.getString(2)); %>
			</td>
		</tr>
	</table>
	<%
}

%>
----------------------------------------------
<h3>For Insert</h3>
<form action="insert.jsp" method="post">
<table>
	<tr>
		<td>Enter Student ID:</td>
		<td><input type="text" name="sid" required></td>
	</tr>
	<tr>
		<td>Enter Student Name:</td>
		<td><input type="text" name="sname"></td>
	</tr>
	
	<tr>
	<td colspan="2">
	<button type="submit">Insert</button>
	</td>
	</tr>
</table>
</form>
<br>
----------------------------------------------
<h3>For Delete</h3>
<form action="delete.jsp">
<table>
	<tr>
		<td>Enter ID To Delete:</td>
		<td><input type="text" name="sid" required></td>
	</tr>
	<tr>
		<td colspan="2">
			<button type="submit">Delete Record</button>
		</td>
	</tr>
</table>

</form>
----------------------------------------------
		
</body>
</html>
<% con.close(); %>