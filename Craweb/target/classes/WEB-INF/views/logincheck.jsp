<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${list}" var="check">
<h3>${check.uNum}</h3>
<h3>${check.uId}</h3>
<h3>${check.uPw}</h3>
<h3>${check.uState}</h3>
</c:forEach>
</body>
</html>