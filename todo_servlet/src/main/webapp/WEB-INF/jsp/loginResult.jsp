<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo管理ページ</title>
</head>
<body>
<h1>Todoログイン</h1>
<c:choose>
 <c:when test="${loginUser != null}">
  <p>ログインに成功しました</p>
  <p>ようこそ ${loginUser.name}さん</p>
  <a href="Main">Todo一覧を確認する</a>
 </c:when>
 <c:otherwise>
  <p>ログインに失敗しました</p>
  <a href="index.jsp">TOPへ</a>
 </c:otherwise>
</c:choose>
</body>
</html>