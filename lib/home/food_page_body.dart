import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_apps/colors.dart';
import 'package:food_apps/widgets/big_text.dart';
import 'package:food_apps/widgets/small_text.dart';

class FoodPageBody  extends StatelessWidget {
  // const FoodPageBody ({Key? key}) : super(key: key);
  PageController pageController=PageController(viewportFraction: 0.879);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.deepOrange,
      padding: EdgeInsets.only(top: 7),
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context,position){
            return buildPageItem(position);
          }),
    );
  }

  Widget buildPageItem(int position) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 9,right:9),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: position.isEven?Color(0xff69c5df):Colors.deepPurple.shade200,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/img_2.png'),

              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 27,right:27,bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,

          ),
            child: Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: 'Chinese Side'),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star,size: 15,color: AppColors.mainColor,)),
                      ),
                      SizedBox(width: 10,),
                      SmallText(text: '4.5'),
                      SizedBox(width: 10,),
                      SmallText(text: '1379'),
                      SizedBox(width: 4,),
                      SmallText(text: 'comments')
                    ],
                  )
                ],
              ),
            ),
        ),
        )
      ],
    );
  }
}
