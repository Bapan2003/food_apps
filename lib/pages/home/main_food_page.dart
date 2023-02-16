import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_apps/utils/colors.dart';
import 'package:food_apps/widgets/big_text.dart';
import 'package:food_apps/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery. of(context). size. width);423.52
    // print(MediaQuery. of(context). size. height);941.17
    return Scaffold(
      body:Container(

        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 51,bottom: 15),
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    // Text('Country',style: TextStyle(
                    //   color: AppColors.mainColor,
                    // ),),
                    BigText(text: "India",color: AppColors.mainColor,size: 27,),
                    Row(
                      children: [
                        SmallText(text: "Kolkata",color: Colors.black54,size: 15,),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 48,
                    height: 48,
                    child: Icon(Icons.search,color: Colors.white,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),

    ),

            Expanded(
                child: SingleChildScrollView(
                    child: FoodPageBody(),
                ),
            )
          ],
        ),

      ),
    );
  }
}
