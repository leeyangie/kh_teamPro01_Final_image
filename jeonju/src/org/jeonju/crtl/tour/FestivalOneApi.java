package org.jeonju.crtl.tour;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.tour.FestivalDAO;
import org.jeonju.dto.tour.Festival;
import org.json.simple.JSONObject;


/**
 * Servlet implementation class FestivalOneApi
 */
@WebServlet("/festivalOneApi")
public class FestivalOneApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalOneApi() {
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
		
		
		FestivalDAO fd = new FestivalDAO();
		Festival festival = fd.getFestivalOne(no);
		
		
		JSONObject json = new JSONObject();
		json.put("no", festival.getNo());
		json.put("name", festival.getName());
		json.put("locate", festival.getLocate());
		json.put("comment", festival.getComment());
		json.put("img", festival.getImg());
		json.put("sub_img1", festival.getSub_img1());
		json.put("sub_img2", festival.getSub_img2());
		json.put("tel", festival.getTel());
		json.put("period", festival.getPeriod());
		json.put("homepage", festival.getHomepage());
		json.put("sub1", festival.getSub1());
		json.put("sub2", festival.getSub2());
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		
	}

}
