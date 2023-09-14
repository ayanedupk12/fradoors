import 'package:flutter/material.dart';

import '../core/utils/colors.dart';
import '../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? text;
  final bool? isOutlined;
  final TextStyle? textStyle;
  final Color? color;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isOutlined=false,
    this.textStyle,
    this.color=Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: isOutlined!
            ?ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color!),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: primaryColor),
                )
            )
        )
            :ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  // side: BorderSide(color: primaryColor)
                )
            )
        ),
        onPressed: onPressed,
        child: Text(text!,style: textStyle??TextStyles.smallBlackText,),
      ),
    );
  }
}
