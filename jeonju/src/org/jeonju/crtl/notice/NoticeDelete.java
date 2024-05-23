package org.jeonju.crtl.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.NoticeDAO;
import org.jeonju.dto.Notice;

/**
 * Servlet implementation class NoticeDelete
 */
@WebServlet("/notice_delete")
public class NoticeDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeDelete() {
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
		int cnt = 0;
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeDAO nd = new NoticeDAO();
		cnt = nd.deleteNoticeOne(no);
		
		if(cnt > 0) {
			response.sendRedirect("/jeonju/notice_list");
		}
	}

}
