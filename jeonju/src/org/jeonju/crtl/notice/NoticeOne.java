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
import org.jeonju.dto.Notice;

/**
 * Servlet implementation class NoticeOne
 */
@WebServlet("/notice_one")
public class NoticeOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeOne() {
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
		
		
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeDAO nd = new NoticeDAO();
		Notice notice = nd.getNoticeOne(no, true);
		
		request.setAttribute("notice", notice);
		
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeOne.jsp");
		view.forward(request, response);
		
		
	}

}
