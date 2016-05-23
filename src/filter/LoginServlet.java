package filter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "loginServlet",urlPatterns = {"/loginServlet"})
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = req.getParameter("name");
		String password = req.getParameter("pwd");
		if("filter".equals(username)&&"filter".equals(password)){
			HttpSession session = req.getSession(true);
			session.setAttribute("user", username);
			resp.sendRedirect("loginSuccess.jsp");
		}else{
			resp.sendRedirect("login.jsp");
		}
	}
	
	
}
