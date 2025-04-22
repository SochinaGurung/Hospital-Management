<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // grab registrar from session
    String registrar = (String) session.getAttribute("username");
    String errorMsg  = (String) request.getAttribute("error");
    String successMsg= (String) request.getAttribute("success");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register Patient</title>
  <link rel="stylesheet" href="CSS/styles.css">
  <link rel="stylesheet" href="CSS/register-styles.css">
</head>
<body>
  <div class="container">
    <header>…your nav/logo…</header>
    <main>
      <div class="register-card">

        <% if (errorMsg != null) { %>
          <div style="color:red; margin-bottom:1rem;"><%= errorMsg %></div>
        <% } else if (successMsg != null) { %>
          <div style="color:green; margin-bottom:1rem;"><%= successMsg %></div>
        <% } %>

        <form id="patientRegistrationForm"
              action="${pageContext.request.contextPath}/register"
              method="post"
              enctype="multipart/form-data">

          <!-- hidden registrar -->
          <input type="hidden" name="registrarName" value="<%= registrar %>"/>

          <!-- auto‑ID -->
          <div class="form-group">
            <label>Patient ID</label>
            <input type="text" id="patientId" name="patientId" disabled
                   placeholder="Auto-generated" class="form-control">
          </div>

          <!-- Name & Age -->
          <div class="form-row">
            <div class="form-group">
              <label>Name *</label>
              <input type="text" name="patientName" required class="form-control"
                     placeholder="Enter full name">
            </div>
            <div class="form-group">
              <label>Age *</label>
              <input type="number" name="patientAge" required min="0" max="120"
                     class="form-control" placeholder="Enter age">
            </div>
          </div>

          <!-- Sex & Weight -->
          <div class="form-row">
            <div class="form-group">
              <label>Sex *</label>
              <select name="patientSex" required class="form-control">
                <option value="" disabled selected>Select gender</option>
                <option>Male</option>
                <option>Female</option>
                <option>Other</option>
              </select>
            </div>
            <div class="form-group">
              <label>Weight (kg) *</label>
              <input type="number" name="patientWeight" required min="0" max="500"
                     class="form-control" placeholder="Enter weight">
            </div>
          </div>

          <!-- Blood & Contact -->
          <div class="form-row">
            <div class="form-group">
              <label>Blood Group *</label>
              <select name="bloodGroup" required class="form-control">
                <option value="" disabled selected>Select</option>
                <option>A+</option><option>A-</option><option>B+</option>
                <option>B-</option><option>AB+</option><option>AB-</option>
                <option>O+</option><option>O-</option>
              </select>
            </div>
            <div class="form-group">
              <label>Contact # *</label>
              <input type="tel" name="contactNumber" required
                     pattern="[0-9]{10}" maxlength="10"
                     class="form-control"
                     placeholder="10 digits">
            </div>
          </div>

          <!-- Email -->
          <div class="form-group">
            <label>Email *</label>
            <input type="email" name="emailId" required
                   class="form-control" placeholder="Enter email">
          </div>

          <!-- Attendant -->
          <div class="form-row">
            <div class="form-group">
              <label>Attendant Name *</label>
              <input type="text" name="attendantName" required
                     class="form-control" placeholder="Attendant name">
            </div>
            <div class="form-group">
              <label>Attendant Contact *</label>
              <input type="tel" name="attendantContact" required
                     pattern="[0-9]{10}" maxlength="10"
                     class="form-control" placeholder="10 digits">
            </div>
          </div>

          <!-- Address -->
          <div class="form-group">
            <label>Address *</label>
            <textarea name="patientAddress" required class="form-control"
                      rows="3" placeholder="Full address"></textarea>
          </div>

          <!-- Insurance & Allergies -->
          <div class="form-row">
            <div class="form-group">
              <label>Insurance ID</label>
              <input type="text" name="insuranceId" class="form-control"
                     placeholder="If any">
            </div>
            <div class="form-group">
              <label>Allergies / Diet</label>
              <textarea name="allergies" class="form-control"
                        rows="2" placeholder="If any"></textarea>
            </div>
          </div>

          <div class="form-actions">
            <button type="button" onclick="history.back()">Cancel</button>
            <button type="submit">Register</button>
          </div>
        </form>
      </div>
    </main>
    <footer>…your footer…</footer>
  </div>

  <script>
    document.addEventListener('DOMContentLoaded', () => {
      // auto‑ID
      document.getElementById('patientId')
              .value = 'PT' + Math.floor(100000 + Math.random()*900000);

      // limit phones to digits
      ['contactNumber','attendantContact']
        .forEach(id => {
          const e = document.getElementsByName(id)[0];
          e.addEventListener('input', ()=> {
            e.value = e.value.replace(/\D/g,'').slice(0,10);
          });
        });
    });
  </script>
</body>
</html>
