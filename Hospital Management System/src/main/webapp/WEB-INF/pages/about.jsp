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
    <title>About - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/about-styles.css">
    <style>
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
            <div class="page-header">
                <h1>About Hospitronix</h1>
                <p class="subtitle">Revolutionizing healthcare management with innovative technology</p>
            </div>

            <section class="about-section">
                <div class="about-content">
                    <h2>Our Mission</h2>
                    <p>At Hospitronix, we're dedicated to transforming healthcare management through innovative technology solutions. Our mission is to empower healthcare providers with intuitive tools that streamline operations, enhance patient care, and improve overall efficiency.</p>
                    
                    <div class="about-image">
                       
                    </div>
                    
                    <h2>Our Story</h2>
                    <p>Founded in 2020, Hospitronix emerged from a collaboration between healthcare professionals and technology experts who recognized the need for more efficient hospital management systems. What began as a solution for a single hospital has grown into a comprehensive platform serving healthcare facilities worldwide.</p>
                    
                    <p>Our team combines decades of experience in healthcare administration, software development, and user experience design to create a system that addresses the real challenges faced by modern healthcare providers.</p>
                    
                    <h2>Our Values</h2>
                    <div class="values-grid">
                        <div class="value-card">
                            <div class="value-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z"></path>
                                </svg>
                            </div>
                            <h3>Patient-Centered</h3>
                            <p>We design our solutions with patients in mind, ensuring that our technology enhances the quality of care they receive.</p>
                        </div>
                        <div class="value-card">
                            <div class="value-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="m2 9 3-3 3 3"></path>
                                    <path d="M8 6v12"></path>
                                    <path d="m22 15-3 3-3-3"></path>
                                    <path d="M16 18V6"></path>
                                </svg>
                            </div>
                            <h3>Innovation</h3>
                            <p>We continuously push the boundaries of what's possible in healthcare technology, staying ahead of industry trends.</p>
                        </div>
                        <div class="value-card">
                            <div class="value-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10"></path>
                                </svg>
                            </div>
                            <h3>Security</h3>
                            <p>We prioritize the security and privacy of patient data, implementing robust measures to protect sensitive information.</p>
                        </div>
                        <div class="value-card">
                            <div class="value-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="12" cy="12" r="10"></circle>
                                    <path d="m16 10-4 4-4-4"></path>
                                </svg>
                            </div>
                            <h3>Accessibility</h3>
                            <p>We believe in making healthcare management technology accessible to facilities of all sizes, from small clinics to large hospitals.</p>
                        </div>
                    </div>

                    <h2>Leadership Team</h2>
                    <div class="team-grid">
                        <div class="team-member">
                            <div class="member-image">
                                <img src="doctor-01_generated.jpg" alt="CEO Portrait">
                            </div>
                            <h3>Dr. Sarah Johnson</h3>
                            <p class="member-title">Chief Executive Officer</p>
                            <p>Former hospital administrator with 15+ years of experience in healthcare management.</p>
                        </div>
                        <div class="team-member">
                            <div class="member-image">
                                <img src="doctor-01_generated.jpg" alt="CEO Portrait">
                            </div>
                            <h3>Michael Chen</h3>
                            <p class="member-title">Chief Technology Officer</p>
                            <p>Software architect with expertise in healthcare information systems and data security.</p>
                        </div>
                        <div class="team-member">
                            <div class="member-image">
                                <img src="doctor-01_generated.jpg" alt="CEO Portrait">
                            </div>
                            <h3>James Wilson</h3>
                            <p class="member-title">Chief Operations Officer</p>
                            <p>Healthcare operations specialist focused on optimizing clinical workflows.</p>
                        </div>
                    </div>

        </main>

        <!-- Footer -->
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
</body>
</html>
    