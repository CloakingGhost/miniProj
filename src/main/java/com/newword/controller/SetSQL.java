package com.newword.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetSQL
 */
@WebServlet("/SetSQL")
public class SetSQL extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SetSQL() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getWords(request, response);
	}

	protected void getWords(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String word = request.getParameter("value");
		String mean = request.getParameter("value");
//		for(String w : word) {
//			
//		}
		String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=false&allowPublicKeyRetrieval=true";
		String dbid = "scott";
		String dbpw = "tigher";
		String sql = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
//		ArrayList<Word> wm = new ArrayList<>();
		
		dbConnetion(url, dbid, dbpw);
		try {
			// 단어,뜻 넣기
//			sql = "insert into newword(word,mean) values(?,?)";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1,"asdf");
//			pstmt.setString(2,"asdf");
//			pstmt.executeUpdate();
			// end
			dbClosed(conn,pstmt,rs);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	void dbConnetion(String url, String dbid, String dbpw) {
		 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			java.sql.Connection conn = DriverManager.getConnection(url, dbid, dbpw);
			System.out.println("연결되었습니다.");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	void dbClosed(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
