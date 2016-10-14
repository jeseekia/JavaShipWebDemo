<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*,javax.sql.*"%>
<%@ page import = "com.coolkids.Test" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo JSP/JDBC Project</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
		
		String url = "XXXXXX";
		String username = "XXXXXX";
		String password = "XXXXXX";
		Connection con = DriverManager.getConnection(url,username,password);
		
		Statement st = con.createStatement();
		
		String query = "select * from roster";
		ResultSet rs = st.executeQuery(query);
				
		while(rs.next()){
			String studentName = rs.getString("Name");
			String studentClass = rs.getString("Class");
		
			String coolKidsWord = Test.sayHi();
%>			
			<!-- System.out.println(studentName + ": " + studentClass); -->
		<h2><%=studentName %></h2>
		<h3><%=studentClass %></h3>
		<p><%=coolKidsWord %></p>
		
		
	<% 	
		}
		
	%>	
</body>
</html>