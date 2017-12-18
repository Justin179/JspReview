<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>to do list</title>
</head>
<body>

<!-- step 1: create html form -->
<form action="todo-demo.jsp">
	add new item: <input type="text" name="theItem"/><br>
	<input type="submit" value="Submit"/>
</form>

<br>


<!-- step 2: add new item to the to-do-list -->
<%
	// get the to-do-list from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	// if the the to-do-list doesn't exist, then create a new one
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	// see if there is form data to add
	String theItem = request.getParameter("theItem");
	if(theItem!=null){
		items.add(theItem);
	}
	
%>

<!-- step 3: display all to do items from session -->
<hr>
<b>To Do List Items</b>

<ol>
<%
	for(String temp : items){
		out.println("<li>"+temp+"</li>"); 
	}

%>
</ol>

</body>
</html>












