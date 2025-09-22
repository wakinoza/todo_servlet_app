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
<h1>Todoログイン</h1>
<% if(loginUser != null) { %>
 <p>ログインに成功しました</p>
 <p>ようこそ<%=loginUser.getName() %>さん</p>
<a href="Main">Todo一覧を確認する</a>
<% } else { %>
<p>ログインに失敗しました</p>
<a href="index.jsp">TOPへ</a>
<% } %>
</body>
</html>