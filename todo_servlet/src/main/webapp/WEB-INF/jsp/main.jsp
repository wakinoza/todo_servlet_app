<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<% 
User loginUser = (User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo管理ページ</title>
</head>
<body>
<p>
<%= loginUser.getName() %>さん、ログイン中
<a href="Logout">ログアウトする</a>
</p>
<p><a href="Main">画面を更新する</a></p>
<form action="Main" method="post">
<input type="text" name="text">
<input type="submit" value="Todoを追加">
</form>
</body>
</html>