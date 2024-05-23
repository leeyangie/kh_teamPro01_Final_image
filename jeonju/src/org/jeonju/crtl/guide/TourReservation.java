package org.jeonju.crtl.guide;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeonju.dao.GuideDAO;
import org.jeonju.dto.guide.TBought;
import org.jeonju.dto.guide.Tourism;

/**
 * Servlet implementation class TourInsert
 */
@WebServlet("/tour_reservation")
public class TourReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TourReservation() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 로그오프 시 로그인 화면으로 리다이렉트;
		HttpSession session = request.getSession();

		
		if(session.getAttribute("sid") == null) {
		response.sendRedirect("/jeonju/login"); return; }
		 

		int c_id = Integer.parseInt(request.getParameter("c_id"));
		GuideDAO gd = new GuideDAO();
		// 투어 객체 하나 전달
		List<Tourism> tourismFromCidList = gd.getTourismsFromCid(c_id);
		System.out.println(tourismFromCidList);
		request.setAttribute("tourismFromCidList", tourismFromCidList);

		RequestDispatcher view = request.getRequestDispatcher("/guide/tourReservation.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int cnt = 0;
		System.out.println(request.getParameter("start_time"));
		System.out.println(request.getParameter("headcount"));
		System.out.println(request.getParameter("user_no"));
		System.out.println(request.getParameter("t_no"));
		String start_time = request.getParameter("start_time");
		int headcount = Integer.parseInt(request.getParameter("headcount"));
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		int t_no = Integer.parseInt(request.getParameter("t_no"));

		TBought tbought = new TBought(0, start_time, "", headcount, user_no, t_no);

		System.out.println(tbought);

		GuideDAO td = new GuideDAO();
		cnt = td.insertTbought(tbought);

		if (cnt > 0) {
			response.sendRedirect("/jeonju");
		}
	}

}
