import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';
import 'package:pet_sitting_project/Widgets/atoms/Button.dart';

class OrganismWelcome extends StatefulWidget {
  const OrganismWelcome({super.key});

  @override
  State<OrganismWelcome> createState() => _OrganismWelcomeState();
}

class _OrganismWelcomeState extends State<OrganismWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _logo,
            const SizedBox(
              height: 100,
            ),
            _buttons,
          ],
        ),
      ),
    );
  }

  Widget get _logo {
    return Container(
      width: 200,
      height: 200,
      color: ConstantColors.gray,
    );
  }

  Widget get _buttons {
    return Wrap(
      runSpacing: 20,
      children: const [
        Button(label: 'Sign In'),
        Button(
          label: 'Sign Up',
          color: ConstantColors.gray,
        ),
      ],
    );
  }
}
