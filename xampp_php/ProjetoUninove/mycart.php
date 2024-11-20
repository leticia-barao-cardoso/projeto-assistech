<?php

require 'Product.php';
require 'Cart.php';

session_start();

$cart = new Cart;
$productsInCart = $cart->getCart();

var_dump($productsInCart);

if (isset($_GET['remove'])) {
  $id = strip_tags($_GET['remove']);
  $cart->remove($id);
  header('Location: mycart.php');
}

if (isset($_GET['update'])) {
  $id = strip_tags($_GET['update']);
  $qty = strip_tags($_GET['qty']);
  $cart->updateQty($id, $qty);
  header('Location: mycart.php');
}

?>