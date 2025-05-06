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
    <title>Doctor Profile - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/admin-portal-styles.css">
    <!-- <link rel="stylesheet" type="text/css" href="CSS/doctor-portal-styles.css"> -->
    <link rel="stylesheet" type="text/css" href="CSS/doctor-profile-styles.css">
    
</head>
<body>
    <!-- Main Header -->
    <header class="main-header">
        <div class="logo">
        	<a href="home.html" class="logo-link">
            	<span>Hospitronix HMS</span>
        </div>
        <nav class="main-nav">
            <ul>
            	<li><a href="${pageContext.request.contextPath}/doctorprofile" class="<%= currentPage.endsWith("doctor_profile.jsp") ? "active" : "" %>">Profile</a></li>
                <li><a href="#">Patients</a></li>
                <li><a href="#">Appointments</a></li>
                <li><a href="#">Medical Records</a></li>
                <li><a href="#">Reports</a></li>
            </ul>
        </nav>
        <div class="user-menu">
            <div class="notification-bell">
                <i class="fas fa-bell"></i>
                <span class="notification-badge">3</span>
            </div>
        
            <div class="user-info">
                <span>Dr. Sarah Johnson</span>
                <img src="/placeholder.svg?height=40&width=40" alt="User Avatar" class="avatar">
            </div>
            <div class="dropdown-menu">
                <a href="doctor-profile.html"><i class="fas fa-user"></i> Profile</a>
                <a href="#"><i class="fas fa-cog"></i> Settings</a>
                <a href="#" id="logoutBtn"><i class="fas fa-sign-out-alt"></i> Logout</a>
            </div>
        </div>
    </header>

    <!-- Doctor Layout -->
    <div class="doctor-layout">
        <!-- Doctor Sidebar -->
        <aside class="doctor-sidebar">
            <div class="doctor-sidebar-header">
                <img src="/placeholder.svg?height=60&width=60" alt="Doctor Avatar" class="doctor-avatar">
                <div class="doctor-info">
                    <h3>Dr. Sarah Johnson</h3>
                    <p>Cardiologist</p>
                </div>
            </div>
        </aside>

        <!-- Doctor Content -->
        <main class="main-content">
            <div class="doctor-header">
                <h1>Doctor Profile</h1>
                <div class="doctor-header-actions">
                    <button class="btn btn-outline"><i class="fas fa-print"></i> Print Profile</button>
                    <button class="btn btn-primary"><i class="fas fa-edit"></i> Edit Profile</button>
                </div>
            </div>

            <!-- Profile Overview -->
            <div class="profile-overview">
                <div class="profile-header">
                    <div class="profile-avatar-container">
                        <img src="/placeholder.svg?height=150&width=150" alt="Doctor Avatar" class="profile-avatar">
                        <button class="change-avatar-btn"><i class="fas fa-camera"></i></button>
                    </div>
                    <div class="profile-info">
                        <h2>Dr. Sarah Johnson</h2>
                        <p class="profile-title">Cardiologist</p>
                        <div class="profile-badges">
                            <span class="profile-badge"><i class="fas fa-certificate"></i> Board Certified</span>
                            <span class="profile-badge"><i class="fas fa-star"></i> Senior Consultant</span>
                            <span class="profile-badge"><i class="fas fa-user-md"></i> 15+ Years Experience</span>
                        </div>
                        <div class="profile-contact">
                            <div class="contact-item">
                                <i class="fas fa-envelope"></i>
                                <span>sarah.johnson@hospitronix.com</span>
                            </div>
                            <div class="contact-item">
                                <i class="fas fa-phone"></i>
                                <span>+1 (555) 123-4567</span>
                            </div>
                            <div class="contact-item">
                                <i class="fas fa-id-badge"></i>
                                <span>ID: DOC-10023</span>
                            </div>
                        </div>
                    </div>
                    <div class="profile-status">
                        <div class="status-indicator active"></div>
                        <span>Active</span>
                    </div>
                </div>
            </div>

            <!-- Profile Tabs -->
            <div class="profile-tabs">
                <div class="profile-tab active" data-tab="personal">Personal Information</div>
                <div class="profile-tab" data-tab="qualifications">Qualifications</div>
                <div class="profile-tab" data-tab="schedule">Schedule</div>
                <div class="profile-tab" data-tab="performance">Performance</div>
                <div class="profile-tab" data-tab="documents">Documents</div>
            </div>

            <!-- Profile Content -->
            <div class="profile-content">
                <!-- Personal Information Tab -->
                <div class="profile-tab-content active" id="personal">
                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-user"></i> Personal Information</h2>
                            <button class="btn btn-sm btn-outline"><i class="fas fa-edit"></i> Edit</button>
                        </div>
                        <div class="profile-details">
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Full Name</label>
                                    <p>Dr. Sarah Elizabeth Johnson</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Date of Birth</label>
                                    <p>June 15, 1980</p>
                                </div>
                            </div>
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Gender</label>
                                    <p>Female</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Blood Group</label>
                                    <p>O+</p>
                                </div>
                            </div>
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Nationality</label>
                                    <p>American</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Languages</label>
                                    <p>English, Spanish</p>
                                </div>
                            </div>
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Address</label>
                                    <p>123 Medical Center Drive, Boston, MA 02115</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Emergency Contact</label>
                                    <p>Robert Johnson (Spouse): +1 (555) 987-6543</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-hospital-user"></i> Department Information</h2>
                            <button class="btn btn-sm btn-outline"><i class="fas fa-edit"></i> Edit</button>
                        </div>
                        <div class="profile-details">
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Department</label>
                                    <p>Cardiology</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Position</label>
                                    <p>Senior Consultant</p>
                                </div>
                            </div>
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Join Date</label>
                                    <p>March 10, 2010</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Employee ID</label>
                                    <p>DOC-10023</p>
                                </div>
                            </div>
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Specialization</label>
                                    <p>Interventional Cardiology, Cardiac Electrophysiology</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Reporting To</label>
                                    <p>Dr. Michael Chen (Head of Cardiology)</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-key"></i> Account Information</h2>
                            <button class="btn btn-sm btn-outline"><i class="fas fa-edit"></i> Edit</button>
                        </div>
                        <div class="profile-details">
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Email</label>
                                    <p>sarah.johnson@hospitronix.com</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Username</label>
                                    <p>dr.sjohnson</p>
                                </div>
                            </div>
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Password</label>
                                    <p>••••••••••••</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Last Password Change</label>
                                    <p>January 15, 2025</p>
                                </div>
                            </div>
                            <div class="profile-detail-row">
                                <div class="profile-detail">
                                    <label>Two-Factor Authentication</label>
                                    <p>Enabled</p>
                                </div>
                                <div class="profile-detail">
                                    <label>Account Status</label>
                                    <p>Active</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Qualifications Tab -->
                <div class="profile-tab-content" id="qualifications">
                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-graduation-cap"></i> Education</h2>
                            <button class="btn btn-sm btn-primary"><i class="fas fa-plus"></i> Add Education</button>
                        </div>
                        <div class="qualification-list">
                            <div class="qualification-item">
                                <div class="qualification-icon">
                                    <i class="fas fa-university"></i>
                                </div>
                                <div class="qualification-details">
                                    <h3>Doctor of Medicine (MD)</h3>
                                    <p>Harvard Medical School</p>
                                    <p class="qualification-date">2000 - 2004</p>
                                    <p class="qualification-description">Graduated with honors. Specialized in Cardiovascular Medicine.</p>
                                </div>
                                <div class="qualification-actions">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                            <div class="qualification-item">
                                <div class="qualification-icon">
                                    <i class="fas fa-university"></i>
                                </div>
                                <div class="qualification-details">
                                    <h3>Bachelor of Science in Biology</h3>
                                    <p>Massachusetts Institute of Technology</p>
                                    <p class="qualification-date">1996 - 2000</p>
                                    <p class="qualification-description">Graduated summa cum laude. Research focus on Cellular Biology.</p>
                                </div>
                                <div class="qualification-actions">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-briefcase"></i> Experience</h2>
                            <button class="btn btn-sm btn-primary"><i class="fas fa-plus"></i> Add Experience</button>
                        </div>
                        <div class="qualification-list">
                            <div class="qualification-item">
                                <div class="qualification-icon">
                                    <i class="fas fa-hospital"></i>
                                </div>
                                <div class="qualification-details">
                                    <h3>Senior Consultant, Cardiology</h3>
                                    <p>Hospitronix Medical Center</p>
                                    <p class="qualification-date">2010 - Present</p>
                                    <p class="qualification-description">Leading the Interventional Cardiology team. Specializing in complex cardiac procedures and patient care management.</p>
                                </div>
                                <div class="qualification-actions">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                            <div class="qualification-item">
                                <div class="qualification-icon">
                                    <i class="fas fa-hospital"></i>
                                </div>
                                <div class="qualification-details">
                                    <h3>Attending Physician, Cardiology</h3>
                                    <p>Boston General Hospital</p>
                                    <p class="qualification-date">2004 - 2010</p>
                                    <p class="qualification-description">Managed cardiac care unit. Performed diagnostic procedures and developed treatment plans for cardiac patients.</p>
                                </div>
                                <div class="qualification-actions">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-certificate"></i> Certifications</h2>
                            <button class="btn btn-sm btn-primary"><i class="fas fa-plus"></i> Add Certification</button>
                        </div>
                        <div class="qualification-list">
                            <div class="qualification-item">
                                <div class="qualification-icon">
                                    <i class="fas fa-award"></i>
                                </div>
                                <div class="qualification-details">
                                    <h3>Board Certification in Cardiovascular Disease</h3>
                                    <p>American Board of Internal Medicine</p>
                                    <p class="qualification-date">2006 - Present</p>
                                    <p class="qualification-description">Certification ID: CVD-78923. Last renewed in 2021.</p>
                                </div>
                                <div class="qualification-actions">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                            <div class="qualification-item">
                                <div class="qualification-icon">
                                    <i class="fas fa-award"></i>
                                </div>
                                <div class="qualification-details">
                                    <h3>Certification in Advanced Cardiac Life Support (ACLS)</h3>
                                    <p>American Heart Association</p>
                                    <p class="qualification-date">2004 - Present</p>
                                    <p class="qualification-description">Certification ID: ACLS-45678. Renewed every 2 years.</p>
                                </div>
                                <div class="qualification-actions">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Schedule Tab -->
                <div class="profile-tab-content" id="schedule">
                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-calendar-alt"></i> Weekly Schedule</h2>
                            <button class="btn btn-sm btn-primary"><i class="fas fa-edit"></i> Edit Schedule</button>
                        </div>
                        <div class="schedule-container">
                            <div class="schedule-days">
                                <div class="schedule-day">
                                    <div class="day-header">Monday</div>
                                    <div class="day-slots">
                                        <div class="time-slot active">
                                            <span class="time">09:00 - 12:00</span>
                                            <span class="slot-type">Outpatient Clinic</span>
                                        </div>
                                        <div class="time-slot active">
                                            <span class="time">13:00 - 15:00</span>
                                            <span class="slot-type">Procedures</span>
                                        </div>
                                        <div class="time-slot">
                                            <span class="time">15:00 - 17:00</span>
                                            <span class="slot-type">Available</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="schedule-day">
                                    <div class="day-header">Tuesday</div>
                                    <div class="day-slots">
                                        <div class="time-slot active">
                                            <span class="time">09:00 - 13:00</span>
                                            <span class="slot-type">Surgery</span>
                                        </div>
                                        <div class="time-slot active">
                                            <span class="time">14:00 - 17:00</span>
                                            <span class="slot-type">Outpatient Clinic</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="schedule-day">
                                    <div class="day-header">Wednesday</div>
                                    <div class="day-slots">
                                        <div class="time-slot active">
                                            <span class="time">09:00 - 11:00</span>
                                            <span class="slot-type">Department Meeting</span>
                                        </div>
                                        <div class="time-slot active">
                                            <span class="time">11:00 - 13:00</span>
                                            <span class="slot-type">Research</span>
                                        </div>
                                        <div class="time-slot active">
                                            <span class="time">14:00 - 17:00</span>
                                            <span class="slot-type">Outpatient Clinic</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="schedule-day">
                                    <div class="day-header">Thursday</div>
                                    <div class="day-slots">
                                        <div class="time-slot active">
                                            <span class="time">09:00 - 12:00</span>
                                            <span class="slot-type">Procedures</span>
                                        </div>
                                        <div class="time-slot active">
                                            <span class="time">13:00 - 15:00</span>
                                            <span class="slot-type">Outpatient Clinic</span>
                                        </div>
                                        <div class="time-slot active">
                                            <span class="time">15:00 - 17:00</span>
                                            <span class="slot-type">Resident Teaching</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="schedule-day">
                                    <div class="day-header">Friday</div>
                                    <div class="day-slots">
                                        <div class="time-slot active">
                                            <span class="time">09:00 - 12:00</span>
                                            <span class="slot-type">Outpatient Clinic</span>
                                        </div>
                                        <div class="time-slot active">
                                            <span class="time">13:00 - 16:00</span>
                                            <span class="slot-type">Research</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="schedule-day weekend">
                                    <div class="day-header">Saturday</div>
                                    <div class="day-slots">
                                        <div class="time-slot">
                                            <span class="time">Off Duty</span>
                                            <span class="slot-type">Weekend</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="schedule-day weekend">
                                    <div class="day-header">Sunday</div>
                                    <div class="day-slots">
                                        <div class="time-slot">
                                            <span class="time">Off Duty</span>
                                            <span class="slot-type">Weekend</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-phone-alt"></i> On-Call Schedule</h2>
                            <div class="month-selector">
                                <button class="btn btn-sm btn-outline"><i class="fas fa-chevron-left"></i></button>
                                <span>April 2025</span>
                                <button class="btn btn-sm btn-outline"><i class="fas fa-chevron-right"></i></button>
                            </div>
                        </div>
                        <div class="on-call-calendar">
                            <div class="calendar-header">
                                <div class="calendar-header-cell">Mon</div>
                                <div class="calendar-header-cell">Tue</div>
                                <div class="calendar-header-cell">Wed</div>
                                <div class="calendar-header-cell">Thu</div>
                                <div class="calendar-header-cell">Fri</div>
                                <div class="calendar-header-cell">Sat</div>
                                <div class="calendar-header-cell">Sun</div>
                            </div>
                            <div class="calendar-grid">
                                <div class="calendar-day disabled">
                                    <div class="calendar-day-number">31</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">1</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">2</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">3</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">4</div>
                                </div>
                                <div class="calendar-day weekend">
                                    <div class="calendar-day-number">5</div>
                                </div>
                                <div class="calendar-day weekend">
                                    <div class="calendar-day-number">6</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">7</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">8</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">9</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">10</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">11</div>
                                </div>
                                <div class="calendar-day weekend">
                                    <div class="calendar-day-number">12</div>
                                </div>
                                <div class="calendar-day weekend">
                                    <div class="calendar-day-number">13</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">14</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">15</div>
                                </div>
                                <div class="calendar-day on-call">
                                    <div class="calendar-day-number">16</div>
                                    <div class="calendar-day-status">On Call</div>
                                </div>
                                <div class="calendar-day on-call">
                                    <div class="calendar-day-number">17</div>
                                    <div class="calendar-day-status">On Call</div>
                                </div>
                                <div class="calendar-day on-call">
                                    <div class="calendar-day-number">18</div>
                                    <div class="calendar-day-status">On Call</div>
                                </div>
                                <div class="calendar-day weekend">
                                    <div class="calendar-day-number">19</div>
                                </div>
                                <div class="calendar-day weekend">
                                    <div class="calendar-day-number">20</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">21</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">22</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">23</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">24</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">25</div>
                                </div>
                                <div class="calendar-day weekend">
                                    <div class="calendar-day-number">26</div>
                                </div>
                                <div class="calendar-day weekend">
                                    <div class="calendar-day-number">27</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">28</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">29</div>
                                </div>
                                <div class="calendar-day">
                                    <div class="calendar-day-number">30</div>
                                </div>
                                <div class="calendar-day disabled">
                                    <div class="calendar-day-number">1</div>
                                </div>
                                <div class="calendar-day disabled">
                                    <div class="calendar-day-number">2</div>
                                </div>
                                <div class="calendar-day disabled weekend">
                                    <div class="calendar-day-number">3</div>
                                </div>
                                <div class="calendar-day disabled weekend">
                                    <div class="calendar-day-number">4</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Performance Tab -->
                <div class="profile-tab-content" id="performance">
                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-chart-line"></i> Performance Metrics</h2>
                            <div class="period-selector">
                                <button class="btn btn-sm btn-outline active">Monthly</button>
                                <button class="btn btn-sm btn-outline">Quarterly</button>
                                <button class="btn btn-sm btn-outline">Yearly</button>
                            </div>
                        </div>
                        <div class="performance-metrics">
                            <div class="metric-card">
                                <div class="metric-header">
                                    <h3>Patient Satisfaction</h3>
                                    <div class="metric-score">4.8/5</div>
                                </div>
                                <div class="metric-progress">
                                    <div class="progress-bar-container">
                                        <div class="progress-bar" style="width: 96%"></div>
                                    </div>
                                </div>
                                <div class="metric-details">
                                    <span>Based on 124 patient reviews</span>
                                    <span class="metric-trend positive"><i class="fas fa-arrow-up"></i> 3% from last month</span>
                                </div>
                            </div>
                            <div class="metric-card">
                                <div class="metric-header">
                                    <h3>Patients Seen</h3>
                                    <div class="metric-score">187</div>
                                </div>
                                <div class="metric-progress">
                                    <div class="progress-bar-container">
                                        <div class="progress-bar" style="width: 85%"></div>
                                    </div>
                                </div>
                                <div class="metric-details">
                                    <span>Monthly average: 175</span>
                                    <span class="metric-trend positive"><i class="fas fa-arrow-up"></i> 7% from last month</span>
                                </div>
                            </div>
                            <div class="metric-card">
                                <div class="metric-header">
                                    <h3>Procedures Performed</h3>
                                    <div class="metric-score">42</div>
                                </div>
                                <div class="metric-progress">
                                    <div class="progress-bar-container">
                                        <div class="progress-bar" style="width: 78%"></div>
                                    </div>
                                </div>
                                <div class="metric-details">
                                    <span>Monthly average: 38</span>
                                    <span class="metric-trend positive"><i class="fas fa-arrow-up"></i> 10% from last month</span>
                                </div>
                            </div>
                            <div class="metric-card">
                                <div class="metric-header">
                                    <h3>Average Wait Time</h3>
                                    <div class="metric-score">12 min</div>
                                </div>
                                <div class="metric-progress">
                                    <div class="progress-bar-container">
                                        <div class="progress-bar" style="width: 88%"></div>
                                    </div>
                                </div>
                                <div class="metric-details">
                                    <span>Target: 15 minutes</span>
                                    <span class="metric-trend positive"><i class="fas fa-arrow-down"></i> 2 min from last month</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-comments"></i> Patient Feedback</h2>
                            <button class="btn btn-sm btn-outline">View All</button>
                        </div>
                        <div class="feedback-list">
                            <div class="feedback-item">
                                <div class="feedback-header">
                                    <div class="feedback-rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <div class="feedback-date">April 12, 2025</div>
                                </div>
                                <div class="feedback-content">
                                    <p>"Dr. Johnson was extremely thorough and took the time to explain my condition in detail. She answered all my questions and made me feel at ease throughout the entire appointment."</p>
                                </div>
                                <div class="feedback-patient">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Patient Avatar" class="feedback-avatar">
                                    <div class="feedback-patient-info">
                                        <h4>John D.</h4>
                                        <p>Cardiac Consultation</p>
                                    </div>
                                </div>
                            </div>
                            <div class="feedback-item">
                                <div class="feedback-header">
                                    <div class="feedback-rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    <div class="feedback-date">April 8, 2025</div>
                                </div>
                                <div class="feedback-content">
                                    <p>"Very professional and knowledgeable. The only reason for 4 stars instead of 5 is the wait time was a bit longer than expected. Otherwise, excellent care."</p>
                                </div>
                                <div class="feedback-patient">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Patient Avatar" class="feedback-avatar">
                                    <div class="feedback-patient-info">
                                        <h4>Maria S.</h4>
                                        <p>Follow-up Appointment</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Documents Tab -->
                <div class="profile-tab-content" id="documents">
                    <div class="doctor-card">
                        <div class="doctor-card-header">
                            <h2 class="doctor-card-title"><i class="fas fa-file-alt"></i> Documents</h2>
                            <button class="btn btn-sm btn-primary"><i class="fas fa-upload"></i> Upload Document</button>
                        </div>
                        <div class="document-filters">
                            <div class="document-search">
                                <i class="fas fa-search"></i>
                                <input type="text" placeholder="Search documents...">
                            </div>
                            <div class="document-filter-buttons">
                                <button class="btn btn-sm btn-outline active">All</button>
                                <button class="btn btn-sm btn-outline">Licenses</button>
                                <button class="btn btn-sm btn-outline">Certifications</button>
                                <button class="btn btn-sm btn-outline">Personal</button>
                            </div>
                        </div>
                        <div class="document-list">
                            <div class="document-item">
                                <div class="document-icon">
                                    <i class="fas fa-file-pdf"></i>
                                </div>
                                <div class="document-details">
                                    <h3>Medical License</h3>
                                    <p>State of Massachusetts Medical Board</p>
                                    <div class="document-meta">
                                        <span><i class="fas fa-calendar-alt"></i> Expires: Dec 31, 2026</span>
                                        <span><i class="fas fa-clock"></i> Uploaded: Jan 15, 2025</span>
                                    </div>
                                </div>
                                <div class="document-actions">
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-download"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                            <div class="document-item">
                                <div class="document-icon">
                                    <i class="fas fa-file-pdf"></i>
                                </div>
                                <div class="document-details">
                                    <h3>Board Certification</h3>
                                    <p>American Board of Internal Medicine</p>
                                    <div class="document-meta">
                                        <span><i class="fas fa-calendar-alt"></i> Expires: Aug 15, 2026</span>
                                        <span><i class="fas fa-clock"></i> Uploaded: Sep 10, 2024</span>
                                    </div>
                                </div>
                                <div class="document-actions">
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-download"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                            <div class="document-item">
                                <div class="document-icon">
                                    <i class="fas fa-file-pdf"></i>
                                </div>
                                <div class="document-details">
                                    <h3>Malpractice Insurance</h3>
                                    <p>MedPro Group</p>
                                    <div class="document-meta">
                                        <span><i class="fas fa-calendar-alt"></i> Expires: Mar 01, 2026</span>
                                        <span><i class="fas fa-clock"></i> Uploaded: Feb 15, 2025</span>
                                    </div>
                                </div>
                                <div class="document-actions">
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-download"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                            <div class="document-item">
                                <div class="document-icon">
                                    <i class="fas fa-file-image"></i>
                                </div>
                                <div class="document-details">
                                    <h3>ID Badge Photo</h3>
                                    <p>Hospital ID Department</p>
                                    <div class="document-meta">
                                        <span><i class="fas fa-calendar-alt"></i> Expires: N/A</span>
                                        <span><i class="fas fa-clock"></i> Uploaded: Jan 05, 2025</span>
                                    </div>
                                </div>
                                <div class="document-actions">
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-download"></i></button>
                                    <button class="action-btn"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

    <!-- Footer -->
    <footer class="main-footer">
        <div class="footer-content">
            <div>
                <div class="footer-logo">
                    <span>Hospitronix HMS</span>
                </div>
            </div>
            <div class="footer-links">
                <div class="footer-column">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="#">My Patients</a></li>
                        <li><a href="#">Appointments</a></li>
                        <li><a href="#">Medical Records</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Support</h3>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Contact IT</a></li>
                        <li><a href="#">FAQs</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Legal</h3>
                    <ul>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Data Protection</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2025 Hospitronix HMS. All rights reserved.</p>
        </div>
    </footer>

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
            
            // Logout functionality
            document.getElementById('logoutBtn').addEventListener('click', function() {
                // Clear session
                sessionStorage.removeItem('isLoggedIn');
                sessionStorage.removeItem('userRole');
                // Redirect to login page
                window.location.href = 'home.html';
            });

            // Profile tabs functionality
            const profileTabs = document.querySelectorAll('.profile-tab');
            const profileTabContents = document.querySelectorAll('.profile-tab-content');
            
            profileTabs.forEach(tab => {
                tab.addEventListener('click', function() {
                    // Remove active class from all tabs
                    profileTabs.forEach(t => t.classList.remove('active'));
                    
                    // Add active class to clicked tab
                    this.classList.add('active');
                    
                    // Hide all tab contents
                    profileTabContents.forEach(content => {
                        content.classList.remove('active');
                    });
                    
                    // Show the corresponding tab content
                    const tabId = this.getAttribute('data-tab');
                    document.getElementById(tabId).classList.add('active');
                });
            });
        });
    </script>
</body>
</html>                