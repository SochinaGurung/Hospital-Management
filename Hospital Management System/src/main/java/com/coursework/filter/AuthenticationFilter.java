package com.coursework.filter;

import java.io.IOException;

import com.coursework.Util.SessionUtil; 

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.coursework.Util.CookieUtil;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@webFilter(asyncSupported=true, urlpatterns= {"/*"})
public class AuthenticationFilter extends HttpFilter implements Filter {
	private static final String LOGIN = "/login";
	private static final String REGISTER_PATIENT = "/register_patient";
	private static final String HOME = "/home";
	private static final String REGISTER_DOCTOR = "/register_doctor";
	
	private static final String ROOT = "/";
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public AuthenticationFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		chain.doFilter(request, response);
		
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse resp=(HttpServletResponse)response;
		
		String uri=req.getRequestURI();
		
		if uri.endsWith(".png") || uri.endsWith(".jpg")|| uri.endsWith(".css")
				||uri.endsWith(HOME)||uri.endsWith(ROOT)||uri.endsWith("patient")){
			chain.doFilter(request,response);
			return;
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
