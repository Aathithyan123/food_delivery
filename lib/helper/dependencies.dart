import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api clients
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  /*
  don't think about how find the apiClient using Get.find() the initialized apiClient in above code can set it
  (the PopularProductRepo constructor parameter name and the api client name should be same)
  */
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //same explanation repos
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
