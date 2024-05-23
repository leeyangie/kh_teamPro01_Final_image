package org.jeonju.crtl.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.QnaDAO;

/**
 * Servlet implementation class QnaDelete
 */
@WebServlet("/qna_delete")
public class QnaDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaDelete() {
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
		Integer parno = null;
		if(request.getParameter("parno") != null) parno = Integer.parseInt(request.getParameter("parno"));
		Integer no = null;
		if(request.getParameter("no") != null) no = Integer.parseInt(request.getParameter("no"));
		
		QnaDAO qd = new QnaDAO();
		cnt = qd.deleteQna(no,parno);
		
		if(cnt > 0) {
			response.sendRedirect("/jeonju/qna_list");
		}
	}

}
