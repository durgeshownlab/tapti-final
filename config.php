<?php

require('stripe-php-master/init.php');

$publishable_key="pk_test_51NyCESGVLFOJBfA2ETezzRmmVsT7YfCHUi0apmX8dK99VnR3r9EPLUkeYK0ZhoStNnpovUHORRWEty5sbsayomKN00bSz1JrEK";

$secret_key="sk_test_51NyCESGVLFOJBfA2fZyEoB7wRgSUcjy0U3R0qBcDMvA3E8mm6Ndeaf4PyGIFJoWTHJD9pjAyOJmDkGkfj4So2kAu00wvnSUOv8";



// $stripe = new \Stripe\StripeClient("sk_test_51NyCESGVLFOJBfA2fZyEoB7wRgSUcjy0U3R0qBcDMvA3E8mm6Ndeaf4PyGIFJoWTHJD9pjAyOJmDkGkfj4So2kAu00wvnSUOv8");

\Stripe\Stripe::setApiKey($secret_key);


?>