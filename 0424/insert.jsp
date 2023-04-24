<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "check.js"></script>
</head>
<link href="style.css" rel="stylesheet">
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<form name = "frm" method = "POST" action="action.jsp">
		<table border="1">
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
			<input type="radio" name="t_type" value= "1" >입고
			<input type="radio" name="t_type" value = "2" >출고
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
		<td><select name="c_no">
		<option value=""> 거래처선택</option>
		<option value="1">서울공장</option>
		<option value="2">울산공장</option>
		<option value="3">부산공장</option>
		<option value="4">광주상사</option>
		<option value="5">대전상사</option>
		</select></td>
		</tr>
		
		<tr>
			<td colspan= "2">
			<input type="button" value="입출고목록" onclick="checking()">
			<input type="button" value= "다시쓰기" onclick = "frm.reset">
		 	</td>
		</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
