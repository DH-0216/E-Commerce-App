import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoe foe sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoe.',
      imagePath: 'lib/images/download (1).jpeg',
    ),
    Shoe(
      name: 'Nike InfinityRN 4',
      price: '160',
      description: 'Mens Road Running Shoes',
      imagePath: 'lib/images/infinityrn-4-mens-road-running-shoes-hlqHFQ.png',
    ),
    Shoe(
      name: 'Air Jordan 1 Low',
      price: '115',
      description: 'Mens Shoes',
      imagePath: 'lib/images/air-jordan-1-low-mens-shoes-0LXhbn.jpeg',
    ),
    Shoe(
      name: 'Sabrina 2 "Court Vision"',
      price: '130',
      description: 'Basketball Shoes',
      imagePath:
          'lib/images/sabrina-2-court-vision-basketball-shoes-NM2JwV.jpeg',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
