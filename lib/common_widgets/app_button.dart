import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String label;
  final double roundness;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final Function onPressed;

  const AppButton({
    Key? key,
    required this.label,
    this.roundness = 8.0,
    this.fontWeight = FontWeight.bold,
    this.padding = const EdgeInsets.symmetric(vertical: 20),
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 50.h,
      child: RaisedButton(
        visualDensity: VisualDensity.compact,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(roundness),
        ),
        color: Color(0xff30BE76),
        textColor: Colors.white,
        elevation: 0.0,
        padding: padding,
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: fontWeight,
            ),
          ),
        ),
        onPressed: () {
          if (onPressed != null) onPressed();
        },
      ),
    );
  }
}