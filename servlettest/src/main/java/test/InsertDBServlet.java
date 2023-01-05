package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberDTO;

/**
 * Servlet implementation class LoginDBServlet
 */

@WebServlet("/insertdb")
public class InsertDBServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 1. 요청 정보 추출(id, pw)
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		MemberDTO dto = new MemberDTO(id, pw, name, email, phone, address);
		
		if(id == "" || pw == "") {
			//응답
			out.println("필요 정보를 모두 입력하세요.");
			out.close();
			return;
		}
		
		System.out.println(dto.toString());
		
		// 2. 로그인 처리 -jdbc
		MemberDAO dao = new MemberDAO();
		int success = dao.insertMember(dto);
//		MemberDTO dto = dao.getMember(id, pw);
		
		// 3. insert 조건
		//    dto id, pw 둘 다 없으면 insert 가능
		//    dto id만 있고 pw 없을 때 - 있는 계정이므로 빠꾸
		//    dto 둘다 있을 때 - 있는 계정이므로 빠꾸
		
		
		String result = "";
//		if(dto.getId() != null) {
//			result = "<h1>이미 존재하는 ID입니다.</h1>";
//		}
//		else {
			result = "<h1>" + success + "계정을 추가합니다.</h1>";
//		}
		
		
		
		out.println(result);
	}
}