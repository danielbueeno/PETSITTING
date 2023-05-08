import 'package:flutter/material.dart';

import '../../constants/constants_colors.dart';


class TemplateMessage extends StatelessWidget {
  const TemplateMessage({super.key, required this.body});

  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Message"),
        centerTitle: true,
        backgroundColor: ConstantColors.primary,
        ),
      body: SafeArea(
        child: body,
      ),
    );
  }
}