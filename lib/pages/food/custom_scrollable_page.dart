import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_apps/utils/colors.dart';
import 'package:food_apps/widgets/app_icon.dart';
import 'package:food_apps/widgets/big_text.dart';

import '../../utils/dimensions.dart';
import '../../widgets/expanded_widgets.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                padding: EdgeInsets.only(top: 5,bottom: 10),
                child: Center(child: BigText(size: 32,text: "Spicy Food",)),

                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                ),
              ),

            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(

                "assets/images/img_4.png",
                    width:double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 15,right: 15,),
              child: ExpandedTextWidget(
                  text: 'biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.'
                  'biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.'
                  'biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
                  ' traditionally cooked over an open fire in a '
                  'leather pot. It is combined in different ways'
                  ' with a variety of components to create a number'
                  ' of highly tasty and unique flavor combinations.'),
              // child: Text( style: TextStyle(fontSize: 35),'biryani is a spiced mix of meat and rice,'
              //     ' traditionally cooked over an open fire in a '
              //     'leather pot. It is combined in different ways'
              //     ' with a variety of components to create a number'
              //     ' of highly tasty and unique flavor combinations.'
              //     'biryani is a spiced mix of meat and rice,'
              //     ' traditionally cooked over an open fire in a '
              //     'leather pot. It is combined in different ways'
              //     ' with a variety of components to create a number'
              //     ' of highly tasty and unique flavor combinations.''biryani is a spiced mix of meat and rice,'
              //     ' traditionally cooked over an open fire in a '
              //     'leather pot. It is combined in different ways'
              //     ' with a variety of components to create a number'
              //     ' of highly tasty and unique flavor combinations.'),
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: 60,
            right: 60,
            bottom: 20,
            top: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize:30 ,
                  size:45,
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgraoundColor: AppColors.mainColor,),
                BigText(text: "\₹180 X "+"0",color: AppColors.mainBlackColor,size: 32,),
                AppIcon( iconSize:30 ,size: 45,icon: Icons.add,iconColor: Colors.white,backgraoundColor: AppColors.mainColor,)
              ],
            ),
          ),
          Container(
            height: Dimensions.foodNavigationHeight-10,
            padding: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackGroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),

                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                    size: 26 ,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15,bottom: 15,left: 20,right: 20),
                  height: Dimensions.foodNavigationHeight-70,
                  width: Dimensions.foodNavigationWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.mainColor,
                  ),
                  child: Center(child: BigText(text: "₹189 |Add to cart",color: Colors.white,)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
