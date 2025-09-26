<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.TodoItem, model.Progress, java.util.List" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<% 
String errorMsg = (String )request.getAttribute("errorMsg");
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
<c:out value=＄{loginUser.name} />さん、ログイン中
<a href="Logout">ログアウトする</a>
</p>
<p><a href="Main">画面を更新する</a></p>
<form action="Main?action=make" method="post">
<input type="text" name="text">
<input type="submit" value="Todoを新規追加">
</form>
<c:if test="not empty errorMsg">
<p><%= errorMsg %></p>
</c:if>
<c:forEach var="todoItem" items="todoItemList">
  <c:choose>
   <c:when test="todoItem.progress = Progress.PENDING"> 
	<p><%= pending %> : ${todoItem.text} : <a href="Main?action=${todoItem.fileName}">進捗を更新</a></p>
   </c:when>
   <c:when test="todoItem.progress = Progress.IN_PROGRESS"> 
	<p><%= in_progress %> : ${todoItem.text} : <a href="Main?action=${todoItem.fileName}">進捗を更新</a></p>
   </c:when>
   <c:otherwise>
    <p><%= completed %> : ${todoItem.text} : <a href="Main?action=${todoItem.fileName}">todoを削除</a></p>
   </c:otherwise>
 </c:choose>
</c:forEach>
</body>
</html>