<%-- 
    Document   : bookings_page
    Created on : 20 May 2023, 1:52:37 PM
    Author     : Student
--%>

<%@page import="za.ac.tut.entities.Person"%>
<%
    Person person = (Person)session.getAttribute("person");
    
    if(person == null){
        RequestDispatcher disp = request.getRequestDispatcher("user_login.jsp");
        disp.forward(request, response);
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Gentlemen's Barber Shop - HTML CSS Template</title>

        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;500&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link href="css/templatemo-barber-shop.css" rel="stylesheet">

        <link rel="stylesheet" href="/css/index.css">
<!--

TemplateMo 585 Barber Shop

https://templatemo.com/tm-585-barber-shop

-->
    </head>
    
    <body>

        <div class="container-fluid">
            <div class="row">

                <button class="navbar-toggler d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <nav id="sidebarMenu" class="col-md-4 col-lg-3 d-md-block sidebar collapse p-0">

                    <div class="position-sticky sidebar-sticky d-flex flex-column justify-content-center align-items-center">
                        <a class="navbar-brand" href="index.html">
                            <img src="images/templatemo-barber-logo.png" class="logo-image img-fluid" align="">
                        </a>

                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_1">Profile</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_2">Our Story</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_3">Services</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="#section_4">Price List</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link click-scroll" href="UserLogoutServlet.do">Log-out</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                
                <div class="col-md-8 ms-sm-auto col-lg-9 p-0">
                    <section class="hero-section d-flex justify-content-center align-items-center" id="section_1">

                            <div class="container">
                                <div class="row">

                                    <div class="col-lg-8 col-12">
                                        <h1 class="text-white mb-lg-3 mb-4"><strong>Barber <em>Shop</em></strong></h1>
                                        <p class="text-black">Get the most professional haircut for you</p>
                                        <br>
                                        <a class="btn custom-btn custom-border-btn custom-btn-bg-white smoothscroll me-2 mb-2" href="#section_2">Promo</a>

                                        <a class="btn custom-btn smoothscroll mb-2" href="#booking-section">Click here to Book</a>
                                    </div>
                                </div>
                            </div>

                            <div class="custom-block d-lg-flex flex-column justify-content-center align-items-center">
                                <img src="images/vintage-chair-barbershop.jpg" class="custom-block-image img-fluid" alt="">

                                <h4><strong class="text-white">Hurry Up! Get good haircut.</strong></h4>

                                <a href="#booking-section" class="smoothscroll btn custom-btn custom-btn-italic mt-3">Book a seat</a>
                            </div>
                    </section>


                    <section class="about-section section-padding" id="section_2">
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-12 col-12 mx-auto">
                                    <h2 class="mb-4">Best hairdressers</h2>

                                    <div class="border-bottom pb-3 mb-5">
                                       <p>Looking for the best barber shop in South Africa? Look no further than [Barber Shop Name]! Our skilled barbers are dedicated to providing you with a top-quality haircut, shave, or beard trim that leaves you feeling confident and refreshed</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>

                    <section class="featured-section section-padding">
                        <div class="section-overlay"></div>

                        <div class="container">
                            <div class="row">

                                <div class="col-lg-10 col-12 mx-auto">
                                    <h2 class="mb-3">Get 32% Discount</h2>

                                    <p>First to our barber shop</p>

                                    <strong>Promo Code: FirstTime</strong>
                                </div>

                            </div>
                        </div>
                    </section>


                    <section class="services-section section-padding" id="section_3">
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-12 col-12">
                                    <h2 class="mb-5">Services</h2>
                                </div>

                                <div class="col-lg-6 col-12 mb-4">
                                    <div class="services-thumb">
                                        <img src="images/services/woman-cutting-hair-man-salon.jpg" class="services-image img-fluid" alt="">

                                        <div class="services-info d-flex align-items-end">
                                            <h4 class="mb-0">Hair cut</h4>

                                            <strong class="services-thumb-price">R120.00</strong>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-12 mb-4">
                                    <div class="services-thumb">
                                        <img src="images/services/hairdresser-grooming-their-client.jpg" class="services-image img-fluid" alt="">

                                        <div class="services-info d-flex align-items-end">
                                            <h4 class="mb-0">Washing</h4>

                                            <strong class="services-thumb-price">R200.00</strong>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-12 mb-4 mb-lg-0">
                                    <div class="services-thumb">
                                        <img src="images/services/hairdresser-grooming-client.jpg" class="services-image img-fluid" alt="">

                                        <div class="services-info d-flex align-items-end">
                                            <h4 class="mb-0">Shaves</h4>

                                            <strong class="services-thumb-price">R50.00</strong>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-12">
                                    <div class="services-thumb">
                                        <img src="images/services/boy-getting-haircut-salon-front-view.jpg" class="services-image img-fluid" alt="">

                                        <div class="services-info d-flex align-items-end">
                                            <h4 class="mb-0">Kids</h4>

                                            <strong class="services-thumb-price">R80.00</strong>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>

                    <section class="booking-section section-padding" id="booking-section">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-10 col-12 mx-auto">
                                <form action="BookingServlet.do" method="post" class="custom-form booking-form" id="bb-booking-form" role="form">
                                    <div class="text-center mb-5">
                                        <h2 class="mb-1">Book a seat</h2>
                                        <p>Please fill out the form and we get back to you</p>
                                    </div>
                                    
                                    
                                    

                                    <div class="booking-form-body">
                                        <div class="row">

                                            <div class="col-lg-6 col-12">
                                                <input type="text" name="name" id="bb-name" class="form-control" placeholder="Full name" required>
                                            </div>

                                            <div class="col-lg-6 col-12">
                                                <input type="tel" class="form-control" name="phone" placeholder="Mobile 071-177-0422"  required>
                                            </div>
                                        
                                            <div class="col-lg-6 col-12">
                                                <input class="form-control" type="time" name="time" value="18:30" />
                                            </div>

                                            <div class="col-lg-6 col-12">
                                                <select class="form-select form-control" name="branch" id="bb-branch" aria-label="Default select example">
                                                    <option selected="">Select Branches</option>
                                                    <option value="Giyani">Giyani</option>
                                                    <option value="Pretoria">Pretoria</option>
                                                    <option value="Johannesburg">Johannesburg</option>
                                                    <option value="Cape Town">Cape Town</option>
                                                    <option value="Durban">Durban</option>
                                                </select>

                                            </div>
                                            <div class="col-lg-6 col-12">
                                                <input type="date" name="date" id="bb-date" class="form-control" placeholder="Date" required>
                                            </div>

                                            <div class="col-lg-6 col-12">
                                                <input type="number" name="number" id="bb-number" class="form-control" placeholder="Number of People" required>
                                            </div>
                                        </div>
                                        
                                          <div class="col-lg-6 col-12">
                                                <select class="form-select form-control" name="style" id="bb-branch" aria-label="Default select example">
                                                    <option selected="">Select Hair Style</option>
                                                    <option value="Mohwack">Mohawk</option>
                                                    <option value="Buzz cut">Buzz cut</option>
                                                    <option value="Touch Line">Touch Line</option>
                                                    <option value="Crew cut">Crew cut</option>
                                                    <option value="Combo over">Combo-over</option>
                                                    <option value="High Top Fade">High Top Fade</option>
                                                    <option value="Faux Hawk">Faux Hawk</option>
                                                    <option value="Taper Fade">Taper Fade</option>
                                                    <option value="Ivy league">Ivy league</option>
                                                    <option value="Man bun">Man bun</option>
                                                    
                                                </select>

                                            </div>

                                        <textarea name="message" value="No Comment" rows="3" class="form-control" id="bb-message" placeholder="Comment (Optionals)"></textarea>

                                        <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                            <button type="submit" class="form-control">Submit</button>
                                        </div>
                                    </div>
                                </form>
                        </div>
                    </div>
                </section>


                    <section class="price-list-section section-padding" id="section_4">
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-8 col-12">
                                    <div class="price-list-thumb-wrap">
                                        <div class="mb-4">
                                            <h2 class="mb-2">Price List</h2>

                                            <strong>Starting at R15</strong>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Haircut
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>From- R50</strong>
                                            </h6>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Beard Trim
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>From- R25.00</strong>
                                            </h6>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Razor Cut
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>From- R25.00</strong>
                                            </h6>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Shaves
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>From- R25.00</strong>
                                            </h6>
                                        </div>

                                        <div class="price-list-thumb">
                                            <h6 class="d-flex">
                                                Styling / Color
                                                <span class="price-list-thumb-divider"></span>

                                                <strong>From- R15.00</strong>
                                            </h6>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-12 custom-block-bg-overlay-wrap mt-5 mb-5 mb-lg-0 mt-lg-0 pt-3 pt-lg-0">
                                    <img src="images/vintage-chair-barbershop.jpg" class="custom-block-bg-overlay-image img-fluid" alt="">
                                </div>

                            </div>
                        </div>
                    </section>


                <section class="contact-section" id="section_5">
                    <div class="section-padding section-bg">
                        <div class="container">
                            <div class="row">   

                                <div class="col-lg-8 col-12 mx-auto">
                                    <h2 class="text-center">Say hello</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="section-padding">
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-6 col-12">
                                    <h5 class="mb-3"><strong>Contact</strong> Information</h5>

                                    <p class="text-white d-flex mb-1">
                                        <a href="tel: 120-240-3600" class="site-footer-link">
                                            (+72) 
                                            71-177-0422
                                        </a>
                                    </p>

                                    <p class="text-white d-flex">
                                        <a href="mailto:info@yourgmail.com" class="site-footer-link">
                                            ourbarber@gmail.com
                                        </a>
                                    </p>

                                    <ul class="social-icon">
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-facebook">
                                            </a>
                                        </li>
            
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-twitter">
                                            </a>
                                        </li>
            
                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-instagram">
                                            </a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-youtube">
                                            </a>
                                        </li>

                                        <li class="social-icon-item">
                                            <a href="#" class="social-icon-link bi-whatsapp">
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-lg-5 col-12 contact-block-wrap mt-5 mt-lg-0 pt-4 pt-lg-0 mx-auto">
                                    <div class="contact-block">
                                        <h6 class="mb-0">
                                            <i class="custom-icon bi-shop me-3"></i>

                                            <strong>Open Daily</strong>

                                            <span class="ms-auto">10:00 AM - 8:00 PM</span>
                                        </h6>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-12 mx-auto mt-5 pt-5">
                                    <iframe class="google-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3599.6461805602817!2d28.087152076352467!3d-25.550160137658818!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1ebfcf97a74877af%3A0xb3dc1823bcf11724!2sSoshanguve%20Crossing%20Mall!5e0!3m2!1sen!2sza!4v1683547159706!5m2!1sen!2sza" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>        
                                </div>

                            </div>
                        </div>
                    </div>
                </section>

                <footer class="site-footer">
                    <div class="container">
                        <div class="row">

                            <div class="col-lg-12 col-12">
                                <h4 class="site-footer-title mb-4">Our Branches</h4>
                            </div>

                            <div class="col-lg-4 col-md-6 col-11">
                                <div class="site-footer-thumb">
                                    <strong class="mb-1">Pretoria</strong>

                                    <p>Aubrey Matlakala St, Soshanguve, 0164</p>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 col-11">
                                <div class="site-footer-thumb">
                                    <strong class="mb-1">Johannesburg</strong>

                                    <p>Carr St, Newtown, Johannesburg, 2001</p>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-6 col-11">
                                <strong class="mb-1">Cape Town</strong>

                                <p>297 Long St, Cape Town City Centre, 8000</p>
                            </div>
                        </div>
                    </div>

                    <div class="site-footer-bottom">
                        <div class="container">
                            <div class="row align-items-center">

                                <div class="col-lg-8 col-12 mt-4">
                                    <p class="copyright-text mb-0">Copyright © 2023 Barber Shop</p>
                                </div>

                                <div class="col-lg-2 col-md-3 col-3 mt-lg-4 ms-auto">
                                    <a href="#section_1" class="back-top-icon smoothscroll" title="Back Top">
                                        <i class="bi-arrow-up-circle"></i>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </footer>
            </div>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/click-scroll.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>