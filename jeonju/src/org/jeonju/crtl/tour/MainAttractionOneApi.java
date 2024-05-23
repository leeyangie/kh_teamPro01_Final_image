package org.jeonju.crtl.tour;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.tour.MainAttractionDAO;
import org.jeonju.dto.tour.MainAttraction;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class MainAttractionOneApi
 */
@WebServlet("/mainattractionApi")
public class MainAttractionOneApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainAttractionOneApi() {
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
		
		
		MainAttractionDAO md = new MainAttractionDAO();
		MainAttraction mainAttraction = md.getMainAttractionOne(no);
		
		
		JSONObject json = new JSONObject();
		json.put("no", mainAttraction.getNo());
		json.put("name", mainAttraction.getName());
		json.put("locate", mainAttraction.getLocate());
		json.put("comment", mainAttraction.getComment());
		json.put("img", mainAttraction.getImg());
		json.put("sub_img1", mainAttraction.getSub_img1());
		json.put("sub_img2", mainAttraction.getSub_img2());
		json.put("tel", mainAttraction.getTel());
		json.put("period", mainAttraction.getPeriod());
		json.put("homepage", mainAttraction.getHomepage());
		json.put("sub1", mainAttraction.getSub1());
		json.put("sub2", mainAttraction.getSub2());
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
	}

}
