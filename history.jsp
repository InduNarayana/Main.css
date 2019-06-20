<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} 
catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Retrieve data</h1>
<table border="1">
<tr>
<td>Name_of_survey</td>
<td>optionA</td>
<td>optionB</td>
<td>optionC</td>
<td>optionD</td>
<td>optionE</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from surveydetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name_of_survey") %></td>
<td><%=resultSet.getString("Excellent") %></td>
<td><%=resultSet.getString("VeryGood") %></td>
<td><%=resultSet.getString("Good") %></td>
<td><%=resultSet.getString("Poor") %></td>
<td><%=resultSet.getString("VeryPoor") %></td>
</tr>
<%
}
connection.close();
}
catch (Exception e) {
	//out.println("Couldnot connect to db");
	e.printStackTrace();
}
%>
</table>
</body>
</html>