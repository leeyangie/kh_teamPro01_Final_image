package org.jeonju.crtl.guide;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeonju.dao.GuideDAO;
import org.jeonju.dto.guide.TBought;
import org.jeonju.dto.guide.Tourism;

/**
 * Servlet implementation class ReservationDelete
 */
@WebServlet("/reservation_delete")
public class ReservationDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationDelete() {
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
		
		HttpSession session = request.getSession();
		int u_no = (Integer) session.getAttribute("sno");
		int cnt = 0;
		
		
		GuideDAO gd = new GuideDAO();
		
		TBought tBought = gd.getTBoughtOne(u_no);
		Tourism tourism_no = gd.getTourismOne(tBought.getT_no());
		
		int no = tourism_no.getNo();
		int head_count = tBought.getHeadcount();
		
		cnt = gd.deleteTbought(u_no , no ,head_count);
		
		if(cnt > 0) {
			response.sendRedirect("/jeonju/mypage");
		}
	}

}
