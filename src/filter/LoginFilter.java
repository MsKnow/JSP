package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName="loginFilter",urlPatterns={"/*"})
public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) arg0;
		HttpServletResponse resp = (HttpServletResponse) arg1;
		HttpSession session = req.getSession(true);
		resp.setContentType("text/html;");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		String request_uri = req.getRequestURI();
		String ctxPath = req.getContextPath();
		String uri = request_uri.substring(ctxPath.length());
		if(uri.contains("login.jsp")||uri.contains("loginServlet")){
			arg2.doFilter(arg0, arg1);
		}else{
			if("hehe" != session.getAttribute("user")){
				arg2.doFilter(arg0, arg1);
			}else{
				out.println("δ��¼��3����ȥ");
				resp.setHeader("refresh", "3;url="+ctxPath+"/login.sjp");
				return;
			}
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
