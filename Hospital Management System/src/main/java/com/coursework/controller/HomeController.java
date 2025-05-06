package com.coursework.controller;

import com.coursework.Util.ValidationUtil;
import com.coursework.Util.RedirectionalUtil;

import java.io.IOException;

import com.coursework.service.HomeService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 * @author sochinagurung
 */
@WebServlet (asyncSupported = true, urlPatterns = {"/Home","/"} )
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ValidationUtil validationUtil;
	private RedirectionalUtil redirectionalUtil;
	
	@Override
	public void init() throws ServletException {
		this.validationUtil = new ValidationUtil();
		this.redirectionalUtil = new RedirectionalUtil();
	}
	
	
	
	private final HomeService homeService = new HomeService();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/pages/home.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (ValidationUtil.isNullOrEmpty("username") || ValidationUtil.isNullOrEmpty("password")) {
			redirectionalUtil.setMsgAndRedirect(request, response, "error", "Please fill all the fields!",
					RedirectionalUtil.loginUrl);
		} else {
			if (username.equals("admin") && password.equals("admin")) {
				redirectionalUtil.setMsgAndRedirect(request, response, "success", "Successfully Logged In!",
						RedirectionalUtil.homeUrl);
			} else {
				redirectionalUtil.setMsgAndRedirect(request, response, "error", "Error in either username or password!",
						RedirectionalUtil.loginUrl);
			}
		}

	}
		
}
				
	