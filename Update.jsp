<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String entry="A";
int Excellent=0;
int VeryGood=0;
int Good=0;
int Poor=0;
int VeryPoor=0;
if(entry=="A"){
	Excellent=Excellent+1;
}
else if(entry=="B"){
	VeryGood++;
}
else if(entry=="C"){
	Good++;
}
else if(entry=="D"){
	Poor++;
}
else if(entry=="E"){
	VeryPoor++;
}
%>>
</body>
</html>