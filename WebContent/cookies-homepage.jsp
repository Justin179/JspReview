<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cookies-homepage</title>
</head>
<body>

<!-- read the favorite programming language cookie -->
<%

	// the default, if there are no cookies
	String favoriteLanguage = "Java";	
	
	// get the cookies from the browser request
	Cookie[] cookies = request.getCookies();
	
	// find your favorite language cookie
	if(cookies!=null){
		for(Cookie cookie : cookies){
			if("myApp.favoriteLanguage".equals(cookie.getName())){
				favoriteLanguage = cookie.getValue();
				break;
			}
		}
	}

%>

<!-- show a personalized page ... the the favorite language  -->

<!-- show new books for this language -->
<h4>new books for <%= favoriteLanguage %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest news reports for <%= favoriteLanguage %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>hot jobs for <%= favoriteLanguage %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>
<hr>
<a href="cookies-personalize-form.html">personalize the page</a>
</body>
</html>











