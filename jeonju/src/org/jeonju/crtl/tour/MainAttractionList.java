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

import org.jeonju.dao.tour.MainAttractionDAO;
import org.jeonju.dto.tour.MainAttraction;

/**
 * Servlet implementation class MainAttractionList
 */
@WebServlet("/mainattraction_list")
public class MainAttractionList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainAttractionList() {
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
		
		List<MainAttraction> MainattractionList = new ArrayList<MainAttraction>();
		
		MainAttractionDAO md = new MainAttractionDAO();
		
		MainattractionList = md.getMainAttractionList();
		
		request.setAttribute("MainattractionList", MainattractionList);
		
		RequestDispatcher view = request.getRequestDispatcher("/tour/mainAttraction.jsp");
		view.forward(request, response);
	}

}
