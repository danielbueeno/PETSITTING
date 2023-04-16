import 'package:flutter/material.dart';

import '../../constants/constants_colors.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.width,
    this.height,
    this.hintText,
    this.keyboardType,
    this.obscureText,
  });

  final double? width;
  final double? height;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 40,
      child: TextFormField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: ConstantColors.gray,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            borderSide: BorderSide(
              color: ConstantColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
