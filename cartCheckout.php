<?php include('header.php'); ?>

        <!-- Start Page Banner -->
        <div class="page-banner-area item-bg3">
            <div class="d-table">
                <div class="d-table-cell">
                    <div class="container">
                        <div class="page-banner-content">
                            <h2>Checkout</h2>
                            <ul>
                                <li>
                                    <a href="index.php">Home</a>
                                </li>
                                <li>Checkout</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <!-- Start Checkout Area -->
		<section class="checkout-area ptb-100">
            <div class="container">
                <form>
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="billing-details">
                                <h3 class="title">Billing Details</h3>
                                <div class="row">
                                    


                                <?php
                        // for getting the images from the product images table 
                        $sql = "SELECT * FROM address where user_id = {$_SESSION['user_id']} and is_deleted=0";
                        $result = mysqli_query($con, $sql);

                        if (mysqli_num_rows($result) > 0) {
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo '
                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group">
                                    <label class="container_radio d-flex" style="cursor: pointer;">
                                        <div class="d-flex">
                                            <input type="radio" name="address-id" value="'.$row['address_id'].'">
                                        </div>
                                        
                                        <div class="col-lg-12 col-md-12">
                                            <div class="d-flex justify-content-between">
                                                    <p>
                                                        ' . $row['name'] . '
                                                    </p>
                                                    <p>
                                                        ' . $row['mobile'] . '
                                                    </p>
                                                    <p class="d-flex align-items-center py-2 px-4"';

                                                                if ($row['address_type'] == 'home') {
                                                                    echo ' style="background: #ff7804; border-radius: 3px; color: #fff;"';
                                                                } else {
                                                                    echo ' style="background: #333333; padding: 2px 10px; border-radius: 3px; color: #fff;"';
                                                                }

                                                                echo '
                                            >
                                                        ' . $row['address_type'] . '
                                                    </p>
                                                </div>

                                                <div class="d-flex justify-content-start">
                                                    <p>
                                                        ' . $row['address'] . ', &nbsp;
                                                    </p>
                                                    <p>
                                                        ' . $row['state'] . ', &nbsp;
                                                    </p>
                                                    <p>
                                                        ' . $row['pin_code'] . '
                                                    </p>
                                                </div>
                                        </div>

                                        </label>
                                    </div>
                                </div>';
                            }
                            echo '
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <button class="default-btn" id="add-new-address-btn" style="cursor: pointer;  border: none;">Add New Address</button>
                                </div>
                            </div>

                            <div class="row address-form-container py-2">



                            </div>  
                            ';
                        }
                        else
                        {
                            echo '

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Full Name <span class="required">*</span></label>
                                            <input type="text" class="form-control" placeholder="Name" name="customer-name" id="customer-name">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Mobile <span class="required">*</span></label>
                                            <input type="text" class="form-control" placeholder="Mobile" name="customer-mobile-number" id="customer-mobile-number" maxlength="10" minlength="10">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Pin Code <span class="required">*</span></label>
                                            <input type="text" class="form-control" placeholder="Pin Code"  name="customer-pincode" id="customer-pincode" minlength="6" maxlength="6">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Locality <span class="required">*</span></label>
                                            <input type="text" class="form-control" placeholder="Locality"  name="customer-locality" id="customer-locality">
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <label>Full Address <span class="required">*</span></label>
                                            <input type="text" class="form-control" placeholder="Full Address"  name="customer-full-address" id="customer-full-address">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>City <span class="required">*</span></label>
                                            <input type="text" class="form-control" placeholder="City/District" name="customer-city" id="customer-city">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>State <span class="required">*</span></label>
                                            <div class="select-box">
                                                <select class="form-control" name="customer-state" id="customer-state">
                                                    <option value="">Select State</option>
                                                    <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                                    <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                    <option value="Assam">Assam</option>
                                                    <option value="Bihar">Bihar</option>
                                                    <option value="Chandigarh">Chandigarh</option>
                                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                                    <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                                    <option value="Daman and Diu">Daman and Diu</option>
                                                    <option value="Delhi">Delhi</option>
                                                    <option value="Goa">Goa</option>
                                                    <option value="Gujarat">Gujarat</option>
                                                    <option value="Haryana">Haryana</option>
                                                    <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                    <option value="Jharkhand">Jharkhand</option>
                                                    <option value="Karnataka">Karnataka</option>
                                                    <option value="Kerala">Kerala</option>
                                                    <option value="Lakshadweep">Lakshadweep</option>
                                                    <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                    <option value="Maharashtra">Maharashtra</option>
                                                    <option value="Manipur">Manipur</option>
                                                    <option value="Meghalaya">Meghalaya</option>
                                                    <option value="Mizoram">Mizoram</option>
                                                    <option value="Nagaland">Nagaland</option>
                                                    <option value="Odisha">Odisha</option>
                                                    <option value="Puducherry">Puducherry</option>
                                                    <option value="Punjab">Punjab</option>
                                                    <option value="Rajasthan">Rajasthan</option>
                                                    <option value="Sikkim">Sikkim</option>
                                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                                    <option value="Telangana">Telangana</option>
                                                    <option value="Tripura">Tripura</option>
                                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                    <option value="Uttarakhand">Uttarakhand</option>
                                                    <option value="West Bengal">West Bengal</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Address Type <span class="required">*</span></label>
                                            <div class="select-box">
                                                <select class="form-control" name="customer-address-type" id="customer-address-type">
                                                    <option value="">Adress Type</option>
                                                    <option value="home">Home</option>
                                                    <option value="office">Office</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group d-flex justify-content-end">
                                            <button class="default-btn" id="submit-address-form-btn" style="cursor: pointer;  border: none;">Save</button>
                                        </div>
                                    </div>
                                    
                            ';
                        }


                        ?>

                                    <!-- <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <input type="radio" id="cash-on-delivery" name="radio-group">
                                            <label for="cash-on-delivery">Cash on Delivery</label>
                                        </div>
                                    </div> -->

                                    <!-- <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
										    <label>Country <span class="required">*</span></label>
                                            <div class="select-box">
                                                <select class="form-control">
                                                    <option value="5">United Arab Emirates</option>
                                                    <option value="1">China</option>
                                                    <option value="2">United Kingdom</option>
                                                    <option value="0">Germany</option>
                                                    <option value="3">France</option>
                                                    <option value="4">Japan</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>First Name <span class="required">*</span></label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Last Name <span class="required">*</span></label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <label>Company Name</label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-6">
                                        <div class="form-group">
                                            <label>Address <span class="required">*</span></label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-6">
                                        <div class="form-group">
                                            <label>Town / City <span class="required">*</span></label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>State / County <span class="required">*</span></label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Postcode / Zip <span class="required">*</span></label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Email Address<span class="required">*</span></label>
                                            <input type="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <label>Phone <span class="required">*</span></label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="create-an-account">
                                            <label class="form-check-label" for="create-an-account">Create an account?</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="ship-different-address">
                                            <label class="form-check-label" for="ship-different-address">Ship to a different address?</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <textarea name="notes" id="notes" cols="30" rows="5" placeholder="Order Notes" class="form-control"></textarea>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-md-12">
                            <div class="order-details">
                                <h3 class="title">Your Order</h3>
                                <div class="order-table table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Product Name</th>
                                                <th scope="col">Unit Price</th>
                                                <th scope="col">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php


                                            $total_price=0;

                                            $sql1 = "select * from cart where user_id={$_SESSION['user_id']} and is_deleted=0";
                                            $result1 = mysqli_query($con, $sql1);

                                            if (mysqli_num_rows($result1) > 0) {
                                                while($row = mysqli_fetch_assoc($result1))
                                                {
                                                    $total_price += $row['total_price'];
                                                    $sql = "select * from products where product_id={$row['product_id']} and is_deleted=0";
                                                    $result = mysqli_query($con, $sql);
                                                    if (mysqli_num_rows($result1) > 0) {
                                                        $row_for_product=mysqli_fetch_assoc($result); ?>

                                                        <tr>
                                                            <td class="product-name d-flex justify-content-between">
                                                                <a href="shop-details.php<?=$row_for_product['product_id']?>"><?= $row_for_product['product_name'] ?></a>
                                                                <span><?= $row['quantity'] ?>x</span>
                                                            </td>
                                                            <td class="product-total">
                                                                <span class="subtotal-amount">$<?= number_format($row_for_product['product_price']) ?></span>
                                                            </td>
                                                            <td class="product-total">
                                                                <span class="subtotal-amount">$<?= number_format($row['total_price']) ?></span>
                                                            </td>
                                                        </tr>
                                                        <?php
                                                    }
                                                }

                                            }

                                        ?>
                                            
                                        </tbody>
                                    </table><br>

                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <td class="total-price">
                                                    <span><b>Order Total</b></span>
                                                </td>
                                                <td class="product-subtotal">
                                                    <span class="subtotal-amount">$ <?= number_format($total_price) ?></span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="payment-box">
                                    <div class="payment-method">
                                        
                                        <p>
                                            <input type="radio" id="paypal" name="radio-group">
                                            <label for="paypal">Online Payment</label>
                                        </p>

                                        <p>
                                            <input type="radio" id="cash-on-delivery" name="radio-group">
                                            <label for="cash-on-delivery">Cash on Delivery</label>
                                        </p>
                                    </div>
                                    <a href="#" class="default-btn" id="place-order-btn">
                                        Place Order
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
		<!-- End Checkout Area -->
        
        <?php include('footer.php'); ?>
