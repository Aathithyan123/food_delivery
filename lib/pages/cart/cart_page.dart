import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: Dimensions.height20 * 3,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconsSize24,
                  ),
                  SizedBox(
                    width: Dimensions.width20 * 5,
                  ),
                  AppIcon(
                    icon: Icons.home_outlined,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconsSize24,
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconsSize24,
                  ),
                ],
              )),
          Positioned(
            top: Dimensions.height20 * 5,
            left: Dimensions.width20,
            right: Dimensions.width20,
            bottom: 0,
            child: Container(
              color: Colors.red,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return Container(
                      height: Dimensions.height20 * 5,
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Container(
                            width: Dimensions.height20 * 5,
                            height: Dimensions.height20 * 5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/image/food9.png",
                                    )),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                color: Colors.white),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
