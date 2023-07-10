<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2 align= "center"><b>(제품별)출고매출이익통계</b></h2>
<table border=1 align = "center">
	<tr>
		<td>제품코드</td>
		<td>제품명</td>
		<td>출고수량</td>
		<td>출고매출이익</td>
	</tr>
<%
	request.setCharacterEncoding("UTF-8");
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		String sql = "select io.p_code,p_name,io.t_cnt,p_outcost,p_incost "+
				"from tbl_inout_202002 io,  tbl_product pr "+ 
				"where t_type = 'O' and io.p_code = pr.p_code order by io.p_code";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			Integer price = rs.getInt(4);
			price = rs.getInt(3) * (rs.getInt(4)-rs.getInt(5));
%>		
	<tr align= "center">
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td align = "right"><%=rs.getString(3) %></td>
		<td align="right">￦<%=price.toString().substring(0,2) + "," + price.toString().substring(2, 5) %></td>
	</tr>	

<% 
		}
	} catch(Exception e){
		e.printStackTrace();
	}
%>


</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
