<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 04/08/2022
  Time: 8:59 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama Resort</title>
    <link rel="stylesheet" href="/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/121b5e5230.js" crossorigin="anonymous"></script>
</head>
<body style="font-family: Bad Script,serif ;background: #E0FFFF">
<div class="container-fluid">
    <%@include file="view/facility/nav.jsp" %>
    <div class="col-lg-10">
        <div class="row">
            <div class="col-lg-12 pt-4 pb-4 d-flex justify-content-center">
                <video autoplay loop muted width="98%" class="shadow" style="border-radius: 30px">
                    <source src="https://assets.mixkit.co/videos/preview/mixkit-sea-landscape-from-a-porch-1051-large.mp4">
                </video>
            </div>
            <div class="col-lg-12 m-0">
                <div class="row">
                    <div class="d-flex justify-content-center align-items-center mt-5 mb-4">
                        <h2>SPA & FITNESS</h2>
                    </div>
                </div>
                <div class="row align-items-center p-2">
                    <div class="col-lg-4">
                        <div id="carouselExampleIndicators" class="carousel slide shadow" style="border-radius: 30px"
                             data-bs-interval="4000"
                             data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                        class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                        aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                        aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner" style="border-radius: 30px">
                                <div class="carousel-item active">
                                    <img src="https://hhwt-images-upload.s3.ap-southeast-1.amazonaws.com/1600426515085_1561119799.jpg"
                                         class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="https://cdn.shopify.com/s/files/1/0339/1068/5740/products/2736974d1586eb7c0149f6230df4b352_87080f29-387c-4003-8256-ed4a66f82062_2000x.jpg?v=1616538882"
                                         class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="https://i.pinimg.com/originals/8a/95/83/8a9583bcc2a78ae8d7e4671292669384.jpg"
                                         class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleIndicators"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <span class="material-symbols-outlined col-lg-1">trip_origin</span>
                            <span class="col-lg-8"><h5>Relaxation Package</h5></span>
                        </div>
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <span class="material-symbols-outlined col-lg-1">trip_origin</span>
                            <span class="col-lg-8"><h5>Amorous Couple's Delight Package</h5></span>
                        </div>
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <span class="material-symbols-outlined col-lg-1">trip_origin</span>
                            <span class="col-lg-8"><h5>Anti-stress Statesman Package</h5></span>
                        </div>
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <span class="material-symbols-outlined col-lg-1">trip_origin</span>
                            <span class="col-lg-8"><h5>Rejuvenation Package (for ladies only)</h5></span>
                        </div>
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <span class="material-symbols-outlined col-lg-1">trip_origin</span>
                            <span class="col-lg-8"><h5>Signature Furama Packages (3 days)</h5></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 m-0">
                <div class="row">
                    <div class="d-flex justify-content-center align-items-center mt-5 mb-4">
                        <div class="d-flex "><h2>ROOMS & SUITES</h2></div>
                    </div>
                </div>
                <div class="row text-center mt-5 mb-5 p-2">
                    <div class=" col-lg-4">
                        <div class="card shadow" style="width: 18rem;">
                            <img src="https://tbb-prod-apac.imgix.net/attachments/room_type_photos/images/723978/723978/FV_Balcony_Three_Bedroom_Villa.jpg?auto=format,compress&fit=crop&crop=entropy&w=1366&q=75"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text">Ocean Studio Suite</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card shadow" style="width: 18rem;">
                            <img src="https://tbb-prod-apac.imgix.net/attachments/room_type_photos/images/724017/724017/Bedroom.jpg?auto=format,compress&fit=crop&crop=entropy&w=1366&q=75"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text">02 Bedroom Pool Villa</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card shadow" style="width: 18rem;">
                            <img src="https://tbb-prod-apac.imgix.net/attachments/room_type_photos/images/722812/722812/64251912.jpg?auto=format,compress&fit=crop&crop=entropy&w=1366&q=75"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="card-text">One Bedroom Presidential Suite</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-10 border-top pt-3">
            <div class="row ">
                <div class="col-lg-1"></div>
                <div class="col-lg-2"><a href="#">News</a></div>
                <div class="col-lg-2"><a href="#">Rack Rate</a></div>
                <div class="col-lg-2"><a href="#">Lifestyle Blog</a></div>
                <div class="col-lg-2"><a href="#">Work with us</a></div>
                <div class="col-lg-2"><a href="#">Contact us</a></div>
                <div class="col-lg-1"></div>
            </div>
            <div>
                <hr>
            </div>
            <div class="row">
                <div class="col-lg-8 p-3 fw-bold" style="text-align: justify">
                    <p>
                        Overlooking the long stretch of wide white sand on Danang Beach, Furama Resort Danang is a
                        gateway to three World Heritage Sites of Hoi An (20 minutes), My Son (90 minutes) and Hue (2
                        hours). The 196 rooms and suites plus 70 two to four bedroom pool villas feature tasteful décor,
                        designed with traditional Vietnamese style and a touch of French colonial architecture and
                        guarantee the Vietnam’s the most prestigious resort -counting royalty, presidents, movie stars
                        and international business leaders among its celebrity guests.
                    </p>
                </div>
                <div class="col-lg-4 align-self-center" style="font-size: 30px">
                    <div class="row text-center">
                        <div class="col-lg-2"></div>
                        <i class="fa-brands fa-facebook col-lg-2"></i>
                        <i class="fa-brands fa-instagram col-lg-2"></i>
                        <i class="fa-brands fa-youtube col-lg-2"></i>
                        <i class="fa-brands fa-twitter col-lg-2"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
