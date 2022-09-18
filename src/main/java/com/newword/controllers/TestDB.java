package com.newword.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;

public class TestDB {

	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3306/words?useSSL=false&allowPublicKeyRetrieval=true";
		String dbid = "words";
		String dbpw = "words";
		String sql = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		RequestDispatcher rd = null;
		try {
			System.out.println("O");
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, dbid, dbpw);
			System.out.print("dd");
			sql = "select * from words where word = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "감사");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				
				//단어
				
				System.out.print(rs.getString(2));

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
	}

}
