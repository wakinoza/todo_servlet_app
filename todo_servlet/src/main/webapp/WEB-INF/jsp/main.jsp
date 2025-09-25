<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User, model.TodoItem, model.Progress, java.util.List" %>
<% 
User loginUser = (User)session.getAttribute("loginUser");
List<TodoItem> todoItemList = (List<TodoItem>)application.getAttribute("todoItemList");
String pending = "未実施";
String in_progress = "実施中";
String completed = "完了済";
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
<form action="Main?action=make" method="post">
<input type="text" name="text">
<input type="submit" value="Todoを新規追加">
</form>
<% 
for (TodoItem todoItem : todoItemList) {
    if (todoItem.getProgress() == Progress.PENDING) { 
%>
	<p><%= pending %> : <%= todoItem.getText() %> : <a href="Main?action=<%= todoItem.getFileName() %>">進捗を更新</a></p>
<%  } else if (todoItem.getProgress() == Progress.IN_PROGRESS) { %>
	<p><%= in_progress %> : <%= todoItem.getText() %> : <a href="Main?action=<%= todoItem.getFileName() %>">進捗を更新</a></p>
<%  } else { %>
	<p><%= completed %> : <%= todoItem.getText() %> : <a href="Main?action=<%= todoItem.getFileName() %>">todoを削除</a></p>
<% } %>
<% } %>
</body>
</html>