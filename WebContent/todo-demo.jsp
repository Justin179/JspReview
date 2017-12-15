<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>to do list</title>
</head>
<body>

<form action="todo-demo.jsp">
	add new item: <input type="text" name="theItem"/><br>
	<input type="submit" value="Submit"/>
</form>

<br>
Item entered: <%= request.getParameter("theItem") %>

</body>
</html>