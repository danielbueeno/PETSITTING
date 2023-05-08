import 'package:flutter/material.dart';

import '../../constants/constants_colors.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.onValueChanged,
    this.width,
    this.height,
    this.hintText,
    this.keyboardType,
    this.obscureText,
    this.textAlignVertical,
  });

  final double? width;
  final double? height;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextAlignVertical? textAlignVertical;
  final void Function(String)? onValueChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 40,
      child: TextFormField(
        textAlign: TextAlign.start,
        textAlignVertical:textAlignVertical?? TextAlignVertical.bottom,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        onChanged: onValueChanged,
        decoration: InputDecoration(
          errorBorder:const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            borderSide: BorderSide(
              color: Colors.red,
            ) ,),
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
