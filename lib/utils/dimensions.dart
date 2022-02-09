import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  //dynamic height padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = (height10 / 2) * 3;
  static double height20 = height10 * 2;
  static double height30 = height10 * 3;
  static double height45 = height30 + height15;

  //dynamic width padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = (height10 / 2) * 3;
  static double width20 = height10 * 2;
  static double width30 = height10 * 3;

  static double font20 = screenHeight / 42.2;

  //radius
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
  static double radius15 = radius30 / 2;

  //icon Size
  static double iconsSize24 = screenHeight / 35.17;

  //list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;
}
