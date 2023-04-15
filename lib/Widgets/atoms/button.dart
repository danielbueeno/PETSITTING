import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    this.color,
    this.width,
    this.height,
    this.textColor,
    this.fontSize,
  });

  final String label;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          width: width ?? 346,
          height: height ?? 54,
          decoration: BoxDecoration(
            color: color ?? ConstantColors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(17, 24, 39, 0.07),
                blurRadius: 34,
                offset: Offset(8, 14),
              )
            ],
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: textColor ?? ConstantColors.white,
                fontWeight: FontWeight.bold,
                fontSize: fontSize ?? 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
