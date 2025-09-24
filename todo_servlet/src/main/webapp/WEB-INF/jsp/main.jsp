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
<p><a href="Main?action=make">画面を更新する</a></p>
<form action="Main" method="post">
<input type="text" name="text">
<input type="submit" value="Todoを新規追加">
</form>
<% for (TodoItem todoItem : todoItemList) {
	if (todoItem.getProgress() == Progress.PENDING) { 
	     String progressString = "未実施";  %>
	<p><%= progressString %> : <%= todoItem.getText() %> : <a herf="Main?action=<%= todoItem.getFileName() %>">進捗を更新</a></p>
<% } else if (todoItem.getProgress() == Progress.IN_PROGRESS) { 
	     String progressString = "実施中";  %>
	<p><%= progressString %> : <%= todoItem.getText() %> : <a herf="Main?action=<%= todoItem.getFileName() %>">進捗を更新</a></p>
<% } else { 
	     String progressString = "完了済";   %>
	<p><%= progressString %> : <%= todoItem.getText() %> : <a herf="Main?action=<%= todoItem.getFileName() %>">todoを削除</a></p>
<% } %>
<% } %>
</body>
</html>