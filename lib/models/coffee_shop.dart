import 'package:coffeeapp/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list

  final List<Coffee> _shop = [
    Coffee(name: 'Long Black', price: '4.10', imagePath: 'lib/images/1.png'),
    Coffee(name: 'Latte', price: '4.20', imagePath: 'lib/images/2.png'),
    Coffee(name: 'espresso', price: '3.50', imagePath: 'lib/images/3.png'),
    Coffee(name: 'Iced Coffee', price: '3.10', imagePath: 'lib/images/4.png'),
  ];

  //user cart

  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> coffeeShop() => _shop;

  //get user cart

  List<Coffee> userCart() => _userCart;
  //add item to cart

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemfromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
