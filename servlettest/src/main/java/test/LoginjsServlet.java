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
@WebServlet("/loginjs")
public class LoginjsServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// login(id, pw)
		request.setCharacterEncoding("utf-8"); //post방식인 경우 필요
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String role = request.getParameter("role");
		
		String output = "";
		if(id == null || id.equals("")) {
			id = "손님";
		}
		
		if(role.equals("admin")) {
			output = "<h1>" + id + " 관리자님 환영합니다.</h1>";
		}
		else {
			output = "<h1>" + id + " 회원님 환영합니다.</h1>";
		}
		// select multiple = multiple, input type=checkbox
		
		//String title[] = request.getParameterValues("title");
		
		// id pw
		
		response.setContentType("text/html;charset=utf-8");
		
		
		PrintWriter out = response.getWriter();
		out.println(output);

	}
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		request.setCharacterEncoding("utf-8"); //post방식인 경우 필요
//		doGet(request, response);
//
//	}
}