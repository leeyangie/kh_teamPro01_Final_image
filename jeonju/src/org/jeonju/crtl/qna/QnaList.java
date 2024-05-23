package org.jeonju.crtl.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.QnaDAO;
import org.jeonju.dto.Qna;

/**
 * Servlet implementation class QnaList
 */
@WebServlet("/qna_list")
public class QnaList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaList() {
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
		
		QnaDAO qd = new QnaDAO();
		List<Qna> qnaList = qd.getQnaList();
		
		request.setAttribute("qnaList", qnaList);
		
		RequestDispatcher view = request.getRequestDispatcher("/qna/qnaList.jsp");
		view.forward(request, response);
	}

	

}
