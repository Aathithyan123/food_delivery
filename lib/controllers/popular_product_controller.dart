import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList =>
      _popularProductList; // for access the _popularProductList anywhere in this app

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("got product");
      // most of the servers success status code 200
      _popularProductList = [];

      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); //if the data should updated the UI also should update like setstate
    } else {
      print("failed product received ${response.status}");
    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity++;
      print("cart value $_quantity");
    } else {
      _quantity--;
    }
  }
}
