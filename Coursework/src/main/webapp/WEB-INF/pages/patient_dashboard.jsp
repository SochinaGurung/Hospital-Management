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
    <title>Patient Dashboard - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/patient-dashboard-styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Session check script -->
    <script>
        // Simple session check (in a real app, this would be more secure)
        function checkSession() {
            const isLoggedIn = sessionStorage.getItem('isLoggedIn');
            if (!isLoggedIn) {
                // Redirect to login page if not logged in
                window.location.href = 'login.html?unauthorized=true';
            }
        }
        
        // Run check when page loads
        checkSession();
    </script>
</head>
<body class="page-template">
    <div class="container">
        <!-- Header -->
        <header class="main-header">
            <div class="logo">
                <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Hospitronix%20X-5lZ8JHDF4Fhm4rT0C7zdpZGYY6JcF6.png" alt="Hospitronix Logo" height="32">
                <span>Hospitronix HMS</span>
            </div>
            <nav class="main-nav">
                <ul>
                	<li><a href="${pageContext.request.contextPath}/patient" class="<%= currentPage.endsWith("patient_dashboard.jsp") ? "active" : "" %>">Patient</a></li>
                    <li><a href="#">Appointments</a></li>
                    <li><a href="#">Medical Records</a></li>
                    <li><a href="#">Help</a></li>
                </ul>
            </nav>
            <div class="user-menu">
                <div class="user-info">
                    <span>Patient User</span>
                    <img src="/placeholder.svg?height=32&width=32" alt="User Avatar" class="avatar">
                </div>
                <div class="dropdown-menu">
                    <a href="#"><i class="fas fa-user"></i> View Profile</a>
                    <a href="#"><i class="fas fa-cog"></i> Settings</a>
                    <a href="#" id="logoutBtn"><i class="fas fa-sign-out-alt"></i> Logout</a>
                </div>
            </div>
        </header>

        <!-- Main Content -->
        <main class="main-content">
            <div class="dashboard-container">
                <!-- Welcome Section -->
                <section class="welcome-section">
                    <div class="welcome-content">
                        <h1>Welcome, Patient User</h1>
                        <p>Patient ID: PT123456 | Last Login: April 14, 2025, 10:30 AM</p>
                    </div>
                    <div class="quick-actions">
                        <button class="btn btn-primary"><i class="fas fa-calendar-plus"></i> New Appointment</button>
                        <button class="btn btn-outline"><i class="fas fa-phone"></i> Contact Support</button>
                    </div>
                </section>

                <!-- Main Features Section -->
                <section class="features-section">
                    <div class="feature-column">
                        <!-- Appointments Section -->
                        <div class="feature-card">
                            <div class="feature-header">
                                <h2><i class="fas fa-calendar-alt"></i> My Appointments</h2>
                                <div class="feature-actions">
                                    <button class="btn btn-sm btn-outline">View All</button>
                                    <button class="btn btn-sm btn-primary">Book New</button>
                                </div>
                            </div>
                            
                            <div class="tabs">
                                <button class="tab-btn active" data-tab="upcoming">Upcoming</button>
                                <button class="tab-btn" data-tab="past">Past</button>
                                <button class="tab-btn" data-tab="cancelled">Cancelled</button>
                            </div>
                            
                            <div class="tab-content active" id="upcoming">
                                <div class="appointment-card">
                                    <div class="appointment-date">
                                        <span class="day">18</span>
                                        <span class="month">APR</span>
                                    </div>
                                    <div class="appointment-details">
                                        <h4>Dr. Sarah Johnson</h4>
                                        <p>Cardiology | 10:30 AM</p>
                                        <p class="appointment-location"><i class="fas fa-map-marker-alt"></i> East Wing, Room 305</p>
                                    </div>
                                    <div class="appointment-actions">
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-edit"></i> Reschedule</button>
                                        <button class="btn btn-sm btn-danger"><i class="fas fa-times"></i> Cancel</button>
                                    </div>
                                </div>
                                
                                <div class="appointment-card">
                                    <div class="appointment-date">
                                        <span class="day">25</span>
                                        <span class="month">APR</span>
                                    </div>
                                    <div class="appointment-details">
                                        <h4>Dr. Michael Chen</h4>
                                        <p>Neurology | 2:15 PM</p>
                                        <p class="appointment-location"><i class="fas fa-map-marker-alt"></i> North Wing, Room 210</p>
                                    </div>
                                    <div class="appointment-actions">
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-edit"></i> Reschedule</button>
                                        <button class="btn btn-sm btn-danger"><i class="fas fa-times"></i> Cancel</button>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="tab-content" id="past">
                                <div class="appointment-card">
                                    <div class="appointment-date">
                                        <span class="day">05</span>
                                        <span class="month">APR</span>
                                    </div>
                                    <div class="appointment-details">
                                        <h4>Dr. Emily Rodriguez</h4>
                                        <p>General Medicine | 9:00 AM</p>
                                        <p class="appointment-location"><i class="fas fa-map-marker-alt"></i> Main Building, Room 102</p>
                                        <span class="appointment-status completed">Completed</span>
                                    </div>
                                    <div class="appointment-actions">
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-file-medical"></i> View Report</button>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="tab-content" id="cancelled">
                                <div class="appointment-card">
                                    <div class="appointment-date">
                                        <span class="day">10</span>
                                        <span class="month">APR</span>
                                    </div>
                                    <div class="appointment-details">
                                        <h4>Dr. Robert Williams</h4>
                                        <p>Orthopedics | 11:45 AM</p>
                                        <p class="appointment-location"><i class="fas fa-map-marker-alt"></i> West Wing, Room 405</p>
                                        <span class="appointment-status cancelled">Cancelled</span>
                                    </div>
                                    <div class="appointment-actions">
                                        <button class="btn btn-sm btn-primary"><i class="fas fa-redo"></i> Rebook</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Medical History Section -->
                        <div class="feature-card">
                            <div class="feature-header">
                                <h2><i class="fas fa-file-medical-alt"></i> Medical History</h2>
                                <div class="feature-actions">
                                    <button class="btn btn-sm btn-outline">View All</button>
                                </div>
                            </div>
                            
                            <div class="medical-history-list">
                                <div class="medical-record">
                                    <div class="record-icon">
                                        <i class="fas fa-heartbeat"></i>
                                    </div>
                                    <div class="record-details">
                                        <h4>Annual Physical Examination</h4>
                                        <p>Dr. Emily Rodriguez | April 5, 2025</p>
                                        <p class="record-summary">General health assessment, blood work, and vitals check.</p>
                                    </div>
                                    <div class="record-actions">
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-eye"></i> View</button>
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-download"></i> Download</button>
                                    </div>
                                </div>
                                
                                <div class="medical-record">
                                    <div class="record-icon">
                                        <i class="fas fa-x-ray"></i>
                                    </div>
                                    <div class="record-details">
                                        <h4>X-Ray Results</h4>
                                        <p>Dr. Robert Williams | March 15, 2025</p>
                                        <p class="record-summary">Right ankle X-ray following sports injury.</p>
                                    </div>
                                    <div class="record-actions">
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-eye"></i> View</button>
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-download"></i> Download</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="feature-column">
                        <!-- Find Doctors Section -->
                        <div class="feature-card">
                            <div class="feature-header">
                                <h2><i class="fas fa-user-md"></i> Find Doctors</h2>
                                <div class="feature-actions">
                                    <button class="btn btn-sm btn-outline">View All</button>
                                </div>
                            </div>
                            
                            <div class="search-doctors">
                                <div class="search-form">
                                    <div class="form-group">
                                        <label for="specialty">Specialty</label>
                                        <select id="specialty" class="form-control">
                                            <option value="">All Specialties</option>
                                            <option value="cardiology">Cardiology</option>
                                            <option value="neurology">Neurology</option>
                                            <option value="orthopedics">Orthopedics</option>
                                            <option value="pediatrics">Pediatrics</option>
                                            <option value="dermatology">Dermatology</option>
                                        </select>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="date">Date</label>
                                        <input type="date" id="date" class="form-control" min="2025-04-15">
                                    </div>
                                    
                                    <button class="btn btn-primary"><i class="fas fa-search"></i> Find Doctors</button>
                                </div>
                                
                                <div class="doctors-list">
                                    <div class="doctor-card">
                                        <img src="/placeholder.svg?height=80&width=80" alt="Dr. Sarah Johnson" class="doctor-avatar">
                                        <div class="doctor-info">
                                            <h4>Dr. Sarah Johnson</h4>
                                            <p>Cardiology</p>
                                            <div class="doctor-rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star-half-alt"></i>
                                                <span>4.5</span>
                                            </div>
                                            <p class="available-slots"><i class="fas fa-calendar-day"></i> 8 slots available</p>
                                        </div>
                                        <button class="btn btn-outline btn-sm">Book Appointment</button>
                                    </div>
                                    
                                    <div class="doctor-card">
                                        <img src="/placeholder.svg?height=80&width=80" alt="Dr. Michael Chen" class="doctor-avatar">
                                        <div class="doctor-info">
                                            <h4>Dr. Michael Chen</h4>
                                            <p>Neurology</p>
                                            <div class="doctor-rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <span>5.0</span>
                                            </div>
                                            <p class="available-slots"><i class="fas fa-calendar-day"></i> 5 slots available</p>
                                        </div>
                                        <button class="btn btn-outline btn-sm">Book Appointment</button>
                                    </div>
                                    
                                    <div class="doctor-card">
                                        <img src="/placeholder.svg?height=80&width=80" alt="Dr. Lisa Patel" class="doctor-avatar">
                                        <div class="doctor-info">
                                            <h4>Dr. Lisa Patel</h4>
                                            <p>Dermatology</p>
                                            <div class="doctor-rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="far fa-star"></i>
                                                <span>4.0</span>
                                            </div>
                                            <p class="available-slots"><i class="fas fa-calendar-day"></i> 12 slots available</p>
                                        </div>
                                        <button class="btn btn-outline btn-sm">Book Appointment</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Prescriptions Section -->
                        <div class="feature-card">
                            <div class="feature-header">
                                <h2><i class="fas fa-prescription-bottle-alt"></i> My Prescriptions</h2>
                                <div class="feature-actions">
                                    <button class="btn btn-sm btn-outline">View All</button>
                                </div>
                            </div>
                            
                            <div class="prescriptions-list">
                                <div class="prescription-card">
                                    <div class="prescription-icon">
                                        <i class="fas fa-pills"></i>
                                    </div>
                                    <div class="prescription-details">
                                        <h4>Amoxicillin 500mg</h4>
                                        <p>Dr. Emily Rodriguez | April 5, 2025</p>
                                        <p class="prescription-instructions">Take 1 capsule three times daily for 7 days</p>
                                        <div class="prescription-status active">Active</div>
                                    </div>
                                    <div class="prescription-actions">
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-eye"></i> View</button>
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-print"></i> Print</button>
                                    </div>
                                </div>
                                
                                <div class="prescription-card">
                                    <div class="prescription-icon">
                                        <i class="fas fa-tablets"></i>
                                    </div>
                                    <div class="prescription-details">
                                        <h4>Ibuprofen 400mg</h4>
                                        <p>Dr. Robert Williams | March 15, 2025</p>
                                        <p class="prescription-instructions">Take 1 tablet every 6 hours as needed for pain</p>
                                        <div class="prescription-status active">Active</div>
                                    </div>
                                    <div class="prescription-actions">
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-eye"></i> View</button>
                                        <button class="btn btn-sm btn-outline"><i class="fas fa-print"></i> Print</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>

        <!-- Footer -->
        <footer class="main-footer">
            <div class="footer-content">
                <div>
                    <div class="footer-logo">
                        <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Hospitronix%20X-5lZ8JHDF4Fhm4rT0C7zdpZGYY6JcF6.png" alt="Hospitronix Logo" height="24">
                        <span>Hospitronix HMS</span>
                    </div>
                </div>
                <div class="footer-links">
                    <div class="footer-column">
                        <h3>Quick Links</h3>
                        <ul>
                            <li><a href="#">Find Doctors</a></li>
                            <li><a href="#">Book Appointment</a></li>
                            <li><a href="#">Medical Records</a></li>
                        </ul>
                    </div>
                    <div class="footer-column">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Help Center</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">FAQs</a></li>
                        </ul>
                    </div>
                    <div class="footer-column">
                        <h3>Legal</h3>
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms of Service</a></li>
                            <li><a href="#">Cookie Policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2025 Hospitronix HMS. All rights reserved.</p>
            </div>
        </footer>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // User dropdown menu toggle
            const userInfo = document.querySelector('.user-info');
            const dropdownMenu = document.querySelector('.dropdown-menu');
            
            userInfo.addEventListener('click', function() {
                dropdownMenu.classList.toggle('active');
            });
            
            // Close dropdown when clicking outside
            document.addEventListener('click', function(event) {
                if (!event.target.closest('.user-menu')) {
                    dropdownMenu.classList.remove('active');
                }
            });
            
            // Tab switching functionality
            const tabBtns = document.querySelectorAll('.tab-btn');
            const tabContents = document.querySelectorAll('.tab-content');
            
            tabBtns.forEach(btn => {
                btn.addEventListener('click', function() {
                    // Remove active class from all buttons and contents
                    tabBtns.forEach(b => b.classList.remove('active'));
                    tabContents.forEach(c => c.classList.remove('active'));
                    
                    // Add active class to clicked button
                    this.classList.add('active');
                    
                    // Show corresponding content
                    const tabId = this.getAttribute('data-tab');
                    document.getElementById(tabId).classList.add('active');
                });
            });
            
            // Logout functionality
            document.getElementById('logoutBtn').addEventListener('click', function() {
                // Clear session
                sessionStorage.removeItem('isLoggedIn');
                // Redirect to login page
                window.location.href = 'login.html';
            });
        });
    </script>
</body>
</html>