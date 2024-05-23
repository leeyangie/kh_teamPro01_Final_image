package org.jeonju.crtl.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeonju.dao.UserDAO;
import org.jeonju.dto.User;

/**
 * Servlet implementation class UserEdit
 */
@WebServlet("/user_edit")
public class UserEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserEdit() {
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
		
		int cnt = 0;
		HttpSession session = request.getSession();
		int no = (Integer)session.getAttribute("sno");
		
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		
		
		address1 += "\\"+address2;
		
		User user = new User(0, 
				"x",
				request.getParameter("name"),
				"x", 
				request.getParameter("email"), 
				request.getParameter("phone_num"), 
				address1, 
			    "date");

		UserDAO ud = new UserDAO();
		cnt = ud.updateUser(user,no);
		
		
		if(cnt > 0) {
			session.invalidate();
			response.sendRedirect("/jeonju");
		}
		
		
	}

}
