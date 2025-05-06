package com.coursework.controller;

import com.coursework.model.DoctorModel;
import com.coursework.service.DoctorService;
import com.coursework.Util.ValidationUtil;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterDoctor
 */
@WebServlet(urlPatterns = {"/registerDoctor"}, asyncSupported = true)
@MultipartConfig(
  fileSizeThreshold = 2*1024*1024,
  maxFileSize        = 10*1024*1024,
  maxRequestSize     = 50*1024*1024
)
public class DoctorController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final DoctorService svc = new DoctorService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/pages/register_doctor.jsp")
           .forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String err = validateRegistrationForm(req);
        if (err != null) {
            forwardWithError(req, res, err);
            return;
        }

        DoctorModel doctor = extractDoctorModel(req);
        boolean ok = svc.addDoctor(doctor);

        if (ok) {
            req.setAttribute("success", " Doctor have been registered successfully!");
            req.getRequestDispatcher("/WEB-INF/pages/register_doctor.jsp")
               .forward(req, res);
        } else {
            forwardWithError(req, res,
                " Could not register doctor. Check logs and retry.");
        }
    }

    private void forwardWithError(HttpServletRequest req, HttpServletResponse res, String msg)
            throws ServletException, IOException {
        req.setAttribute("error", msg);
        // preserve
        for (String p : new String[]{
            "doctorName", "doctorAge", "doctorGender", "doctorWeight",
            "bloodGroup", "contactNumber", "doctorEmail", "panNumber",
            "specialty", "workingType", "workingHours"
        }) {
            req.setAttribute(p, req.getParameter(p));
        }
        req.getRequestDispatcher("/WEB-INF/pages/register_doctor.jsp")
           .forward(req, res);
    }

    private String validateRegistrationForm(HttpServletRequest r) {
        if (ValidationUtil.isNullOrEmpty(r.getParameter("doctorName")))
            return "Doctor name is required.";
        if (ValidationUtil.isNullOrEmpty(r.getParameter("doctorAge")))
            return "Doctor age is required.";
        if (ValidationUtil.isNullOrEmpty(r.getParameter("doctorGender")))
            return "Doctor gender is required.";
        if (ValidationUtil.isNullOrEmpty(r.getParameter("doctorEmail")))
            return "Doctor email is required.";
        return null;
    }

    private DoctorModel extractDoctorModel(HttpServletRequest r) {
        return new DoctorModel(
        	Integer.parseInt(r.getParameter("doctorId")),
            r.getParameter("doctorName"),
            Integer.parseInt(r.getParameter("doctorAge")),
            r.getParameter("doctorGender"),
            Integer.parseInt(r.getParameter("doctorWeight")),
            r.getParameter("bloodGroup"),
            r.getParameter("contactNumber"),
            r.getParameter("doctorEmail"),
            Integer.parseInt(r.getParameter("panNumber")),
            r.getParameter("specialty"),
            r.getParameter("workingType"),
            Integer.parseInt(r.getParameter("workingHours"))
        );
    }
}
