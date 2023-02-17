import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_apps/utils/dimensions.dart';
import 'package:food_apps/widgets/app_icon.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expanded_widgets.dart';
import '../../widgets/icon_and_text.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
            width: double.maxFinite,
                height: Dimensions.foodDetailsImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/img_3.png'
                    ),
                  ),
                ),
          ),
          ),
          Positioned(
            top: 55,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.foodDetailsImgSize-30,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: 'Biriyani',size: 34,),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star,size: 20,color: AppColors.mainColor,)),
                        ),
                        SizedBox(width: 12,),
                        SmallText(text: '4.5',size: 16,),
                        SizedBox(width: 12,),
                        SmallText(text: '1379',size: 16,),
                        SizedBox(width: 4,),
                        SmallText(text: 'comments',size: 16,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[IconAndTextWidget(text: "Normal",size: 28, icon: Icons.circle_sharp, IconColor: AppColors.iconColor1),
                          IconAndTextWidget(text:"1.2km",size: 28, icon: Icons.location_on, IconColor: AppColors.mainColor),
                          IconAndTextWidget(text: "32min",size: 28, icon: Icons.access_time, IconColor:AppColors.iconColor2),
                        ]
                    ),
                    SizedBox(height: 20,),
                    BigText(text: 'Introduce',size: 30,color: Colors.black54,),
                    SizedBox(height: 20,),
                    Expanded(child: SingleChildScrollView(
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

                        ,),))
                    // SmallText(text: "biryani is a spiced mix of meat and rice, "
                    //     "traditionally cooked over an open fire in a leather pot. "
                    //     "It is combined in different ways with a variety of components "
                    //     "to create a number of highly tasty"
                    //     " and unique flavor combinations.",
                    //   // color: Colors.black54,
                    //   color: AppColors.signColor,
                    //   size: 15,
                    // )
                  ],
                ),
              ),),
          

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.foodNavigationHeight,
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
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  SizedBox(width: 5,),
                  BigText(text: "0"),
                  SizedBox(width: 5,),
                  Icon(Icons.add,color: AppColors.signColor,),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
              // height: Dimensions.foodNavigationHeight-50,
              width: Dimensions.foodNavigationWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.mainColor,
              ),
              child: Center(child: BigText(text: "₹189 |Add to cart",color: Colors.white,)),
            )
          ],
        ),
      ),
    );
  }
}
