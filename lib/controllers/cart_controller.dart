import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

import '../data/repository/cart_repo.dart';
import '../models/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;

  CartController({required this.cartRepo});

  Map<int, CartModel> _items = {};

  void addItem(ProductModel product, int quantity) {
    // print("length of the item is ${_items.length}");
    _items.putIfAbsent(product.id!, () {
      print("adding item to the cart id ${product.id} quantity ${quantity}");
      _items.forEach((key, value) {
        print("quantity is " + value.quantity.toString());
      });
      return CartModel(
        id: product.id!,
        name: product.name!,
        price: product.price!,
        img: product.img!,
        quantity: quantity,
        isExist: true,
        time: DateTime.now().toString(),
      );
    });
  }
}
