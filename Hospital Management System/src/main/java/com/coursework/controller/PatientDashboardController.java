package com.coursework.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.coursework.service.DoctorService;
import com.coursework.service.PatientDashboardService;

/**
 * Servlet implementation class patientController
 * @author sochinagurung
 */
@WebServlet (asyncSupported = true, urlPatterns = {"/patient"} )
public class PatientDashboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private PatientDashboardService patientDashboardService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientDashboardController() {
    	this.patientDashboardService = new PatientDashboardService();
        
        // TODO Auto-generated constructor stub
    }
    
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setAttribute("doctorList", patientDashboardService.getAllDoctorsInfo());
		
		request.getRequestDispatcher("/WEB-INF/pages/patient_dashboard.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
