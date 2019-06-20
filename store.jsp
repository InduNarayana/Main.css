<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.lang.*" %>>
<%
String[] ans=request.getParameterValues("ans");	
for(String s:ans){
	out.println(s);
	out.println();
}
%>