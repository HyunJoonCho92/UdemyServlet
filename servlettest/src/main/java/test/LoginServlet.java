package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginprocess")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// login(id, pw)
		request.setCharacterEncoding("utf-8"); //post방식인 경우 필요
		String id = request.getParameter("id");
		
		System.out.println(id.equals("servlet"));
		
		String pw = request.getParameter("pw");
		// select multiple = multiple, input type=checkbox
		
		String title[] = request.getParameterValues("title");
		
		// id pw
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<h1>" + id + " 회원님 환영합니다.</h1>");
		out.println("<h1>" + pw + " 암호를 입력하셨습니다.</h1>");
		
		for(String t : title) {
			out.println("<h1>" + t + " 을 선택하셨습니다.</h1>");
		}

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); //post방식인 경우 필요
		doGet(request, response);

	}
}