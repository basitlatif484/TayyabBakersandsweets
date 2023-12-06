<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="TayyabBakersandsweets.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
    <style>
        .image-caption {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* Add a semi-transparent background */
    color: #fff; /* Text color */
    padding: 10px; /* Padding around the text */
    text-align: center;
    font-size: 18px;
}.portfolio-item::after {
    position: unset;
    content: "";
    top: 30px;
    right: 30px;
    bottom: 30px;
    left: 30px;
    border: 2px solid #FFFFFF;
    z-index: 1;
}      
    </style>
</asp:Content>
			<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                 <style>
                     
        .image-caption {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* Add a semi-transparent background */
    color: #fff; /* Text color */
    padding: 10px; /* Padding around the text */
    text-align: center;
    font-size: 18px;
}.portfolio-item::after {
    position: unset;
    content: "";
    top: 30px;
    right: 30px;
    bottom: 30px;
    left: 30px;
    border: 2px solid #FFFFFF;
    z-index: 1;
}     .img-fluid {
    max-width: 100%;
    height: 260px;
} 
    </style>
    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 pb-5">
        <div id="header-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100"  src="images/slider1.jpg"  alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase mb-md-3">Traditional & Delicious</h4>
                            <h1 class="display-3 text-white mb-md-4"> Bakery Delights Since 2000</h1>
                            <a href="" class="btn btn-primary py-md-3 px-md-5 mt-2">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/carousel-2.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase mb-md-3">Traditional & Delicious</h4>
                            <h1 class="display-3 text-white mb-md-4">Made  Our Own Organic Products </h1>
                            <a href="" class="btn btn-primary py-md-3 px-md-5 mt-2">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                <div class="btn btn-secondary px-0" style="width: 45px; height: 45px;">
                    <span class="carousel-control-prev-icon mb-n1"></span>
                </div>
            </a>
            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                <div class="btn btn-secondary px-0" style="width: 45px; height: 45px;">
                    <span class="carousel-control-next-icon mb-n1"></span>
                </div>
            </a>
        </div>
    </div>
    <!-- Carousel End -->
    <!-- Portfolio Start -->
    <div class="container my-5 py-5 px-0">
        <div class="row justify-content-center m-0">
            <div class="col-lg-5">
                <h1 class="section-title position-relative text-center mb-5">Categories</h1>
            </div>
        </div>
        <div class="row m-0 portfolio-container">
            <div class="col-lg-4 mt-md-0 mt-2 col-md-6 p-md-1 p-1 portfolio-item">
                <div class="card p-md-2 p-0">
                      <div class="position-relative overflow-hidden">
                          <img class="img-fluid w-100" src="images/biscuits%20(2).jpg"  alt="" />                 
                  <%--  <a class="portfolio-btn" href="img/portfolio-1.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                     <span class="image-caption">BISCUITS</span>
                </div>  
            </div>
            <div class="col-lg-4 mt-md-0 mt-2 col-md-6 p-md-2 p-1 portfolio-item">
                  <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="images/rusk.jpg" alt="">
                   <%-- <a class="portfolio-btn" href="img/portfolio-2.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                         <span class="image-caption">RUSK</span>
                     </div>
            </div>
            <div class="col-lg-4 mt-md-0  col-md-6 p-md-2 p-1 portfolio-item">
                  <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img src="images/DRYCAKES.jpg"  class="img-fluid w-100" />
                  
                  <%--  <a class="portfolio-btn" href="img/portfolio-3.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                         <span class="image-caption">DRY CAKE</span>
                      </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-md-0  p-md-2 p-1 portfolio-item">
                <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="images/puff.jpg" alt="">
                  <%--  <a class="portfolio-btn" href="img/portfolio-4.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                       <span class="image-caption">PUFF</span>
                    </div>
            </div>
           <div class="col-lg-4 col-md-6 mt-md-0 p-md-2 p-1 portfolio-item">
                <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="images/nimko.jpg" alt="">
                   <%-- <a class="portfolio-btn" href="img/portfolio-5.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                       <span class="image-caption">NIMKO</span>
                    </div>
            </div>
           <div class="col-lg-4 col-md-6 mt-md-0 p-md-2 p-1 portfolio-item">
                <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="images/NOUGUTS.jpg" alt="">
                   <%-- <a class="portfolio-btn" href="img/portfolio-6.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                       <span class="image-caption">NOUGATS</span>
                    </div>
            </div>
             <div class="col-lg-4 mt-md-0 mt-2 col-md-6 p-md-1 p-1 portfolio-item">
                <div class="card p-md-2 p-0">
                      <div class="position-relative overflow-hidden">
                          <img class="img-fluid w-100" src="images/biscuits%20(2).jpg"  alt="" />
                  
                  <%--  <a class="portfolio-btn" href="img/portfolio-1.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                     <span class="image-caption">BISCUITS</span>
                </div>  
            </div>
            <div class="col-lg-4 mt-md-0 mt-2 col-md-6 p-md-2 p-1 portfolio-item">
                  <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="images/rusk.jpg" alt="">
                   <%-- <a class="portfolio-btn" href="img/portfolio-2.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                         <span class="image-caption">RUSK</span>
                     </div>
            </div>
            <div class="col-lg-4 mt-md-0  col-md-6 p-md-2 p-1 portfolio-item">
                  <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img src="images/DRYCAKES.jpg"  class="img-fluid w-100" />                 
                  <%--  <a class="portfolio-btn" href="img/portfolio-3.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                         <span class="image-caption">DRY CAKE</span>
                      </div>
            </div>
            <div class="col-lg-4 col-md-6 mt-md-0  p-md-2 p-1 portfolio-item">
                <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="images/puff.jpg" alt="">
                  <%--  <a class="portfolio-btn" href="img/portfolio-4.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                       <span class="image-caption">PUFF</span>
                    </div>
            </div>
           <div class="col-lg-4 col-md-6 mt-md-0 p-md-2 p-1 portfolio-item">
                <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="images/nimko.jpg" alt="">
                   <%-- <a class="portfolio-btn" href="img/portfolio-5.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                       <span class="image-caption">NIMKO</span>
                    </div>
            </div>
           <div class="col-lg-4 col-md-6 mt-md-0 p-md-2 p-1 portfolio-item">
                <div class="card p-md-2 p-0">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="images/NOUGUTS.jpg" alt="">
                   <%-- <a class="portfolio-btn" href="img/portfolio-6.jpg" data-lightbox="portfolio">
                        <i class="fa fa-plus text-primary" style="font-size: 60px;"></i>
                    </a>--%>
                </div>
                       <span class="image-caption">NOUGATS</span>
                    </div>
            </div>
        </div>
    </div>
    <!-- Portfolio End -->
    <!-- Products Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6">
                    <h1 class="section-title position-relative mb-5">Best Prices We Offer For Ice Cream Lovers</h1>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0 pb-5 pb-lg-0"></div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="owl-carousel product-carousel">
                        <div class="product-item d-flex flex-column align-items-center text-center bg-light rounded py-5 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-1.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                      <div class="product-item d-flex flex-column align-items-center text-center bg-light rounded py-5 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-2.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                     
                       <div class="product-item d-flex flex-column align-items-center text-center bg-light rounded py-5 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-3.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                     
                       <div class="product-item d-flex flex-column align-items-center text-center bg-light rounded py-5 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-4.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                      <div class="product-item d-flex flex-column align-items-center text-center bg-light rounded py-5 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-5.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                     
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Products End -->
    <!-- Team Start -->
   
    <!-- Testimonial End --> 
</asp:Content>

   