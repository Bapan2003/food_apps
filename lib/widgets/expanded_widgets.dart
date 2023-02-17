import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_apps/utils/colors.dart';
import 'package:food_apps/widgets/small_text.dart';

import '../utils/dimensions.dart';

class ExpandedTextWidget extends StatefulWidget {
  final String text;
  const ExpandedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hidden=true;
  double textHeight= Dimensions.screenHeight/5.63;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf=widget.text.substring(0,textHeight.toInt());
      secondHalf=widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: secondHalf.isEmpty?SmallText(color: AppColors.paraColor,size: 16,text: firstHalf):Column(
         children: [
           SmallText(color: AppColors.paraColor,size: 16,text:hidden?(firstHalf+"....."):(firstHalf+secondHalf)),
           InkWell(
             onTap: (){
               setState(() {
                 hidden=!hidden;

               });
             },
             child: Row(
               children: [
                 SmallText(size:16,text: hidden?("Show more"):("Show less"),color: AppColors.mainColor,),
                 SizedBox(width: 5,),
                 Icon(hidden?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,)
               ],
             ),
           )
         ],
       ),
    );
  }
}
