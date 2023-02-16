import 'package:flutter/cupertino.dart';
import 'package:food_apps/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
 final IconData icon;
 final String text;
 final Color IconColor;
 final double size;
  const IconAndTextWidget({Key? key,
  required this.text,
  required this.icon,
    this.size=24,
    required this.IconColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: IconColor,size: size,),
        SizedBox(width: 5,),
        SmallText(text: text),

      ],
    );
  }
}
