<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.lang.*"%>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
    Statement st=conn.createStatement();
    String sql="select * from surveyform";
    ResultSet rs=st.executeQuery(sql);
    while(rs.next()){
    	int qno=rs.getInt("qno");
        String question=rs.getString("question");
        String optionA=rs.getString("optionA");
        String optionB=rs.getString("optionB");
        String optionC=rs.getString("optionC");
        String optionD=rs.getString("optionD");		
        String optionE=rs.getString("optionE");
        out.println(qno+"."+question);														
%>									
	<form action="store.jsp" method="post">
		<input type="checkbox" name="ans" value="optionA">
		<%out.println(optionA); %><br>
	    <input type="checkbox" name="ans" value="optionB">
	    <%out.println(optionB); %><br>
	    <input type="checkbox" name="ans" value="optionC">
	    <%out.println(optionC); %><br>
	    <input type="checkbox" name="ans" value="optionD">
	    <%out.println(optionD); %><br>
	    <input type="checkbox" name="ans" value="optionE">
	    <%out.println(optionE); %><br>
<%
		out.println("\n");
    }
%>
  		<input type="submit" value="Next">
  	</form> 
<% 
}
catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
}
%>