import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';

class ImageInProfile extends StatelessWidget {
  const ImageInProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: ConstantColors.gray),
          image: DecorationImage(
            image: AssetImage("assets/images/aquarium.png"),
          ),
        ),
      ),
    );
  }
}
