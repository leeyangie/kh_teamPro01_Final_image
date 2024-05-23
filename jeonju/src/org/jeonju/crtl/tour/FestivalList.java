package org.jeonju.crtl.tour;

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
import org.jeonju.dao.tour.FestivalDAO;
import org.jeonju.dto.tour.Festival;

/**
 * Servlet implementation class FestivalList
 */
@WebServlet("/festival_list")
public class FestivalList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalList() {
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
		
		List<Festival> festivalList = new ArrayList<Festival>();
		
		FestivalDAO fd = new FestivalDAO();
		
		festivalList = fd.getFestivalList();
		
		request.setAttribute("festivalList", festivalList);
		
		RequestDispatcher view = request.getRequestDispatcher("/tour/festival.jsp");
		view.forward(request, response);
	}

}
