<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="TayyabBakersandsweets.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .quantity-input {
  display: flex;
  align-items: center;
}

input {
  width: 80px;
  text-align: center;
}

button {
    
  border:none;
  margin: 0 5px;
  cursor: pointer;
}
        .product-item .incbtn {
            padding: 7px 10px;
            border-radius:0px;
            background: #ffffff;
        }

    </style>
</asp:Content>
			<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Header Start -->
    <div class="jumbotron jumbotron-fluid page-header" style="margin-bottom: 90px;">
        <div class="container text-center py-5">
            <h1 class="text-white display-3 mt-lg-5">Product</h1>
            <div class="d-inline-flex align-items-center text-white">
                <p class="m-0"><a class="text-white" href="">Home</a></p>
                <i class="fa fa-circle px-3"></i>
                <p class="m-0">Product</p>
            </div>
        </div>
    </div>
    <!-- Header End -->
    <!-- Products Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <h1 class="section-title position-relative text-center mb-5">Biscuits</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-1.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <asp:HiddenField ID="hiidenqty" runat="server" Value="1" />  
                <script>
                                    function updateHiddenQuantity(input) {
                                        var hiddenField = document.getElementById('<%= hiidenqty.ClientID %>');
                                        hiddenField.value = input.value;

                                        var allInputs = document.querySelectorAll('.form-control.input-number');
                                        for (var i = 0; i < allInputs.length; i++) {
                                            if (allInputs[i] !== input) {
                                                allInputs[i].value = 1;
                                            }
                                        }

                                        
                                    }
                                   
                                    function incrementQuantity(button) {
                                        var input = button.parentNode.parentNode.querySelector('input[name="quantity"]');
                                        var hiddenField = document.getElementById('<%= hiidenqty.ClientID %>');

                                        var currentValue = parseInt(input.value);
                                        if (!isNaN(currentValue) && currentValue < 100) {
                                            input.value = currentValue + 1;
                                            hiddenField.value = input.value;
                                        }
                                    }

                                    function decrementQuantity(button) {
                                        var input = button.parentNode.parentNode.querySelector('input[name="quantity"]');
                                        var currentValue = parseInt(input.value);
                                        if (!isNaN(currentValue) && currentValue > 1) {
                                            input.value = currentValue - 1;
                                        }
                                    }
                                    //function showPopup() {
                                    //    document.getElementById('qtypopup1').style.display = 'block';
                                    //    document.getElementById('overlay').style.display = 'block';
                                    //}
                                    //// Function to update the quantity and hide the popup and overlay
                                    //function updateQuantity() {
                                    //    var newQuantity = document.getElementById('quantity').value;
                                    //    document.getElementById('qty').value = newQuantity;
                                    //    hidePopup();
                                    //}
                                    //// Function to hide the popup and overlay
                                    //function hidePopup() {
                                    //    document.getElementById('popup').style.display = 'none';
                                    //    document.getElementById('overlay').style.display = 'none';
                                    //}

                                    //// Attach the showPopup function to the input field's onclick event
                                    //document.getElementById('qty').onclick = showPopup;
                                </script>
                <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-2.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-3.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-4.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-5.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-1.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-2.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-3.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-4.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-5.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                 <div class="col-lg-3 col-md-6 mb-4 pb-2">
                     <div class="product-item d-flex flex-column align-items-center bg-light text-center rounded py-3 px-3">
                           
                            <div class="position-relative  rounded-circle mt-n3 mb-4 p-3" style="width: 150px; height: 150px;">
                                <img class="rounded-circle w-100 h-100" src="img/product-1.jpg" style="object-fit: cover;">
                            </div>
                            <h6 class="font-weight-bold mb-2">Vanilla Ice Cream</h6>
                            
                                <h4 class="font-weight-bold mb-2">Rs. 500</h4>
                          <div class="input-group mt-2">
            <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="decrementQuantity(this)">
                   -
                </button>
            </span>
                                      <input type="number" id="qty" style="text-align:center;" name="quantity" class="form-control input-number" value="1" min="1" max="100" onkeyup="updateHiddenQuantity(this)" >
       <span class="input-group-btn">
                <button type="button" class="btn btn-default incbtn" style="color:black;font-size:20px;font-weight:bold;" onclick="incrementQuantity(this)">
              +
                </button>
            </span>
        </div>
                            <a href="" class="btn btn-sm btn-secondary">Add to cart</a>
                        </div>
                        </div>
                <div class="col-12 text-center">
                    <a href="" class="btn btn-primary py-3 px-5">Load More</a>
                </div>
            </div>
        </div>
    </div>
                <script>
            document.addEventListener('DOMContentLoaded', function () {
  // Get the quantity input and the increase/decrease buttons
  const quantityInput = document.getElementById('quantity');
  const increaseBtn = document.getElementById('increase');
  const decreaseBtn = document.getElementById('decrease');

  // Increase quantity
  increaseBtn.addEventListener('click', function () {
    quantityInput.value = parseInt(quantityInput.value) + 1;
  });

  // Decrease quantity
  decreaseBtn.addEventListener('click', function () {
    const currentValue = parseInt(quantityInput.value);
    if (currentValue > 1) {
      quantityInput.value = currentValue - 1;
    }
  });
});


                </script>
    <!-- Products End -->
</asp:Content>
   
