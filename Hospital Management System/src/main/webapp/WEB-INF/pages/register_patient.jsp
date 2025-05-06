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
  <style>
        /* Remove spinner buttons from number inputs */
        input[type=number]::-webkit-inner-spin-button, 
        input[type=number]::-webkit-outer-spin-button { 
            -webkit-appearance: none; 
            margin: 0; 
        }
        input[type=number] {
            -moz-appearance: textfield;
        }
        
        /* Specific class for inputs that should not have spinners */
        .no-spinners::-webkit-inner-spin-button, 
        .no-spinners::-webkit-outer-spin-button { 
            -webkit-appearance: none; 
            margin: 0; 
        }
        .no-spinners {
            -moz-appearance: textfield;
        }
        
        /* Footer styles from home page */
        .footer-logo-bottom {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin: 1.5rem 0;
            justify-content: center;
        }

        .footer-logo-bottom span {
            color: #ffffff;
            font-weight: 600;
        }

        .footer-divider {
            border: 0;
            height: 1px;
            background-color: #334155;
            margin: 0;
        }
        
        /* Logo link style */
        .logo-link {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            text-decoration: none;
            color: inherit;
        }
    </style>
</head>
<body>
  <div class="container">
    <header class="main-header">
            <div class="logo">
                <a href="home.html" class="logo-link">
                    <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Hospitronix%20X-5lZ8JHDF4Fhm4rT0C7zdpZGYY6JcF6.png" alt="Hospitronix Logo" height="32">
                    <span>Hospitronix HMS</span>
                </a>
            </div>
            <nav class="main-nav">
                <ul>
                    <li><a href="about.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </nav>
        </header>
    <main class="main-content">
         <div class="register-container">
             <div class="register-card">
                <div class="register-header">
                   <h1>Register New Patient</h1>
                   <p>Enter patient details to register to the Hospital Management System.</p>
                </div>
	
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
	               <button type="button" class="btn btn-outline" onclick="window.history.back()">Cancel</button>
	               <button type="submit" class="btn btn-primary">Register Patient</button>
	          </div>
	        </form>
        </div>
      </div>
    </main>
    <footer class="main-footer">
            <div class="footer-content">
                <!-- Empty content to match home page -->
            </div>
            <div class="footer-bottom">
                
                <div class="footer-logo-bottom">
                    <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Hospitronix%20X-5lZ8JHDF4Fhm4rT0C7zdpZGYY6JcF6.png" alt="Hospitronix Logo" height="24">
                    <span>Hospitronix HMS</span>
                </div>
                <p>&copy; 2025 Hospitronix HMS. All rights reserved.</p>
            </div>
        </footer>
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
