package com.coursework.controller;

import com.coursework.model.PatientModel;
import com.coursework.service.RegisterService;
import com.coursework.Util.ValidationUtil;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/register"}, asyncSupported = true)
@MultipartConfig(
  fileSizeThreshold = 2*1024*1024,
  maxFileSize        = 10*1024*1024,
  maxRequestSize     = 50*1024*1024
)
public class registerpatientController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final RegisterService svc = new RegisterService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/pages/register_patient.jsp")
           .forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        // log every incoming param
        System.out.println("▶ Received parameters:");
        for (String p : new String[]{
            "patientName","patientAge","patientSex","patientWeight",
            "bloodGroup","contactNumber","emailId","patientAddress",
            "allergies","insuranceId","attendantName","attendantContact","registrarName"
        }) {
            System.out.printf("   %s = %s%n", p, req.getParameter(p));
        }

        String err = validateRegistrationForm(req);
        if (err != null) {
            forwardWithError(req, res, err);
            return;
        }

        PatientModel pat = extractPatientModel(req);
        boolean ok = svc.addPatient(pat);

        if (ok) {
            req.setAttribute("success", "✅ Patient successfully registered!");
            req.getRequestDispatcher("/WEB-INF/pages/register_patient.jsp")
               .forward(req, res);
        } else {
            forwardWithError(req, res,
                "❌ Could not register patient. Check logs and retry.");
        }
    }

    private void forwardWithError(HttpServletRequest req, HttpServletResponse res, String msg)
            throws ServletException, IOException {
        req.setAttribute("error", msg);
        // preserve
        for (String p : new String[]{
            "patientName","patientAge","patientSex","patientWeight",
            "bloodGroup","contactNumber","emailId","patientAddress",
            "allergies","insuranceId","attendantName","attendantContact"
        }) {
            req.setAttribute(p, req.getParameter(p));
        }
        req.getRequestDispatcher("/WEB-INF/pages/register_patient.jsp")
           .forward(req, res);
    }

    private String validateRegistrationForm(HttpServletRequest r) {
        if (ValidationUtil.isNullOrEmpty(r.getParameter("patientName")))
            return "Patient name is required.";
        if (ValidationUtil.isNullOrEmpty(r.getParameter("patientAge")))
            return "Patient age is required.";
        // …repeat your other checks exactly as before…
        return null;
    }

    private PatientModel extractPatientModel(HttpServletRequest r) {
        return new PatientModel(
            r.getParameter("patientName"),
            Integer.parseInt(r.getParameter("patientAge")),
            r.getParameter("patientSex"),
            Integer.parseInt(r.getParameter("patientWeight")),
            r.getParameter("bloodGroup"),
            r.getParameter("contactNumber"),
            r.getParameter("emailId"),
            r.getParameter("patientAddress"),
            r.getParameter("allergies"),
            Integer.parseInt(r.getParameter("insuranceId")),
            r.getParameter("attendantName"),
            r.getParameter("attendantContact"),
            r.getParameter("registrarName")
        );
    }
}
