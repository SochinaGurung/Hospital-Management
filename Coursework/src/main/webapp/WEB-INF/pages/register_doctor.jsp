<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String currentPage = request.getRequestURI();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Doctor - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/register-doctor.css">
    
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
    </style>
</head>
<body class="page-template">
    <div class="container">
        <!-- Header -->
        <header class="main-header">
            <div class="logo">
                <a href="home.html" class="logo-link">
                    <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Hospitronix%20X-5lZ8JHDF4Fhm4rT0C7zdpZGYY6JcF6.png" alt="Hospitronix Logo" height="32">
                    <span>Hospitronix HMS</span>
                </a>
            </div>
            <nav class="main-nav">
                <ul>
                	<li><a href="${pageContext.request.contextPath}/about" class="<%= currentPage.endsWith("about.jsp") ? "active" : "" %>">About</a></li>
                    <li><a href="${pageContext.request.contextPath}/contact" class="<%= currentPage.endsWith("contact.jsp") ? "active" : "" %>">Contact</a></li>
                    
                </ul>
            </nav>
        </header>

        <!-- Main Content -->
        <main class="main-content">
            <div class="register-container">
                <div class="register-card">
                    <div class="register-header">
                        <h1>Register New Doctor</h1>
                        <p>Enter doctor details to register to the Hospital Management System.</p>
                    </div>
                    
                    <form class="register-form" id="doctorRegistrationForm">
                        <div class="form-group">
                            <label for="doctorId">Doctor ID</label>
                            <div class="input-with-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="12" cy="7" r="4"></circle>
                                </svg>
                                <input type="text" id="doctorId" class="form-control" placeholder="Auto-generated" disabled>
                            </div>
                            <small class="form-text">Doctor ID will be automatically generated</small>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="doctorName">Doctor Name <span class="required">*</span></label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="12" cy="7" r="4"></circle>
                                    </svg>
                                    <input type="text" id="doctorName" class="form-control" placeholder="Enter doctor's full name" required>
                                </div>
                                <small class="error-text" id="doctorNameError"></small>
                            </div>
                            <div class="form-group">
                                <label for="age">Age <span class="required">*</span></label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="10"></circle>
                                        <polyline points="12 6 12 12 16 14"></polyline>
                                    </svg>
                                    <input type="number" id="age" class="form-control" placeholder="Enter age" min="0" max="120" step="1" required>
                                </div>
                                <small class="error-text" id="ageError"></small>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="sex">Sex <span class="required">*</span></label>
                                <select id="sex" class="form-control" required>
                                    <option value="" disabled selected>Select gender</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                                <small class="error-text" id="sexError"></small>
                            </div>
                            <div class="form-group">
                                <label for="weight">Weight (kg) <span class="required">*</span></label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="10"></circle>
                                        <line x1="8" y1="12" x2="16" y2="12"></line>
                                    </svg>
                                    <input type="number" id="weight" class="form-control" placeholder="Enter weight in kg" min="0" max="500" required>
                                </div>
                                <small class="error-text" id="weightError"></small>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="bloodGroup">Blood Group <span class="required">*</span></label>
                                <select id="bloodGroup" class="form-control" required>
                                    <option value="" disabled selected>Select blood group</option>
                                    <option value="A+">A+</option>
                                    <option value="A-">A-</option>
                                    <option value="B+">B+</option>
                                    <option value="B-">B-</option>
                                    <option value="AB+">AB+</option>
                                    <option value="AB-">AB-</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                </select>
                                <small class="error-text" id="bloodGroupError"></small>
                            </div>
                            <div class="form-group">
                                <label for="contactNumber">Contact Number <span class="required">*</span></label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path>
                                    </svg>
                                    <input type="tel" id="contactNumber" class="form-control" placeholder="10-digit mobile number" pattern="[0-9]{10}" maxlength="10" required>
                                </div>
                                <small class="form-text">Enter 10-digit mobile number without country code</small>
                                <small class="error-text" id="contactNumberError"></small>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email ID <span class="required">*</span></label>
                            <div class="input-with-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                                    <polyline points="22,6 12,13 2,6"></polyline>
                                </svg>
                                <input type="email" id="email" class="form-control" placeholder="Enter email address" required>
                            </div>
                            <small class="error-text" id="emailError"></small>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="panNumber">PAN Number</label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect>
                                        <line x1="1" y1="10" x2="23" y2="10"></line>
                                    </svg>
                                    <input type="text" id="panNumber" class="form-control" placeholder="Enter PAN number">
                                </div>
                                <small class="form-text">Format: ABCDE1234F</small>
                                <small class="error-text" id="panNumberError"></small>
                            </div>
                            <div class="form-group">
                                <label for="specialty">Specialty <span class="required">*</span></label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z"></path>
                                    </svg>
                                    <input type="text" id="specialty" class="form-control" placeholder="Enter medical specialty" required>
                                </div>
                                <small class="error-text" id="specialtyError"></small>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="workingType">Working Type <span class="required">*</span></label>
                                <select id="workingType" class="form-control" required>
                                    <option value="" disabled selected>Select working type</option>
                                    <option value="Full Time">Full Time</option>
                                    <option value="Part Time">Part Time</option>
                                </select>
                                <small class="error-text" id="workingTypeError"></small>
                            </div>
                            <div class="form-group">
                                <label for="workingHours">Working Hours</label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="10"></circle>
                                        <polyline points="12 6 12 12 16 14"></polyline>
                                    </svg>
                                    <input type="text" id="workingHours" class="form-control" placeholder="e.g., 9:00 AM - 5:00 PM">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="button" class="btn btn-outline" onclick="window.history.back()">Cancel</button>
                            <button type="submit" class="btn btn-primary">Register Doctor</button>
                        </div>
                    </form>
                </div>
            </div>
        </main>

        <!-- Footer -->
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
        document.addEventListener('DOMContentLoaded', function() {
            // Generate a random doctor ID
            const doctorIdField = document.getElementById('doctorId');
            const randomId = 'DR' + Math.floor(100000 + Math.random() * 900000);
            doctorIdField.value = randomId;
            
            // Age field - ensure only whole numbers
            const ageField = document.getElementById('age');
            ageField.addEventListener('input', function() {
                this.value = this.value.replace(/\./g, ''); // Remove decimal points
                if (this.value) {
                    this.value = Math.floor(this.value); // Ensure it's an integer
                }
            });
            
            // Contact number field - ensure only 10 digits
            const contactNumberField = document.getElementById('contactNumber');
            contactNumberField.addEventListener('input', function() {
                this.value = this.value.replace(/\D/g, ''); // Remove non-digits
                if (this.value.length > 10) {
                    this.value = this.value.slice(0, 10); // Limit to 10 digits
                }
            });
            
            // Form validation
            const form = document.getElementById('doctorRegistrationForm');
            
            // Clear error messages
            function clearErrors() {
                const errorElements = document.querySelectorAll('.error-text');
                errorElements.forEach(element => {
                    element.textContent = '';
                });
                
                const inputElements = document.querySelectorAll('.form-control');
                inputElements.forEach(element => {
                    element.classList.remove('error-border');
                });
            }
            
            // Display error message
            function showError(fieldId, message) {
                const errorElement = document.getElementById(fieldId + 'Error');
                if (errorElement) {
                    errorElement.textContent = message;
                }
                
                const inputElement = document.getElementById(fieldId);
                if (inputElement) {
                    inputElement.classList.add('error-border');
                }
            }
            
            form.addEventListener('submit', function(event) {
                event.preventDefault();
                clearErrors();
                
                let isValid = true;
                
                // Validate doctor name
                const doctorName = document.getElementById('doctorName').value.trim();
                if (!doctorName) {
                    showError('doctorName', 'Doctor name is required');
                    isValid = false;
                }
                
                // Validate age
                const age = document.getElementById('age').value.trim();
                if (!age) {
                    showError('age', 'Age is required');
                    isValid = false;
                } else if (age.includes('.')) {
                    showError('age', 'Age must be a whole number');
                    isValid = false;
                }
                
                // Validate sex
                const sex = document.getElementById('sex').value;
                if (!sex) {
                    showError('sex', 'Sex is required');
                    isValid = false;
                }
                
                // Validate weight
                const weight = document.getElementById('weight').value.trim();
                if (!weight) {
                    showError('weight', 'Weight is required');
                    isValid = false;
                }
                
                // Validate blood group
                const bloodGroup = document.getElementById('bloodGroup').value;
                if (!bloodGroup) {
                    showError('bloodGroup', 'Blood group is required');
                    isValid = false;
                }
                
                // Validate contact number
                const contactNumber = document.getElementById('contactNumber').value.trim();
                if (!contactNumber) {
                    showError('contactNumber', 'Contact number is required');
                    isValid = false;
                } else if (contactNumber.length !== 10 || !/^\d+$/.test(contactNumber)) {
                    showError('contactNumber', 'Please enter a valid 10-digit contact number');
                    isValid = false;
                }
                
                // Validate email
                const email = document.getElementById('email').value.trim();
                if (!email) {
                    showError('email', 'Email is required');
                    isValid = false;
                } else {
                    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (!emailPattern.test(email)) {
                        showError('email', 'Please enter a valid email address');
                        isValid = false;
                    }
                }
                
                // Validate PAN number (if provided)
                const panNumber = document.getElementById('panNumber').value.trim();
                if (panNumber && !/^[A-Z0-9]{10}$/.test(panNumber)) {
                    showError('panNumber', 'PAN number must be 10 alphanumeric characters');
                    isValid = false;
                }
                
                // Validate specialty
                const specialty = document.getElementById('specialty').value.trim();
                if (!specialty) {
                    showError('specialty', 'Specialty is required');
                    isValid = false;
                }
                
                // Validate working type
                const workingType = document.getElementById('workingType').value;
                if (!workingType) {
                    showError('workingType', 'Working type is required');
                    isValid = false;
                }
                
                // If all validations pass
                if (isValid) {
                    alert('Doctor registration successful! Doctor ID: ' + doctorIdField.value);
                    // In a real application, you would submit the form data to the server here
                    // form.submit();
                }
            });
        });
    </script>
</body>
</html>