<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="style.css" rel="stylesheet">
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<h1>입출고내역</h1>
	<table border="1">
		<tr>
			<td>입출고번호</td>
			<td>제품코드</td>
			<td>제품명</td>
			<td>입출고구분</td>
			<td>수량</td>
			<td>거래처</td>
			<td>거래일자</td>
		</tr>
		<%
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe",
			"system","1234");
			String sql = "select t_no, io.p_code,p_name, t_type,t_cnt,c_name,t_date" +
			"from tbl_inout_202002 io, tbl_product_202002 pr" + 
			"where t_type = 'o' and io.p_code order by io.p_code";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
		%>
				<tr>
			     <td><%=rs.getString("p_code") %></td>	
			     <td><%=rs.getString("p_name") %></td>	
			     <td><%=rs.getInt("p_size") %></td>	
			     <td align="right"><%=rs.getInt("p_incost") %></td>	
			     <td align="right"><%=rs.getInt("p_outcost") %> </td>
				</tr>
		<%	
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
			
		%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>