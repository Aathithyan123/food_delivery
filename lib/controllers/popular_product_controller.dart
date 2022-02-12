import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList =>
      _popularProductList; // for access the _popularProductList anywhere in this app

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      // most of the servers success status code 200
      _popularProductList = [];
      // _popularProductList.addAll()
      update(); //if the data should updated the UI also should update like setstate
    } else {}
  }
}
