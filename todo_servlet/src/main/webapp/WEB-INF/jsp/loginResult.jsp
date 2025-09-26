<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo管理ページ</title>
</head>
<body>
<h1>Todo管理ページログイン</h1>
<c:choose>
 <c:when test="${empty loginUser}">
  <p>ログインに失敗しました</p>
  <a href="index.jsp">TOPへ</a>
 </c:when>
 <c:otherwise>
  <p>ログインに成功しました</p>
  <p>ようこそ ${loginUser.name}さん</p>
  <a href="Main">Todo一覧を確認する</a>
 </c:otherwise>
</c:choose>
</body>
</html>