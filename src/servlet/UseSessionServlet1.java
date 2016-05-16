package servlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(name = "useSession1", urlPatterns = { "/sendMyName1" })
public class UseSessionServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("GBK");
		String name = request.getParameter("user");
		
			HttpSession session = request.getSession(true);
			session.setAttribute("myName", name);
			out.println("<htm><body>");
			out.println("您请求的servlet对象是：" + getServletName());
			out.println("<br>您的会话ID是：" + session.getId());
			out.println("<br>请单击请求另一个servlet：");
			out.println("<br><a href="+response.encodeURL("showMyName")+">请求另1个servlet</a>");
			out.println("</body></htm>");
		
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
