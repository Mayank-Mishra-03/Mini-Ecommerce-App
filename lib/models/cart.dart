import 'package:flutter/material.dart';
import 'package:third_flutter/models/shoe.dart';

class Cart extends ChangeNotifier {
  // user cart
  List<Shoe> userCart = [];

  // get list of shoes in user's cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to user's cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from user's cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  void clearUserCart() {
    userCart.clear();
    notifyListeners();
  }
}
