package org.jeonju.crtl.guide;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.GuideDAO;
import org.jeonju.dto.guide.Tourism;

/**
 * Servlet implementation class TourList
 */
@WebServlet("/tour_guide")
public class TourGuide extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TourGuide() {
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
		
		List<Tourism> tourismList = new ArrayList<Tourism>();
		
		GuideDAO td = new GuideDAO();
		
		tourismList = td.getTourismList();
		
		request.setAttribute("tourismList", tourismList);
		
		RequestDispatcher view = request.getRequestDispatcher("/guide/tourGuide.jsp");
		view.forward(request, response);
		
	}

}
