<%-- 
    Document   : user_register
    Created on : 20 May 2023, 1:39:05 PM
    Author     : Student
--%>

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
                                <a class="nav-link click-scroll" href="#section_1"></a>
                            </li>


                            <li class="nav-item">
                                <p>Already have an account? </p>
                                <a class="nav-link click-scroll" href="user_login.jsp">Login</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                
                <div class="col-md-8 ms-sm-auto col-lg-9 p-0">
                    <section class=" d-flex justify-content-center align-items-center" id="section_1">

                            <div class="container mt-5">
                                <h3 class="pb-5">Create new account</h3>
                                <form action="UserRegisterServlet.do" method="post" class="row g-3 col-md-6" >
                                    <div class="mb-3">
                                        <label for="firstname" class="form-label">Firstname : </label>
                                        <input type="text" name="firstname" class="form-control" id="firstname" placeholder="Firstname">
                                      </div>
                                      <div class="mb-3">
                                        <label for="surname" class="form-label">Surname : </label>
                                        <input name="surname" type="text" class="form-control" id="surname" placeholder="Surname">
                                      </div>
                                      <div class="mb-3">
                                        <label for="email" class="form-label">Email : </label>
                                        <input name="email" type="email" class="form-control" id="email" required="" placeholder="Email">
                                      </div>
                                      <div class="mb-3">
                                        <label for="age" class="form-label">Age : </label>
                                        <input name="age" type="number" class="form-control" id="age" placeholder="Age">
                                      </div>

                                      <div class="mb-3">
                                        <label for="age" class="form-label">Gender : </label>
                                        <select name="gender" class="form-select" aria-label="" >
                                            <option selected>Select Gender</option>
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                          </select>
                                      </div>

                                      <div class="mb-3">
                                        <label for="password" class="form-label">Password : </label>
                                        <input name="password" type="password" class="form-control" id="password" placeholder="Password">
                                      </div>


                                      <div class="mb-1">
                                        <input type="submit" class="btn btn-primary" value="Register">
                                      </div>
                                </form>
                                
                            </div>





                            <div class="custom-block d-lg-flex flex-column justify-content-center align-items-center">
                                <img src="images/vintage-chair-barbershop.jpg" class="custom-block-image img-fluid" alt="">
                                <h4 ><strong class="text-white">Hurry Up! Get good haircut.</strong></h4>
                            </div>
                    </section>
            </div>

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/click-scroll.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
