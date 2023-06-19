<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp" />
<section>
<h2><b>홈쇼핑 회원 등록</b></h2>
<form method="post" action="action.jsp" name="frm">

<table>
	
	<tr>
		<td>회원번호(자동등록)</td>
		<td><input type="text" name="custno" readonly></td>
	</tr>
	<tr>
		<td>회원성명</td>
		<td><input type="text" name="custname"></td>
	</tr>
	<tr>
		<td>회원전화</td>
		<td><input type="text" name="phone"></td>
	</tr>
	<tr>
		<td>회원주소</td>
		<td><input type="text" name="joindate"></td>
	</tr>
	<tr>
		<td>가입일자</td>
		<td><input type="text" name="joindate"></td>
	</tr>
	<tr>
		<td>고객등급[A:VIP, B:일반,C:직원]</td>
		<td><input type="text" name="grade"></td>
	<tr>
	<tr>
		<td>도시코드</td>
		<td><input type="text" name="city"></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="등록" onclick="return joinCheck()">
		<input type="button" value="조회" onclick="return search()">
	</tr>
	</table>
</form>


</section>
<jsp:include page="footer.jsp" />
</body>
</html>
