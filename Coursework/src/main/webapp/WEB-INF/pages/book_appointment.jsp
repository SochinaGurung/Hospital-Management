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
    <title>Book Appointment - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/book-appointment.css">
    
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
            <div class="appointment-container">
                <div class="appointment-card">
                    <div class="appointment-header">
                        <h1>Book Appointment</h1>
                        <p>Schedule an appointment with your doctor</p>
                    </div>
                    
                    <form class="appointment-form" id="appointmentForm">
                        <!-- Appointment Details Section -->
                        <div class="form-section">
                            <h2 class="section-title">Appointment Details</h2>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="appointmentId">Appointment ID</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                            <line x1="16" y1="2" x2="16" y2="6"></line>
                                            <line x1="8" y1="2" x2="8" y2="6"></line>
                                            <line x1="3" y1="10" x2="21" y2="10"></line>
                                        </svg>
                                        <input type="text" id="appointmentId" class="form-control" placeholder="Auto-generated" disabled>
                                    </div>
                                    <small class="form-text">Appointment ID will be automatically generated</small>
                                </div>
                                <div class="form-group">
                                    <label for="bookingDate">Booking Date</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                            <line x1="16" y1="2" x2="16" y2="6"></line>
                                            <line x1="8" y1="2" x2="8" y2="6"></line>
                                            <line x1="3" y1="10" x2="21" y2="10"></line>
                                        </svg>
                                        <input type="text" id="bookingDate" class="form-control" readonly>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="bookingTime">Booking Time</label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="10"></circle>
                                        <polyline points="12 6 12 12 16 14"></polyline>
                                    </svg>
                                    <input type="text" id="bookingTime" class="form-control" readonly>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Patient Information Section -->
                        <div class="form-section">
                            <h2 class="section-title">Patient Information</h2>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="patientId">Patient ID</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                        </svg>
                                        <input type="text" id="patientId" class="form-control" value="PT123456" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="patientName">Patient Name</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                        </svg>
                                        <input type="text" id="patientName" class="form-control" value="John Doe" readonly>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="patientAge">Age</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <circle cx="12" cy="12" r="10"></circle>
                                            <polyline points="12 6 12 12 16 14"></polyline>
                                        </svg>
                                        <input type="text" id="patientAge" class="form-control" value="35" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="patientSex">Sex</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M10 16.5l-4-3 4-3v6z"></path>
                                            <path d="M14 13.5l4 3-4 3v-6z"></path>
                                        </svg>
                                        <input type="text" id="patientSex" class="form-control" value="Male" readonly>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="patientWeight">Weight (kg)</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <circle cx="12" cy="12" r="10"></circle>
                                            <line x1="8" y1="12" x2="16" y2="12"></line>
                                        </svg>
                                        <input type="text" id="patientWeight" class="form-control" value="75" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="bloodGroup">Blood Group</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M12 2v7.5"></path>
                                            <path d="M5 12h14"></path>
                                            <path d="M12 22v-7.5"></path>
                                        </svg>
                                        <input type="text" id="bloodGroup" class="form-control" value="O+" readonly>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="contactNumber">Contact Number</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path>
                                        </svg>
                                        <input type="text" id="contactNumber" class="form-control" value="9876543210" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="emailId">Email ID</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                                            <polyline points="22,6 12,13 2,6"></polyline>
                                        </svg>
                                        <input type="text" id="emailId" class="form-control" value="john.doe@example.com" readonly>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="attendantName">Attendant Name</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                        </svg>
                                        <input type="text" id="attendantName" class="form-control" value="Jane Doe" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="attendantContact">Attendant Contact</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path>
                                        </svg>
                                        <input type="text" id="attendantContact" class="form-control" value="9876543211" readonly>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="patientAddress">Patient Address</label>
                                <textarea id="patientAddress" class="form-control" rows="2" readonly>123 Main Street, Cityville, State, 12345</textarea>
                            </div>
                        </div>
                        
                        <!-- Doctor Information Section -->
                        <div class="form-section">
                            <h2 class="section-title">Doctor Information</h2>
                            
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="doctorId">Doctor ID</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                        </svg>
                                        <input type="text" id="doctorId" class="form-control" value="DR789012" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="doctorName">Doctor Name</label>
                                    <div class="input-with-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                        </svg>
                                        <input type="text" id="doctorName" class="form-control" value="Dr. Sarah Smith" readonly>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="doctorSpecialty">Doctor Specialty</label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z"></path>
                                    </svg>
                                    <input type="text" id="doctorSpecialty" class="form-control" value="Cardiology" readonly>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Issue Section - To be filled by patient -->
                        <div class="form-section">
                            <h2 class="section-title">Appointment Details</h2>
                            
                            <div class="form-group">
                                <label for="issue">Issue <span class="required">*</span></label>
                                <textarea id="issue" class="form-control" rows="4" placeholder="Please describe your medical issue or reason for appointment" required></textarea>
                                <small class="error-text" id="issueError"></small>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="button" class="btn btn-outline" onclick="window.history.back()">Cancel</button>
                            <button type="submit" class="btn btn-primary">Book Appointment</button>
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
            // Generate a random appointment ID
            const appointmentIdField = document.getElementById('appointmentId');
            const randomId = 'APT' + Math.floor(100000 + Math.random() * 900000);
            appointmentIdField.value = randomId;
            
            // Set current date and time
            const now = new Date();
            
            // Format date: DD/MM/YYYY
            const day = String(now.getDate()).padStart(2, '0');
            const month = String(now.getMonth() + 1).padStart(2, '0');
            const year = now.getFullYear();
            const formattedDate = `${day}/${month}/${year}`;
            
            // Format time: HH:MM AM/PM
            let hours = now.getHours();
            const minutes = String(now.getMinutes()).padStart(2, '0');
            const ampm = hours >= 12 ? 'PM' : 'AM';
            hours = hours % 12;
            hours = hours ? hours : 12; // the hour '0' should be '12'
            const formattedTime = `${hours}:${minutes} ${ampm}`;
            
            document.getElementById('bookingDate').value = formattedDate;
            document.getElementById('bookingTime').value = formattedTime;
            
            // Form validation
            const form = document.getElementById('appointmentForm');
            
            form.addEventListener('submit', function(event) {
                event.preventDefault();
                
                // Clear previous error
                const issueError = document.getElementById('issueError');
                issueError.textContent = '';
                
                // Validate issue field
                const issue = document.getElementById('issue').value.trim();
                if (!issue) {
                    issueError.textContent = 'Please describe your medical issue';
                    return false;
                }
                
                // If validation passes
                alert('Appointment booked successfully! Appointment ID: ' + appointmentIdField.value);
                // In a real application, you would submit the form data to the server here
                // form.submit();
            });
        });
    </script>
</body>
</html>