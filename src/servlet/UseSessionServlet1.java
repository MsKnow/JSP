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
			out.println("�������servlet�����ǣ�" + getServletName());
			out.println("<br>���ĻỰID�ǣ�" + session.getId());
			out.println("<br>�뵥��������һ��servlet��");
			out.println("<br><a href="+response.encodeURL("showMyName")+">������1��servlet</a>");
			out.println("</body></htm>");
		
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
