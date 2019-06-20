<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Survey</title>
</head>
<body>
<%
String qno=request.getParameter("qno");
String question=request.getParameter("question");
String optionA=request.getParameter("optionA");
String optionB=request.getParameter("optionB");
String optionC=request.getParameter("optionC");
String optionD=request.getParameter("optionD");
String optionE=request.getParameter("optionE");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into surveyform values('"+qno+"','"+question+"','"+optionA+"','"+optionB+"','"+optionC+"','"+optionD+"','"+optionE+"')");
out.println("Data is successfully inserted!");
%>
<form action="create.html">
	<input type="submit" value="Enter another question.">
</form>
<% 
}
catch(Exception e){
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>