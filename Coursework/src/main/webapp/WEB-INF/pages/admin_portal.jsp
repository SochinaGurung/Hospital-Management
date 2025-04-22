<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String currentPage = request.getRequestURI();
%><
!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Portal - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/admin-portal-styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Session check script (disabled for development) -->
    <script>
        // Session check is disabled for development
        // In production, this would verify the user is logged in
        function checkSession() {
            // Authentication disabled for development
            console.log("Authentication check bypassed for development");
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
                
                
                    <li><a href="admin-portal.jsp" class="active">Dashboard</a></li>
                    <li><a href="#doctors-management">Doctors</a></li>
                    <li><a href="#patients-management">Patients</a></li>
                    <li><a href="#departments">Departments</a></li>
                    <li><a href="#reports">Reports</a></li>
                </ul>
            </nav>
            <div class="user-menu">
                <div class="user-info">
                    <span>Admin</span>
                    <img src="user_icon.jpg" alt="Admin Avatar" class="avatar">
                </div>
                <div class="dropdown-menu">
                    <a href="#" id="logoutBtn"><i class="fas fa-sign-out-alt"></i> Logout</a>
                </div>
            </div>
        </header>

        <div class="admin-layout">
            <!-- Main Content -->
            <main class="admin-content">
                <div class="page-title">
                    <h1>Hospital Administration Dashboard</h1>
                    <p class="date">Today: <span id="current-date">April 16, 2025</span></p>
                </div>

                <!-- Stats Overview -->
                <section class="stats-overview">
                    <div class="stats-grid">
                        <div class="stat-card">
                            <div class="stat-icon">
                                <i class="fas fa-user-md"></i>
                            </div>
                            <div class="stat-content">
                                <h3>Total Doctors</h3>
                                <p class="stat-value">48</p>
                                <p class="stat-change positive">+3 this month</p>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon">
                                <i class="fas fa-user-injured"></i>
                            </div>
                            <div class="stat-content">
                                <h3>Total Patients</h3>
                                <p class="stat-value">1,254</p>
                                <p class="stat-change positive">+28 this week</p>
                            </div>
                        </div>
                        <div class="stat-card">
                            <div class="stat-icon">
                                <i class="fas fa-calendar-check"></i>
                            </div>
                            <div class="stat-content">
                                <h3>Today's Appointments</h3>
                                <p class="stat-value">86</p>
                                <p class="stat-change neutral">Same as yesterday</p>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Main Sections -->
                <div class="admin-sections">
                    <!-- Quick Actions -->
                    <section class="admin-section" id="quick-actions">
                        <div class="section-header">
                            <h2>Quick Actions</h2>
                        </div>
                        <div class="quick-actions-grid">
                            <a href="#" class="quick-action-card full-width">
                                <div class="quick-action-icon">
                                    <i class="fas fa-user-md"></i>
                                </div>
                                <div class="quick-action-text">
                                    <h3>Add Doctor</h3>
                                    <p>Register a new doctor in the system</p>
                                </div>
                            </a>
                            <li><a href="${pageContext.request.contextPath}/registerdoctor" class="quick-action-card full-width<%= currentPage.endsWith("register_doctor.jsp") ? "active" : "" %>"></a></li>
                            <!-- <a href="#" class="> -->
                                <div class="quick-action-icon">
                                    <i class="fas fa-user-plus"></i>
                                </div>
                                <div class="quick-action-text">
                                    <h3>Register Patient</h3>
                                    <p>Add a new patient to the system</p>
                                </div>
                            </a>
                            <a href="#" class="quick-action-card full-width">
                                <div class="quick-action-icon">
                                    <i class="fas fa-calendar-plus"></i>
                                </div>
                                <div class="quick-action-text">
                                    <h3>Schedule</h3>
                                    <p>Create a new appointment</p>
                                </div>
                            </a>
                            <a href="#" class="quick-action-card">
                                <div class="quick-action-icon">
                                    <i class="fas fa-chart-line"></i>
                                </div>
                                <div class="quick-action-text">
                                    <h3>Reports</h3>
                                    <p>Generate hospital performance reports</p>
                                </div>
                            </a>
                        </div>
                    </section>

                    <!-- Doctors Management Section -->
                    <section class="admin-section" id="doctors-management">
                        <div class="section-header">
                            <h2>Doctors Management</h2>
                            <div class="section-actions">
                                <button class="btn btn-outline btn-sm">View All</button>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="data-table">
                                <thead>
                                    <tr>
                                        <th>Doctor Name</th>
                                        <th>Specialty</th>
                                        <th>Department</th>
                                        <th>No. of Appointments</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="user-info-cell">
                                                <img src="doctor-01_generated.jpg" alt="Doctor Avatar">
                                                <div>
                                                    <p class="user-name">Dr. Sarah Johnson</p>
                                                    <p class="user-id">ID: DOC-10042</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Cardiology</td>
                                        <td>Cardiac Care</td>
                                        <td><div class="appointment-count">18</div></td>
                                        <td>
                                            <div class="action-buttons">
                                                <button class="action-btn" title="View Profile">
                                                    <i class="fas fa-eye"></i>
                                                </button>
                                                <button class="action-btn" title="Edit">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                                <button class="action-btn" title="Schedule">
                                                    <i class="fas fa-calendar-alt"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="user-info-cell">
                                                <img src="doctor-01_generated.jpg" alt="Doctor Avatar">
                                                <div>
                                                    <p class="user-name">Dr. Michael Chen</p>
                                                    <p class="user-id">ID: DOC-10043</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Neurology</td>
                                        <td>Neuroscience</td>
                                        <td><div class="appointment-count">14</div></td>
                                        <td>
                                            <div class="action-buttons">
                                                <button class="action-btn" title="View Profile">
                                                    <i class="fas fa-eye"></i>
                                                </button>
                                                <button class="action-btn" title="Edit">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                                <button class="action-btn" title="Schedule">
                                                    <i class="fas fa-calendar-alt"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="user-info-cell">
                                                <img src="doctor-01_generated.jpg" alt="Doctor Avatar">
                                                <div>
                                                    <p class="user-name">Dr. Emily Rodriguez</p>
                                                    <p class="user-id">ID: DOC-10044</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Pediatrics</td>
                                        <td>Children's Health</td>
                                        <td><div class="appointment-count">11</div></td>
                                        <td>
                                            <div class="action-buttons">
                                                <button class="action-btn" title="View Profile">
                                                    <i class="fas fa-eye"></i>
                                                </button>
                                                <button class="action-btn" title="Edit">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                                <button class="action-btn" title="Schedule">
                                                    <i class="fas fa-calendar-alt"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </section>

                    <!-- Patients Management Section -->
                    <section class="admin-section" id="patients-management">
                        <div class="section-header">
                            <h2>Patients Management</h2>
                            <div class="section-actions">
                                <button class="btn btn-outline btn-sm">View All</button>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="data-table">
                                <thead>
                                    <tr>
                                        <th>Patient Name</th>
                                        <th>Admission Date</th>
                                        <th>Department</th>
                                        <th>Status</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="user-info-cell">
                                                <img src="user_icon.jpg" alt="Patient Avatar">
                                                <div>
                                                    <p class="user-name">John Smith</p>
                                                    <p class="user-id">ID: PAT-10045</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Apr 15, 2025</td>
                                        <td>Cardiology</td>
                                        <td><span class="status-badge status-active">Admitted</span></td>
                                        <td>
                                            <div class="action-buttons">
                                                <button class="action-btn" title="View Profile">
                                                    <i class="fas fa-eye"></i>
                                                </button>
                                                <button class="action-btn" title="Edit">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                                <button class="action-btn" title="Medical Records">
                                                    <i class="fas fa-file-medical"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="user-info-cell">
                                                <img src="user_icon.jpg" alt="Patient Avatar">
                                                <div>
                                                    <p class="user-name">Emily Johnson</p>
                                                    <p class="user-id">ID: PAT-10042</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Apr 10, 2025</td>
                                        <td>Neurology</td>
                                        <td><span class="status-badge status-active">Admitted</span></td>
                                        <td>
                                            <div class="action-buttons">
                                                <button class="action-btn" title="View Profile">
                                                    <i class="fas fa-eye"></i>
                                                </button>
                                                <button class="action-btn" title="Edit">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                                <button class="action-btn" title="Medical Records">
                                                    <i class="fas fa-file-medical"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="user-info-cell">
                                                <img src="user_icon.jpg" alt="Patient Avatar">
                                                <div>
                                                    <p class="user-name">Michael Brown</p>
                                                    <p class="user-id">ID: PAT-10043</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Apr 12, 2025</td>
                                        <td>Pulmonology</td>
                                        <td><span class="status-badge status-discharge">Discharge Ready</span></td>
                                        <td>
                                            <div class="action-buttons">
                                                <button class="action-btn" title="View Profile">
                                                    <i class="fas fa-eye"></i>
                                                </button>
                                                <button class="action-btn" title="Edit">
                                                    <i class="fas fa-edit"></i>
                                                </button>
                                                <button class="action-btn" title="Medical Records">
                                                    <i class="fas fa-file-medical"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </section>

                    <!-- Appointments Overview -->
                    <section class="admin-section" id="appointments">
                        <div class="section-header">
                            <h2>Today's Appointments</h2>
                            <div class="section-actions">
                                <button class="btn btn-outline btn-sm">View All</button>
                                <button class="btn btn-primary btn-sm">Schedule New</button>
                            </div>
                        </div>
                        <div class="appointments-overview">
                            <div class="appointments-stats">
                                <div class="appointment-stat-card">
                                    <div class="stat-value">86</div>
                                    <div class="stat-label">Total</div>
                                </div>
                                <div class="appointment-stat-card">
                                    <div class="stat-value">42</div>
                                    <div class="stat-label">Completed</div>
                                </div>
                                <div class="appointment-stat-card">
                                    <div class="stat-value">38</div>
                                    <div class="stat-label">Pending</div>
                                </div>
                                <div class="appointment-stat-card">
                                    <div class="stat-value">6</div>
                                    <div class="stat-label">Cancelled</div>
                                </div>
                            </div>
                            <div class="appointments-by-department">
                                <h3>Appointments by Department</h3>
                                <div class="department-bars">
                                    <div class="department-bar">
                                        <div class="department-name">Cardiology</div>
                                        <div class="bar-container">
                                            <div class="bar" style="width: 75%;">18</div>
                                        </div>
                                    </div>
                                    <div class="department-bar">
                                        <div class="department-name">Neurology</div>
                                        <div class="bar-container">
                                            <div class="bar" style="width: 60%;">14</div>
                                        </div>
                                    </div>
                                    <div class="department-bar">
                                        <div class="department-name">Orthopedics</div>
                                        <div class="bar-container">
                                            <div class="bar" style="width: 50%;">12</div>
                                        </div>
                                    </div>
                                    <div class="department-bar">
                                        <div class="department-name">Pediatrics</div>
                                        <div class="bar-container">
                                            <div class="bar" style="width: 45%;">11</div>
                                        </div>
                                    </div>
                                    <div class="department-bar">
                                        <div class="department-name">Dermatology</div>
                                        <div class="bar-container">
                                            <div class="bar" style="width: 40%;">10</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </main>
        </div>

        <!-- Footer -->
        <footer class="home-footer">
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
            // Set current date
            const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
            const today = new Date();
            document.getElementById('current-date').textContent = today.toLocaleDateString('en-US', options);
            
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
            
            // Logout functionality
            document.getElementById('logoutBtn').addEventListener('click', function() {
                // Clear session
                sessionStorage.removeItem('isLoggedIn');
                // Redirect to login page
                window.location.href = 'home.html';
            });
        });
    </script>
</body>
</html>