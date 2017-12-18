<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	// read form data
	String favoriteLanguage = request.getParameter("favoriteLanguage");
	
	// create the cookie
	Cookie cookie = new Cookie("myApp.favoriteLanguage", favoriteLanguage);
	
	// set the life span ... total number of seconds
	cookie.setMaxAge(60*60*24*365); // 一年的總秒數
	
	// send cookie to browser
	response.addCookie(cookie);
	
%>
<body>

	Thanks! we set your favorite language to : ${param.favoriteLanguage}

<br><br>
	<a href="cookies-homepage.jsp">Return to homepage</a>
</body>
</html>