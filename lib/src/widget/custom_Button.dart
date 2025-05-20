import 'package:flutter/material.dart';

import '../../core/color.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final Function() onTap;
  const CustomButton({
    super.key, required this.buttonText, required this.onTap, this.buttonColor, this.textColor,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.buttonColor,
              border: Border.all(
                  color : AppColor.mainblack,
                  width: 1.5
              )
          ),
          height: 60,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(widget.buttonText,style: TextStyle(color: widget.textColor,fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}