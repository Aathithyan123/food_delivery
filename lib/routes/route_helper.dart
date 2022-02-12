import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => MainFoodPage()),
  ];
}
