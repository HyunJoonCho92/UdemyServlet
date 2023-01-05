package test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import dao.ConnectionInform;

@WebServlet("/Connection")
public class ConnectionServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName(ConnectionInform.DRIVER_CLASS);
			
			//성는이 안좋다. 5144(1/1000초). 두번실행하면 중단됨.
//			long start = System.currentTimeMillis();
//			for(int i = 1; i <= 10000; i++) {
//				//1.db 연결
//				Connection con = DriverManager.getConnection
//				(ConnectionInform.JDBC_URL, ConnectionInform.USERNAME, ConnectionInform.PASSWORD);
//				System.out.println(i + "번째 maria DB 연결 성공");
//				con.close();
//			}
//			long end = System.currentTimeMillis();
//			
//			System.out.println((end-start) + "(1/1000초) 소요");
//			//5144 (1/1000초 소요) 두번째는 6000천대에서 중단
			
			
			//성능이 좋다. 200 (1/1000초)
			Context initContext = new InitialContext(); //context.xml 준비
			Context envContext = (Context)initContext.lookup("java:/comp/env"); //자바 연관 설정
			DataSource ds = (DataSource)envContext.lookup("jdbc/mydb");
		
			long start = System.currentTimeMillis();
			for(int i = 1; i <= 10000; i++) {
				//1.db 연결
				Connection con = ds.getConnection(); //pool con 빌려온다.
				System.out.println(i + "번째 maria DB 연결 성공");
				con.close();
			}
			long end = System.currentTimeMillis();
			
			System.out.println((end-start) + "(1/1000초) 소요");
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
