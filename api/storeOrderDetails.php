<?php

session_start();
include("../config/config.php");

//Import PHPMailer classes into the global namespace
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


$address_id= $_POST['address_id'];
$product_id= $_POST['product_id'];
$user_id=$_SESSION['user_id'];

$en_product_id=base64_encode($product_id);


$transaction_id=$_POST['transaction_id'];
$custom_order_id= time().'' . bin2hex(random_bytes(4));


$sql="select cart.quantity as quantity, cart.total_price as total_price, products.product_price as price from cart join products on cart.product_id=products.product_id where cart.product_id={$product_id} and cart.user_id={$_SESSION['user_id']} and cart.is_deleted=0 and products.is_deleted=0";
$result=mysqli_query($con, $sql);
if(mysqli_num_rows($result)>0)
{
    $row=mysqli_fetch_assoc($result);

    $quantity=$row['quantity'];
    $price_single_unit=$row['price'];
    $total_price=$row['total_price'];
}
// echo '' . $_POST['shopping_order_id'] . '......' . $_POST['user_address_id'] . '......' . $_POST['product_id'];
// echo '' . $row['quantity'] . '......' . $row['total_price'] . '......' . $row['price'];

$payment_method='online';
$payment_status='success';
$delivery_status='order placed';

$sql="select * from orders where transaction_id='{$transaction_id}' and is_deleted=0";
$result=mysqli_query($con, $sql);
    

if(mysqli_num_rows($result)<=0)
{
    // code for order  event start from the order placed
    date_default_timezone_set("Asia/kolkata");

    $order_event_data = [
        [
            'event_name' => 'order placed',
            'Date' => date('d-m-Y'),
            'Time' => date('H:i:s')
        ]
    ];

    $json_order_event_data = json_encode($order_event_data);

    $sql="INSERT INTO orders (order_id, user_id, product_id, address_id, transaction_id, quantity, price_single_unit, total_price, payment_method, payment_status, delivery_status, order_event) VALUES ('{$custom_order_id}', {$user_id}, {$product_id}, {$address_id}, '{$transaction_id}', {$quantity}, {$price_single_unit}, {$total_price}, '{$payment_method}', '{$payment_status}', '{$delivery_status}', '{$json_order_event_data}')";

    $result=mysqli_query($con, $sql);
    if($result)
    {
        $sql="select name, email from users where user_id={$user_id} and is_deleted=0";
        $result=mysqli_query($con, $sql);
        if(mysqli_num_rows($result)==1)
        {
            $row=mysqli_fetch_assoc($result);

            $sql_for_product="select * from products where product_id={$product_id} and is_deleted=0";
            $result_for_product=mysqli_query($con, $sql_for_product);

            if(mysqli_num_rows($result_for_product)==1)
            {
                $row_for_product=mysqli_fetch_assoc($result_for_product);
            }

            $to=$row['email'];
            $subject="order has been successfully placed";
            $body="<div style=\"margin:0px auto; width:100%; background-color:#f3f2f0; padding:0px; padding-top:8px; padding-bottom: 8px;\">
                    <table valign=\"top\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"95%\" align=\"center\" style=\"background-color:#fff; padding: 10px 5px\">
                        <tr><td>Hii, <b style=\"text-transform: capitalize;\">{$row['name']}</b></td></tr>
                        <tr><td>
                            <center> 
                                <img src=\"https://freepngimg.com/save/18343-success-png-image/1200x1200\" style=\"width: 100px; height: auto;\">
                                <h1>Your order has been successfully placed</h1>
                                <img src=\"../{$row_for_product['product_image']}\" style=\"width: 150px; height: auto;\"><br/><br/>
                                <a href=\"127.0.0.1/tapti-final/php/productPage.php?product-id={$en_product_id}\" style=\"text-decoration: none; color: blue; font-size: 1.2rem; text-transform: capitalize;\">{$row_for_product['product_name']}</a><br/>
                                Quantity:  {$quantity}<br/>
                                Price: <b> ₹</b>".number_format($row_for_product['product_price']*$quantity)."<br/><br/>
                            </center>
                        </td>
                        </tr>

                        <tr>
                            <td><center>Order ID: {$custom_order_id}</center></td>
                        </tr>
                        <tr>
                            <td><center>Payment ID: {$transaction_id}</center><br/><br/></td>
                        </tr>
                        <tr><td><center>
                        <a href=\"127.0.0.1/e-commerce/\" style=\"padding: 5px 10px; border: none; background-color: green; border-radius: 5px; text-decoration: none; color: #fff;\">Visit Our Website</a><br/><br/>
                        Thank you for shoping
                        </center>
                        </td>
                        </tr>
                    </table>
                    </div>";

            //Import PHPMailer classes into the global namespace
            //These must be at the top of your script, not inside a function
        
            require 'PHPMailer/Exception.php';
            require 'PHPMailer/PHPMailer.php';
            require 'PHPMailer/SMTP.php';

            //Create an instance; passing `true` enables exceptions
            $mail = new PHPMailer(true);

            try {
                //Server settings                 //Enable verbose debug output
                $mail->isSMTP();                                            //Send using SMTP
                $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
                $mail->Username   = 'hamarfreefire2021@gmail.com';                     //SMTP username
                $mail->Password   = 'jlatawobrxvhdjgi';                               //SMTP password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
                $mail->Port       = 465;                                    //TCP port to conect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

                //Recipients
                $mail->setFrom('hamarfreefire2021@gmail.com', 'Tapti Store');
                $mail->addAddress($to, $row['name']);     //Add a recipient


                //Content
                $mail->isHTML(true);                                  //Set email format to HTML
                $mail->Subject = $subject;
                $mail->Body    = $body;

                $mail->send();
                // echo "<script>console.log('Email successfully sent to {$to}')</script>";
            } 
            catch (Exception $e){
                // echo "<script>console.log('Message could not be sent. Mailer Error: {$mail->ErrorInfo}');";
            }
        }

        $response=[
            'status'    =>  1,
            'order_id'      =>  $custom_order_id
        ];
        echo json_encode($response);
    }
    else
    {
        $response=[
            'status'    =>  0
        ];
        echo json_encode($response);
    }
}

?>