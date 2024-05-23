package org.jeonju.crtl.tour;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.tour.CulturalFacilitiesDAO;
import org.jeonju.dto.tour.CulturalFacilities;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class CulturalFacilities
 */
@WebServlet("/culturalfacilitiesApi")
public class CulturalFacilitiesOneApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CulturalFacilitiesOneApi() {
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
		
		
		CulturalFacilitiesDAO cd = new CulturalFacilitiesDAO();
		CulturalFacilities culturalFacilities = cd.getCulturalFacilitiesOne(no);
		
		
		JSONObject json = new JSONObject();
		json.put("no", culturalFacilities.getNo());
		json.put("name", culturalFacilities.getName());
		json.put("locate", culturalFacilities.getLocate());
		json.put("comment", culturalFacilities.getComment());
		json.put("img", culturalFacilities.getImg());
		json.put("sub_img1", culturalFacilities.getSub_img1());
		json.put("sub_img2", culturalFacilities.getSub_img2());
		json.put("tel", culturalFacilities.getTel());
		json.put("period", culturalFacilities.getPeriod());
		json.put("homepage", culturalFacilities.getHomepage());
		json.put("sub1", culturalFacilities.getSub1());
		json.put("sub2", culturalFacilities.getSub2());
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
	}

}
