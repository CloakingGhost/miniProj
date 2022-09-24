package com.newword.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;

public class SQLtest {

	public static void main(String[] args) {
		int wordAmount = 0;
		int wordId = (int) (Math.random() * wordAmount) + 1;

		String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=false&allowPublicKeyRetrieval=true";
		String dbid = "scott";
		String dbpw = "tiger";
		String sql = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		RequestDispatcher rd = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, dbid, dbpw);
			System.out.print("dd");
		} catch (Exception e) {
			System.out.print("ss");
			e.printStackTrace();

		}
//		try {
//			sql = "select max(wordId) from newword;";
//			pstmt = conn.prepareStatement(sql);
//
//			rs = pstmt.executeQuery();
//			if (rs.next()) {
//				wordAmount = rs.getInt(1);
//				System.out.println(wordAmount);
//			}
//			sql = "select * from newword where wordId = ?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, wordId);
//			rs = pstmt.executeQuery();
//			if (rs.next()) {
//				pstmt.setInt(1, wordAmount);
//				System.out.println(rs.getString(2));
//				System.out.println(rs.getString(3));
//				// 단어
//				// 단어뜻
//
//			}
//		} catch (Exception e) {
//			System.out.print("ss");
//			e.printStackTrace();
//
//		} 
		finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
//		int keyCode;
//		try {
//			while (true) {
//				keyCode = System.in.read();
//				System.out.println("keyCode : " + keyCode);
//				if (keyCode == 113) {// 소문자 q 입력 시 중지
//					break;
//				}
//			}
//			System.out.println("프로그램 종료");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}

}
