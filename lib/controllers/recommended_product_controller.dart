import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList =>
      _recommendedProductList; // for access the _popularProductList anywhere in this app

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print("got product");
      // most of the servers success status code 200
      _recommendedProductList = [];

      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); //if the data should updated the UI also should update like setstate
    } else {}
  }
}
