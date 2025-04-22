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
    <title>Doctor Dashboard - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/doctor-dashboard.css">

    
</head>
<body>
    <div class="dashboard-container">
        <!-- Sidebar -->
        <aside class="sidebar">
            <div class="sidebar-header">
                <img src="placeholder.svg" alt="Hospitronix Logo" width="32" height="32">
                <span class="logo-text">Hospitronix HMS</span>
            </div>
            
            <div class="sidebar-content">
                <div class="doctor-profile">
                    <div class="avatar">
                        <img src="placeholder.svg" alt="Dr. Sarah Smith" width="40" height="40">
                        <span class="avatar-fallback">SS</span>
                    </div>
                    <div class="doctor-info">
                        <p class="doctor-name">Dr. Sarah Smith</p>
                        <p class="doctor-specialty">Cardiology</p>
                    </div>
                </div>
                
                <nav class="sidebar-nav">  
                	<!-- <a href="${pageContext.request.contextPath}/doctor" class="nav-item active<%= currentPage.endsWith("doctor_dashboard.jsp") ? "active" : "" %>">Doctor Dashboard</a> -->
                    <a href="doctor-dashboard.jsp" class="nav-item active"> 
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <polyline points="14 2 14 8 20 8"></polyline>
                            <line x1="16" y1="13" x2="8" y2="13"></line>
                            <line x1="16" y1="17" x2="8" y2="17"></line>
                            <polyline points="10 9 9 9 8 9"></polyline>
                        </svg>
                        <span>Dashboard</span>
                    </a>
                    <a href="doctor-appointments.html" class="nav-item">
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                            <line x1="16" y1="2" x2="16" y2="6"></line>
                            <line x1="8" y1="2" x2="8" y2="6"></line>
                            <line x1="3" y1="10" x2="21" y2="10"></line>
                        </svg>
                        <span>Appointments</span>
                    </a>
                    <a href="doctor-patients.html" class="nav-item">
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                            <circle cx="9" cy="7" r="4"></circle>
                            <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                            <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                        </svg>
                        <span>Patients</span>
                    </a>
                    <a href="doctor-schedule.html" class="nav-item">
                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="12" cy="12" r="10"></circle>
                            <polyline points="12 6 12 12 16 14"></polyline>
                        </svg>
                        <span>Schedule</span>
                    </a>
                </nav>
            </div>
            
            <div class="sidebar-footer">
                <button class="logout-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                        <polyline points="16 17 21 12 16 7"></polyline>
                        <line x1="21" y1="12" x2="9" y2="12"></line>
                    </svg>
                    <span>Logout</span>
                </button>
            </div>
        </aside>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Header -->
            <header class="dashboard-header">
                <h1 class="page-title">Doctor Dashboard</h1>
                
                <div class="header-actions">
                    <div class="notification-bell">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                            <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                        </svg>
                        <span class="notification-badge">3</span>
                    </div>
                    
                    <div class="profile-dropdown">
                        <div class="avatar">
                            <img src="placeholder.svg" alt="Dr. Sarah Smith" width="32" height="32">
                            <span class="avatar-fallback">SS</span>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Dashboard Content -->
            <main class="dashboard-content">
                <!-- Stats Overview -->
                <div class="stats-grid">
                    <div class="stat-card">
                        <div class="stat-header">
                            <h3 class="stat-title">Total Appointments</h3>
                        </div>
                        <div class="stat-content">
                            <div class="stat-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                    <line x1="16" y1="2" x2="16" y2="6"></line>
                                    <line x1="8" y1="2" x2="8" y2="6"></line>
                                    <line x1="3" y1="10" x2="21" y2="10"></line>
                                </svg>
                            </div>
                            <div class="stat-data">
                                <div class="stat-value">42</div>
                                <p class="stat-change">+8% from last week</p>
                            </div>
                        </div>
                    </div>

                    <div class="stat-card">
                        <div class="stat-header">
                            <h3 class="stat-title">Today's Appointments</h3>
                        </div>
                        <div class="stat-content">
                            <div class="stat-icon blue">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="12" cy="12" r="10"></circle>
                                    <polyline points="12 6 12 12 16 14"></polyline>
                                </svg>
                            </div>
                            <div class="stat-data">
                                <div class="stat-value">5</div>
                                <p class="stat-change blue-text">2 completed</p>
                            </div>
                        </div>
                    </div>

                    <div class="stat-card">
                        <div class="stat-header">
                            <h3 class="stat-title">Total Patients</h3>
                        </div>
                        <div class="stat-content">
                            <div class="stat-icon purple">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="9" cy="7" r="4"></circle>
                                    <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                    <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                </svg>
                            </div>
                            <div class="stat-data">
                                <div class="stat-value">128</div>
                                <p class="stat-change purple-text">+12 this month</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Appointments Section -->
                <div class="appointments-grid">
                    <div class="appointments-table-container">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="card-title">Today's Appointments</h2>
                                <div class="card-actions">
                                    <div class="search-container">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="search-icon">
                                            <circle cx="11" cy="11" r="8"></circle>
                                            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                        </svg>
                                        <input type="search" placeholder="Search appointments..." class="search-input">
                                    </div>
                                    <button class="filter-btn">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"></polygon>
                                        </svg>
                                    </button>
                                </div>
                            </div>
                            <div class="card-content">
                                <table class="data-table">
                                    <thead>
                                        <tr>
                                            <th>Time</th>
                                            <th>Patient</th>
                                            <th>Issue</th>
                                            <th class="text-right">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="font-medium">09:00 AM</td>
                                            <td>
                                                <div class="stacked-data">
                                                    <span>John Doe</span>
                                                    <span class="secondary-text">PT123456</span>
                                                </div>
                                            </td>
                                            <td class="truncate-text">Chest pain and shortness of breath</td>
                                            <td class="text-right">
                                                <span class="badge checked-in">Checked In</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="font-medium">10:30 AM</td>
                                            <td>
                                                <div class="stacked-data">
                                                    <span>Jane Smith</span>
                                                    <span class="secondary-text">PT789012</span>
                                                </div>
                                            </td>
                                            <td class="truncate-text">Follow-up on medication</td>
                                            <td class="text-right">
                                                <span class="badge scheduled">Scheduled</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="font-medium">11:45 AM</td>
                                            <td>
                                                <div class="stacked-data">
                                                    <span>Robert Johnson</span>
                                                    <span class="secondary-text">PT345678</span>
                                                </div>
                                            </td>
                                            <td class="truncate-text">Annual checkup</td>
                                            <td class="text-right">
                                                <span class="badge scheduled">Scheduled</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="font-medium">02:15 PM</td>
                                            <td>
                                                <div class="stacked-data">
                                                    <span>Emily Davis</span>
                                                    <span class="secondary-text">PT901234</span>
                                                </div>
                                            </td>
                                            <td class="truncate-text">Irregular heartbeat</td>
                                            <td class="text-right">
                                                <span class="badge scheduled">Scheduled</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="font-medium">03:30 PM</td>
                                            <td>
                                                <div class="stacked-data">
                                                    <span>Michael Wilson</span>
                                                    <span class="secondary-text">PT567890</span>
                                                </div>
                                            </td>
                                            <td class="truncate-text">Post-surgery follow-up</td>
                                            <td class="text-right">
                                                <span class="badge scheduled">Scheduled</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="upcoming-appointments">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="card-title">Upcoming Appointments</h2>
                                <p class="card-description">Your schedule for the next days</p>
                            </div>
                            <div class="card-content">
                                <div class="upcoming-list">
                                    <div class="upcoming-item">
                                        <div class="upcoming-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                                <line x1="16" y1="2" x2="16" y2="6"></line>
                                                <line x1="8" y1="2" x2="8" y2="6"></line>
                                                <line x1="3" y1="10" x2="21" y2="10"></line>
                                            </svg>
                                        </div>
                                        <div class="upcoming-details">
                                            <div class="upcoming-header">
                                                <span class="patient-name">Sarah Thompson</span>
                                                <button class="more-btn">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <circle cx="12" cy="12" r="1"></circle>
                                                        <circle cx="12" cy="5" r="1"></circle>
                                                        <circle cx="12" cy="19" r="1"></circle>
                                                    </svg>
                                                </button>
                                            </div>
                                            <span class="patient-id">PT234567</span>
                                            <p class="appointment-issue">Blood pressure monitoring</p>
                                            <div class="appointment-time">
                                                <span class="date">Tomorrow</span>
                                                <span class="time">10:00 AM</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="upcoming-item">
                                        <div class="upcoming-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                                <line x1="16" y1="2" x2="16" y2="6"></line>
                                                <line x1="8" y1="2" x2="8" y2="6"></line>
                                                <line x1="3" y1="10" x2="21" y2="10"></line>
                                            </svg>
                                        </div>
                                        <div class="upcoming-details">
                                            <div class="upcoming-header">
                                                <span class="patient-name">David Brown</span>
                                                <button class="more-btn">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <circle cx="12" cy="12" r="1"></circle>
                                                        <circle cx="12" cy="5" r="1"></circle>
                                                        <circle cx="12" cy="19" r="1"></circle>
                                                    </svg>
                                                </button>
                                            </div>
                                            <span class="patient-id">PT890123</span>
                                            <p class="appointment-issue">ECG results review</p>
                                            <div class="appointment-time">
                                                <span class="date">Tomorrow</span>
                                                <span class="time">02:30 PM</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="upcoming-item">
                                        <div class="upcoming-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                                <line x1="16" y1="2" x2="16" y2="6"></line>
                                                <line x1="8" y1="2" x2="8" y2="6"></line>
                                                <line x1="3" y1="10" x2="21" y2="10"></line>
                                            </svg>
                                        </div>
                                        <div class="upcoming-details">
                                            <div class="upcoming-header">
                                                <span class="patient-name">Jennifer Lee</span>
                                                <button class="more-btn">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <circle cx="12" cy="12" r="1"></circle>
                                                        <circle cx="12" cy="5" r="1"></circle>
                                                        <circle cx="12" cy="19" r="1"></circle>
                                                    </svg>
                                                </button>
                                            </div>
                                            <span class="patient-id">PT456789</span>
                                            <p class="appointment-issue">Chest pain evaluation</p>
                                            <div class="appointment-time">
                                                <span class="date">23/04/2025</span>
                                                <span class="time">11:15 AM</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="upcoming-item">
                                        <div class="upcoming-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
                                                <line x1="16" y1="2" x2="16" y2="6"></line>
                                                <line x1="8" y1="2" x2="8" y2="6"></line>
                                                <line x1="3" y1="10" x2="21" y2="10"></line>
                                            </svg>
                                        </div>
                                        <div class="upcoming-details">
                                            <div class="upcoming-header">
                                                <span class="patient-name">William Taylor</span>
                                                <button class="more-btn">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                        <circle cx="12" cy="12" r="1"></circle>
                                                        <circle cx="12" cy="5" r="1"></circle>
                                                        <circle cx="12" cy="19" r="1"></circle>
                                                    </svg>
                                                </button>
                                            </div>
                                            <span class="patient-id">PT012345</span>
                                            <p class="appointment-issue">Post-heart attack follow-up</p>
                                            <div class="appointment-time">
                                                <span class="date">24/04/2025</span>
                                                <span class="time">09:45 AM</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Recent Patients -->
                <div class="card">
                    <div class="card-header">
                        <div class="card-header-content">
                            <h2 class="card-title">Recent Patients</h2>
                            <button class="view-all-btn">View All</button>
                        </div>
                    </div>
                    <div class="card-content">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Patient</th>
                                    <th>Age</th>
                                    <th>Last Visit</th>
                                    <th>Condition</th>
                                    <th>Status</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="patient-info">
                                            <div class="avatar">
                                                <span class="avatar-fallback">JD</span>
                                            </div>
                                            <div class="stacked-data">
                                                <span class="font-medium">John Doe</span>
                                                <span class="secondary-text">PT123456</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>45</td>
                                    <td>Today, 09:00 AM</td>
                                    <td>Hypertension</td>
                                    <td>
                                        <span class="badge critical">Critical</span>
                                    </td>
                                    <td class="text-right">
                                        <button class="more-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <circle cx="12" cy="12" r="1"></circle>
                                                <circle cx="12" cy="5" r="1"></circle>
                                                <circle cx="12" cy="19" r="1"></circle>
                                            </svg>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="patient-info">
                                            <div class="avatar">
                                                <span class="avatar-fallback">JS</span>
                                            </div>
                                            <div class="stacked-data">
                                                <span class="font-medium">Jane Smith</span>
                                                <span class="secondary-text">PT789012</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>38</td>
                                    <td>Yesterday</td>
                                    <td>Arrhythmia</td>
                                    <td>
                                        <span class="badge stable">Stable</span>
                                    </td>
                                    <td class="text-right">
                                        <button class="more-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <circle cx="12" cy="12" r="1"></circle>
                                                <circle cx="12" cy="5" r="1"></circle>
                                                <circle cx="12" cy="19" r="1"></circle>
                                            </svg>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="patient-info">
                                            <div class="avatar">
                                                <span class="avatar-fallback">RJ</span>
                                            </div>
                                            <div class="stacked-data">
                                                <span class="font-medium">Robert Johnson</span>
                                                <span class="secondary-text">PT345678</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>52</td>
                                    <td>18/04/2025</td>
                                    <td>Coronary Artery Disease</td>
                                    <td class="text-right">
                                        <button class="more-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <circle cx="12" cy="12" r="1"></circle>
                                                <circle cx="12" cy="5" r="1"></circle>
                                                <circle cx="12" cy="19" r="1"></circle>
                                            </svg>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="patient-info">
                                            <div class="avatar">
                                                <span class="avatar-fallback">ED</span>
                                            </div>
                                            <div class="stacked-data">
                                                <span class="font-medium">Emily Davis</span>
                                                <span class="secondary-text">PT901234</span>
                                            </div>
                                        </div>
                                    </td>
                                    <td>29</td>
                                    <td>15/04/2025</td>
                                    <td>Mitral Valve Prolapse</td>
                                    <td>
                                        <span class="badge stable">Stable</span>
                                    </td>
                                    <td class="text-right">
                                        <button class="more-btn">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <circle cx="12" cy="12" r="1"></circle>
                                                <circle cx="12" cy="5" r="1"></circle>
                                                <circle cx="12" cy="19" r="1"></circle>
                                            </svg>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
        </div>
    </div>
</body>
</html>