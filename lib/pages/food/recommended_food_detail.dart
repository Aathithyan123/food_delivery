import 'package:flutter/material.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.initial);
                    },
                    child: AppIcon(icon: Icons.clear)),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  text: "Chinese Side",
                  size: Dimensions.font26,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                  text:
                      "How to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. If you are looking to make biryani in your lunch and dinner then watch step by step recipe direction to prepare biryani. Here I am sharing an easy and simple method that will help you to make perfect biryani to share with your family and friends so if you are a beginner or bachelor looking to make tasty biryani then follow the recipe instruction and watch recipe video to note each and every step.How to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. If you are looking to make biryani in your lunch and dinner then watch step by step recipe direction to prepare biryani. Here I am sharing an easy and simple method that will help you to make perfect biryani to share with your family and friends so if you are a beginner or bachelor looking to make tasty biryani then follow the recipe instruction and watch recipe video to note each and eHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. If you are looking to make biryani in your lunch and dinner then watch step by step recipe direction to prepare biryani. Here I am sharing an easy and simple method that will help you to make perfect biryani to share with your family and friends so if you are a beginner or bachelor looking to make tasty biryani then follow the recipe instruction and watch recipe video to note each and every step.How to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, Biryani is one of the most popular recipe in India, Pakistan and Bangladesh. IfHow to Make Biryani at Home Step by Step | Hinz Cooking - In rice recipes, every step.very step.",
                ),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          )),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconsSize24,
                ),
                BigText(
                  text: " \$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconsSize24,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.height20,
                      horizontal: Dimensions.width20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.all(Dimensions.radius20),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
