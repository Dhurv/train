<%@page import="com.team3.model.Train"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<% List<Train> list = (List) request.getAttribute("key");
	for(Train t:list){
%>
<tbody>
<tr>
<td><%out.print(t.getTrain_no()) ;%></td>
<td><%out.print(t.getTrain_name());%></td>
<td><%out.print(t.getSource()) ;%></td>
<td><%out.print(t.getDestination()) ;%></td>
<td><%out.print(t.getTicket_price()) ;%></td>
</tr>
<%} %>



</tbody>
</table>

</body>
</html>