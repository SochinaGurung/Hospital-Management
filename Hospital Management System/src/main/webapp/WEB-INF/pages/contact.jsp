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
    <title>Contact - Hospitronix HMS</title>
    <link rel="stylesheet" type="text/css" href="CSS/styles.css">
    <link rel="stylesheet" type="text/css" href="CSS/contact-styles.css">

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
                <h1>Contact Us</h1>
                <p class="subtitle">Get in touch with our team for inquiries, support, or partnership opportunities</p>
            </div>

            <section class="contact-section">
                <div class="contact-grid">
                    <div class="contact-info">
                        <h2>We're Here to Help</h2>
                        <p>Have questions about Hospitronix HMS? Our team is ready to assist you with any inquiries, from product information to technical support.</p>
                        
                        <div class="contact-methods">
                            <div class="contact-method">
                                <div class="method-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path>
                                    </svg>
                                </div>
                                <div class="method-details">
                                    <h3>Phone</h3>
                                    <p>+1 (XXX) XXX-XXXX</p>
                                </div>
                            </div>
                            
                            <div class="contact-method">
                                <div class="method-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect width="20" height="16" x="2" y="4" rx="2"></rect>
                                        <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"></path>
                                    </svg>
                                </div>
                                <div class="method-details">
                                    <h3>Email</h3>
                                    <p>info@hospitronix.com</p>
                                    <p class="text-muted">We'll respond within 24 hours</p>
                                </div>
                            </div>
                            
                            <div class="contact-method">
                                <div class="method-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z"></path>
                                        <circle cx="12" cy="10" r="3"></circle>
                                    </svg>
                                </div>
                                <div class="method-details">
                                    <h3>Office</h3>
                                    <p>Kamalpokhari</p>
                                    <p>Kathmandu, Nepal</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="social-links">
                            <h3>Connect With Us</h3>
                            <div class="social-icons">
                                <a href="#" class="social-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path>
                                    </svg>
                                </a>
                                <a href="#" class="social-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z"></path>
                                    </svg>
                                </a>
                                <a href="#" class="social-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
                                        <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path>
                                        <line x1="17.5" x2="17.51" y1="6.5" y2="6.5"></line>
                                    </svg>
                                </a>
                                <a href="#" class="social-icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"></path>
                                        <rect width="4" height="12" x="2" y="9"></rect>
                                        <circle cx="4" cy="4" r="2"></circle>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="contact-form-container">
                        <h2>Send Us a Message</h2>
                        <form class="contact-form">
                            <div class="form-group">
                                <label for="name">Full Name</label>
                                <input type="text" id="name" class="form-control" placeholder="Enter your full name">
                            </div>
                            
                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input type="email" id="email" class="form-control" placeholder="Enter your email address">
                            </div>
                            
                            <div class="form-group">
                                <label for="phone">Phone Number (Optional)</label>
                                <input type="tel" id="phone" class="form-control" placeholder="Enter your phone number">
                            </div>
                            
                            <div class="form-group">
                                <label for="subject">Subject</label>
                                <select id="subject" class="form-control">
                                    <option value="" disabled selected>Select a subject</option>
                                    <option value="general">General Inquiry</option>
                                    <option value="sales">Sales Question</option>
                                    <option value="support">Technical Support</option>
                                    <option value="partnership">Partnership Opportunity</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea id="message" class="form-control" rows="5" placeholder="Type your message here..."></textarea>
                            </div>
                            
                            <div class="form-group">
                                <label class="checkbox-label">
                                    <input type="checkbox"> I agree to the privacy policy and terms of service
                                </label>
                            </div>
                            
                            <button type="submit" class="btn btn-primary btn-block">Send Message</button>
                        </form>
                    </div>
                </div>
            </section>

            <section class="faq-section">
                <h2>Frequently Asked Questions</h2>
                <div class="faq-grid">
                    <div class="faq-item">
                        <h3>How can I request a demo of Hospitronix HMS?</h3>
                        <p>You can request a demo by filling out the contact form above or by calling our sales team directly. We'll schedule a personalized demonstration based on your specific needs.</p>
                    </div>
                    
                    <div class="faq-item">
                        <h3>Do you offer implementation support?</h3>
                        <p>Yes, we provide comprehensive implementation support including system setup, data migration, and staff training to ensure a smooth transition to Hospitronix HMS.</p>
                    </div>
                    
                    <div class="faq-item">
                        <h3>Is Hospitronix HMS suitable for small clinics?</h3>
                        <p>Hospitronix HMS is designed to scale with your needs. We offer different editions suitable for facilities of all sizes, from small clinics to large hospitals.</p>
                    </div>
                    
                    <div class="faq-item">
                        <h3>How secure is patient data in your system?</h3>
                        <p>Security is our top priority. Hospitronix HMS employs industry-leading encryption, role-based access controls, and regular security audits to ensure patient data remains protected.</p>
                    </div>
                </div>
            </section>
        </main>

        <!-- Footer -->
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
</body>
</html>
    