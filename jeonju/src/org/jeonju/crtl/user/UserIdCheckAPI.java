package org.jeonju.crtl.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeonju.dao.UserDAO;
import org.jeonju.dto.User;
import org.json.JSONObject;

/**
 * Servlet implementation class UserIdCheckAPI
 */
@WebServlet("/user_id_check")
public class UserIdCheckAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserIdCheckAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		UserDAO ud = new UserDAO();
		String id = request.getParameter("id");
		User user = ud.getUserOne(id);
		JSONObject json = new JSONObject();
		if(user != null) {
			json.put("result", true);
			PrintWriter out = response.getWriter();
			out.println(json.toString());
		} else {
			json.put("result", false);
			PrintWriter out = response.getWriter();
			out.println(json.toString());
		}
	}

}
