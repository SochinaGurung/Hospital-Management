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
  <title>Register Doctor</title>
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
                        <h1>Register New Doctor</h1>
                        <p>Enter doctor details to register to the Hospital Management System.</p>
                    </div>
      			

		        <% if (errorMsg != null) { %>
		          <div style="color:red; margin-bottom:1rem;"><%= errorMsg %></div>
		        <% } else if (successMsg != null) { %>
		          <div style="color:green; margin-bottom:1rem;"><%= successMsg %></div>
		        <% } %>
		
		        <form id="doctorRegistrationForm"
		              action="${pageContext.request.contextPath}/registerDoctor"
		              method="post"
		              enctype="multipart/form-data">
		
		          <!-- hidden registrar -->
		          <input type="hidden" name="registrarName" value="<%= registrar %>"/>
		
		          <!-- Name & Age -->
		          <div class="form-row">
		            <div class="form-group">
		              <label>Name *</label>
		              <input type="text" name="doctorName" required class="form-control"
		                     placeholder="Enter full name">
		            </div>
		            <div class="form-group">
		              <label>Age *</label>
		              <input type="number" name="doctorAge" required min="0" max="120"
		                     class="form-control" placeholder="Enter age">
		            </div>
		          </div>
		
		          <!-- Gender & Weight -->
		          <div class="form-row">
		            <div class="form-group">
		              <label>Gender *</label>
		              <select name="doctorGender" required class="form-control">
		                <option value="" disabled selected>Select gender</option>
		                <option>Male</option>
		                <option>Female</option>
		                <option>Other</option>
		              </select>
		            </div>
		            <div class="form-group">
		              <label>Weight (kg) *</label>
		              <input type="number" name="doctorWeight" required min="0" max="500"
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
		            <input type="email" name="doctorEmail" required
		                   class="form-control" placeholder="Enter email">
		          </div>
		
		          <!-- PAN Number -->
		          <div class="form-group">
		            <label>PAN Number *</label>
		            <input type="text" name="panNumber" required class="form-control"
		                   placeholder="Enter PAN number">
		          </div>
		
		          <!-- Specialty & Working Type -->
		          <div class="form-row">
		            <div class="form-group">
		              <label>Specialty *</label>
		              <input type="text" name="specialty" required
		                     class="form-control" placeholder="Enter specialty">
		            </div>
		            <div class="form-group">
		              <label>Working Type *</label>
		              <select name="workingType" required class="form-control">
		                <option value="" disabled selected>Select working type</option>
		                <option>Full-time</option>
		                <option>Part-time</option>
		              </select>
		            </div>
		          </div>
		
		          <!-- Working Hours -->
		          <div class="form-group">
		            <label>Working Hours *</label>
		            <input type="number" name="workingHours" required min="0" max="24"
		                   class="form-control" placeholder="Enter working hours">
		          </div>
		
		          <div class="form-actions">
		               <button type="button" class="btn btn-outline" onclick="window.history.back()">Cancel</button>
		               <button type="submit" class="btn btn-primary">Register Doctor</button>
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
      // limit phones to digits
      ['contactNumber']
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
