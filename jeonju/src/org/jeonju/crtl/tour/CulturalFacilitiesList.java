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

import org.jeonju.dao.tour.CulturalFacilitiesDAO;
import org.jeonju.dao.tour.FestivalDAO;
import org.jeonju.dto.tour.CulturalFacilities;
import org.jeonju.dto.tour.Festival;

/**
 * Servlet implementation class CulturalFacilities
 */
@WebServlet("/culturalfacilities_list")
public class CulturalFacilitiesList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CulturalFacilitiesList() {
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
		
		List<CulturalFacilities> culturalFacilitiesList = new ArrayList<CulturalFacilities>();
		
		CulturalFacilitiesDAO cd = new CulturalFacilitiesDAO();
		
		culturalFacilitiesList = cd.getCulturalFacilitiesList();
		
		request.setAttribute("culturalFacilitiesList", culturalFacilitiesList);
		
		RequestDispatcher view = request.getRequestDispatcher("/tour/culturalFacilities.jsp");
		view.forward(request, response);
	}

}
