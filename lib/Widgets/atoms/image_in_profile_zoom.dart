import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';

class ImageZoom extends StatelessWidget {
  const ImageZoom({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: ConstantColors.white),
          image: DecorationImage(
            image: AssetImage("assets/images/pastorAlemao.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ).frosted(borderRadius: BorderRadius.all(Radius.circular(5)));
  }
}
