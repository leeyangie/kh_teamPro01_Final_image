package org.jeonju.crtl.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeonju.dao.NoticeDAO;

/**
 * Servlet implementation class NoticeInsert
 */
@WebServlet("/notice_insert")
public class NoticeInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String admin = "관리자";
		HttpSession session = request.getSession();
		if(!session.getAttribute("sname").equals(admin)) {
			response.sendRedirect("/jeonju");
			return;
		}
		
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeInsert.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int cnt = 0;
		String title = request.getParameter("title");
		String comment = request.getParameter("comment");
		
		NoticeDAO nd = new NoticeDAO();
		cnt = nd.insertNotice(title, comment);
		
		if(cnt > 0) {
			response.sendRedirect("/jeonju/notice_list");
		}
	}

}
