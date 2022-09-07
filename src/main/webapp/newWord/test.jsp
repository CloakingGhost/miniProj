<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String word = request.getParameter("word");
	String url = "jdbc:mysql://localhost:3306/newword?useSSL=false&allowPublicKeyRetrieval=true";
	String dbid = "newword";
	String dbpw = "123456";
	String sql = "";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	RequestDispatcher rd = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, dbid, dbpw);
		System.out.print("dd");
		sql = "select * from newword where word = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, word);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			System.out.println(rs.getString(2));
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("word", rs.getString(2));
			// 단어뜻
			//		request.setAttribute("means", rs.getString(3));
			rd = request.getRequestDispatcher("otherPage.jsp");
			rd.forward(request, response);

		}
	} catch (Exception e) {
		System.out.print("ss");
		e.printStackTrace();

	} finally {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	%>
</body>
</html>