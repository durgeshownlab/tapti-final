<?php

include('config.php');
if(isset($_POST['stripeToken']))
{
    \Stripe\Stripe::setVerifySslCerts(false);
    $token=$_POST['stripeToken'];

    $data=\Stripe\Charge::create(array(
        "amount"=>500,
        "currency"=>"usd",
        "description"=>"Programming ",
        "source"=>$token,
    ));

    echo "<pre>";

    print_r($_POST['product-id'].'<br>');
    print_r($_POST['address-id'].'<br>');
    print_r($data['id'].'<br>');

    print_r($data);
}


?>