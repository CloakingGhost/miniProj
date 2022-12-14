package com.newword.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class SelectWord
 */
@WebServlet("/newWord/select.do")
public class SelectWord extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectWord() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		actionDo(request, response);
	}

	public void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		String str = "";
		
		
		int wordAmount = 0; // 단어 총량
		int wordId = 0; // 랜덤으로 추출된 wordId
//		HashMap<String,String> result = new HashMap<>();
		


//		HttpSession session = request.getSession();
		// connect db
		String url = "jdbc:mysql://localhost:3306/project_db?useSSL=false&allowPublicKeyRetrieval=true";
		String dbid = "scott";
		String dbpw = "tiger";
		String sql = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, dbid, dbpw);
			System.out.println("연결성공");

			sql = "select max(wordId) from newword;";
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				wordAmount = rs.getInt(1);
				wordId = (int) ((Math.random()*Math.random()) * wordAmount) + 1;
				System.out.println("단어 수: " + wordAmount);
			}

			sql = "select * from newword where wordId = ?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, wordId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				System.out.println("뽑은 번호: " + wordId);
				// 단어
				System.out.println("뽑은 단어: " + rs.getString(2));
				// 단어뜻
				System.out.println("뽑은 단어의 뜻: " + rs.getString(3));
				str += "{\"";
				str += rs.getString(2);
				str += "\":\"";
				str += rs.getString(3);
				str += "\"}";
				System.out.println(str);

			}
			dbClose(conn, pstmt, rs);

		} catch (Exception e) {
			System.out.print("연결실패");
			e.printStackTrace();

		}
		
		out.print(str);

	}

//	void goMainPage(HttpServletRequest request, HttpServletResponse response) {
//		RequestDispatcher rd = request.getRequestDispatcher("/newWord/mainPage.jsp");
//		try {
//			rd.forward(request, response);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//
//	void goOtherPage(HttpServletRequest request, HttpServletResponse response) {
//		RequestDispatcher rd = request.getRequestDispatcher("/newWord/otherPage.jsp");
//		try {
//			rd.forward(request, response);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}

	void dbClose(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			conn.close();
			pstmt.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
