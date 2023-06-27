<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<script type="text/javascript" src = "check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h2><b>오디션 등록</b></h2>
	<form method="post" action="action.jsp" name="frm">
	<table border=1>
	<tr>
		<td>참가번호</td>
		<td><input type="text" name="">*참가번호는 (A000) 4자리입니다</td>
	</tr>
	
	<tr>
		<td>참가자명</td>
		<td><input type="text" name=""></td>
	</tr>	
	
	<tr>
		<td>생년월일</td>
		<td><input type="text" name=""></td>
	</tr>
	
	<tr>
		<td>성별</td>
		<td>
			<input type="radio" name="gender" value="M">남성
			<input type="radio" name="gender" value="F">여성
			
		</td>
	</tr>
	
	<tr>
		<td>특기</td>
		<td>
			<select name="talent">
				<option value="0">특기선택</option>
				<option value="1">[1]보컬</option>
				<option value="2">[2]댄스</option>
				<option value="3">[3]랩</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td>소속사</td>
		<td><input type="text" name=""></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="button" value="오디션 등록" onclick="inserCheck()">
			<input type="button" value="다시쓰기" onclick="res()">
		</td>
	</tr>
	</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
