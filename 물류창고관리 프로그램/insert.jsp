<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2><b>입출고 등록</b></h2>
<form  method="POST" name="frm" action="action.jsp">
<table border=1>
	<tr>
		<td>입출고번호</td>
		<td><input type="text" name="t_no">예)20210001</td>
	</tr>

	<tr>
		<td>제품코드</td>
		<td><input type="text" name="p_code"></td>
	</tr>
	
	<tr>
		<td>입출고구분</td>
		<td>
			<input type="radio" name="t_type">입고
			<input type="radio" name="t_type">출고
		</td>
	</tr>
	
	<tr>
		<td>수량</td>
		<td><input type="text" name="t_cnt"></td>
	</tr>
	
	<tr>
		<td>거래일자</td>
		<td><input type="date" name="t_date"></td>
	</tr>
	
	<tr>
		<td>거래처</td>
		<td>
			<select name="c_name">
				<option value="0">거래처선택</option>
				<option value="10">서울공장</option>
				<option value="20">울산공장</option>
				<option value="30">부산상사</option>
				<option value="40">광주상사</option>
				<option value="50">대전상사</option>
			</select>
		</td>
	</tr>

	<tr>
		<td align="center" colspan="2">
			<input type="button" value="입출고등록" onclick="adding()">
			<input type="button" value="다시쓰기" onclick="reseting()">
		</td>
	</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
