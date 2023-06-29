<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTFß8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
<form method="post" name="frm" action="i_action.jsp">
<h2><b>수강신청</b></h2>
<table border=1>
	<tr>
		<td>수강월</td>
		<td><input type="text" name="date">예)202203</td>
	</tr>
	
	<tr>
		<td>회원명</td>
		<td>
			<select name="memberName">
				<option value="">회원명</option>
				<option value="10001">홍길동</option>
				<option value="10002">장발장</option>
				<option value="10003">임꺽정</option>
				<option value="10004">성춘향</option>
				<option value="10005">이몽룡</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td>회원번호</td>
		<td><input type="text" name="number"></td>
	</tr>
	
	<tr>
		<td>강의장소</td>
		<td>
			<input type="radio" name="area">서울본원
			<input type="radio" name="area">성남본원
			<input type="radio" name="area">대전본원
			<input type="radio" name="area">부산본원
			<input type="radio" name="area">대구본원
		</td>
	</tr>
	
	<tr>
		<td>강의명</td>
		<td>
			<select name="className">
				<option value="">강의신청</option>
				<option value="100000">초급반</option>
				<option value="200000">중급반</option>
				<option value="300000">고급반</option>
				<option value="400000">심화반</option>
			</select>
		</td>
	</tr>

	<tr>
		<td>수강료</td>
		<td><input type="text" name="price"></td>
	</tr>	
	
	<tr>
		<td colspan="2">
			<input type="button" value="수강신청" onclick="checking()">
			<input type="button" value="다시쓰기" onclick="reseting()">
		</td>
	</tr>

</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
