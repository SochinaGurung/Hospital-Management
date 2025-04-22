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
    <title>Login - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/home-styles.css">
</head>
<body class="home-page">
    <div class="home-container">
        <!-- Header -->
        <header class="home-header">
            <div class="logo">
                <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/Hospitronix%20X-5lZ8JHDF4Fhm4rT0C7zdpZGYY6JcF6.png" alt="Hospitronix Logo" height="32">
                <span>Hospitronix HMS</span>
            </div>
            <nav class="home-nav">
                <ul>
                    <!-- Removed Home and Features links -->
                    <li><a href="${pageContext.request.contextPath}/Home" class="<%= currentPage.endsWith("home.jsp") ? "active" : "" %>">Home</a></li>
                	<li><a href="${pageContext.request.contextPath}/about" class="<%= currentPage.endsWith("about.jsp") ? "active" : "" %>">About</a></li>
                    <li><a href="${pageContext.request.contextPath}/contact" class="<%= currentPage.endsWith("contact.jsp") ? "active" : "" %>">Contact</a></li>
      
                </ul>
            </nav>
        </header>

        <!-- Main Content -->
        <main class="home-content">
            <section class="split-section">
                <!-- Hero Side -->
                <div class="hero-side">
                    <div class="hero-content">
                        <!-- Hospital image before text -->
                        <div class="hero-image" style="margin-bottom: 2rem; text-align: center;">
                            <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/hospital_image-AD2cFHD9nWUAjnk281vvKsPcvOldOZ.png" alt="Hospitronix HMS Hospital Building" style="width: auto; height: auto; max-width: 250px; max-height: 200px;">
                        </div>
                        
                        <h1>Streamline Your Healthcare Management</h1>
                        <p>Hospitronix HMS is a comprehensive hospital management system designed to improve patient care, streamline operations, and enhance overall efficiency in healthcare facilities.</p>
                        <!-- Removed "Explore Features" button -->
                    </div>
                </div>
                
                <!-- Login Side -->
                <div class="login-side">
                    <div class="login-card">
                        <div class="login-header">
                            <h2>Welcome Back</h2>
                            <p>Login to your account</p>
                        </div>
                        
                        <form class="login-form" id="loginForm" method="post" action="/Home">
                            <div class="form-group">
                                <label for="userId">User ID</label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                        <circle cx="12" cy="7" r="4"></circle>
                                    </svg>
                                    <input type="text" id="userId" class="form-control" placeholder="Enter your User ID" required>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="password">Password</label>
                                <div class="input-with-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                        <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                                    </svg>
                                    <input type="password" id="password" class="form-control" placeholder="Enter your password" required>
                                </div>
                            </div>
                            
                            <div class="error-message" id="loginError" style="display: none; color: #ff6b6b; margin-bottom: 1rem; text-align: center; padding: 0.5rem; background-color: rgba(255, 107, 107, 0.1); border-radius: 0.375rem;">
                                Invalid User ID or Password. Please try again.
                            </div>
                            
                            <div class="form-options">
                                <label class="checkbox-label">
                                    <input type="checkbox"> Remember me
                                </label>
                                <a href="#" class="forgot-password">Forgot Password?</a>
                            </div>
                            
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </form>
                        
                        <div class="register-prompt">
                            <p>Don't have an account?</p>
                            <a href="${pageContext.request.contextPath}/register" class="btn btn-outline btn-block <%= currentPage.endsWith("register_patient.jsp") ? "active" : "" %>">Create Account</a>  
                            
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <!-- Footer -->
        <footer class="home-footer">
            <div class="footer-content">
                <!-- Removed the "Empowering healthcare through technology" text -->
                <!-- First underline removed -->
            </div>
            <div class="footer-bottom">
                <hr class="footer-divider">
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
            const loginForm = document.getElementById('loginForm');
            const loginError = document.getElementById('loginError');
            
            // Check for unauthorized access parameter
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.get('unauthorized') === 'true') {
                loginError.textContent = 'Please login to access the dashboard.';
                loginError.style.display = 'block';
            }
            
            loginForm.addEventListener('submit', function(event) {
                event.preventDefault();
                
                const userId = document.getElementById('userId').value;
                const password = document.getElementById('password').value;
                
                // Check credentials and redirect to appropriate dashboard
                if (userId === "patient" && password === "patient") {
                    // Set session storage to indicate logged in state
                    sessionStorage.setItem('isLoggedIn', 'true');
                    sessionStorage.setItem('userRole', 'patient');
                    
                    // Successful login - redirect to patient dashboard
                   // window.location.href = "${contextPath}/patient";
                    window.location.href = "<%= request.getContextPath() %>/patient";

                } 
                else if (userId === "admin" && password === "admin") {
                    // Set session storage to indicate logged in state
                    sessionStorage.setItem('isLoggedIn', 'true');
                    sessionStorage.setItem('userRole', 'admin');
                    
                    // Successful login - redirect to admin portal
                    //window.location.href = 'admin_portal.jsp';
                    window.location.href = "<%= request.getContextPath() %>/admin";
                }
                else if (userId === "doctor" && password === "doctor") {
                    // Set session storage to indicate logged in state
                    sessionStorage.setItem('isLoggedIn', 'true');
                    sessionStorage.setItem('userRole', 'doctor');
                    
                    // Successful login - redirect to doctor portal
                    //window.location.href = 'doctor_dashboard.jsp';
                    window.location.href = "<%= request.getContextPath() %>/doctor";
                }
                else {
                    // Show error message
                    loginError.textContent = 'Invalid User ID or Password. Please try again.';
                    loginError.style.display = 'block';
                    
                    // Clear password field
                    document.getElementById('password').value = '';
                }
            });
        });
    </script>
</body>
</html>