import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_apps/colors.dart';
import 'package:food_apps/widgets/big_text.dart';
import 'package:food_apps/widgets/icon_and_text.dart';
import 'package:food_apps/widgets/small_text.dart';

class FoodPageBody  extends StatefulWidget {
  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  // const FoodPageBody ({Key? key}) : super(key: key);
  PageController pageController=PageController(viewportFraction: 0.879);
  double scalefactor=0.8;
  var currPageValue=0.0;
  double _height=220;

  @override
  void initState(){
      super.initState();
      pageController.addListener(() {
        setState(() {
          currPageValue=pageController.page!;
        });
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          // color: Colors.deepOrange,
          padding: EdgeInsets.only(top: 7),
          child: PageView.builder(
            controller: pageController,
              itemCount: 5,
              itemBuilder: (context,position){
                return buildPageItem(position);
              }),
        ),
    new DotsIndicator(
    dotsCount:5,
    position: currPageValue,
    decorator: DotsDecorator(
    activeColor: AppColors.mainColor,
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
      ],
    );
  }

  Widget buildPageItem(int position) {
    Matrix4 matrix4=new Matrix4.identity();
    if(position==currPageValue.floor()){
      var currScale=1-(currPageValue-position)*(1-scalefactor);
      var currTrans=_height*(1-currScale)/2;
      matrix4=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if(position==currPageValue.floor()+1) {
      var currScale = scalefactor +
          (currPageValue - position + 1) * (1 - scalefactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }else if(position==currPageValue.floor()-1){
      var currScale=1-(currPageValue-position)*(1-scalefactor);
      var currTrans=_height*(1-currScale)/2;
      matrix4=Matrix4.diagonal3Values(1, currScale, 1);
      matrix4=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale=0.8;
      var currTrans=_height*(1-currScale)/2;
      matrix4=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    return Transform(
      transform: matrix4,
      child: Stack(
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
                  boxShadow: [BoxShadow(
                    color: Color(0xffe8e8e8),
                    blurRadius: 10,
                    offset: Offset(0,5)
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0)
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0)
                  ),
                  ]
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
                    ),
                    SizedBox(height: 15,),
                    Row(
                    children:[IconAndTextWidget(text: "Normal", icon: Icons.circle_sharp, IconColor: AppColors.iconColor1),
                    SizedBox(width: 10,),
                    IconAndTextWidget(text:"1.2km", icon: Icons.location_on, IconColor: AppColors.mainColor),
                      SizedBox(width: 10,),
                    IconAndTextWidget(text: "32min", icon: Icons.access_time, IconColor:AppColors.iconColor2),
      ]
      ),
                  ],
                ),
              ),
          ),
          )
        ],
      ),
    );
  }
}
