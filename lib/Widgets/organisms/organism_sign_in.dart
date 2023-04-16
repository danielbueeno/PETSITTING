import 'package:flutter/material.dart';
import 'package:pet_sitting_project/constants/constants_colors.dart';

class OrganismSignIn extends StatefulWidget {
  const OrganismSignIn({super.key});

  @override
  State<OrganismSignIn> createState() => _OrganismSignInState();
}

class _OrganismSignInState extends State<OrganismSignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: ConstantColors.gray,
    );
  }
}
