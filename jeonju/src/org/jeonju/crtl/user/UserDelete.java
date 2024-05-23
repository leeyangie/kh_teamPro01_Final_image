package org.jeonju.crtl.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeonju.dao.UserDAO;

/**
 * Servlet implementation class UserDelete
 */
@WebServlet("/user_delete")
public class UserDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDelete() {
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
		
		
		
		
		int cnt = 0;
		HttpSession session = request.getSession();
		
		int no = (Integer)session.getAttribute("sno");
		
		
		UserDAO ud = new UserDAO();
		
		cnt = ud.deleteUser(no);
		
		if(cnt > 0) {
			session.invalidate();
			response.sendRedirect("/jeonju");
		}
	}

}
