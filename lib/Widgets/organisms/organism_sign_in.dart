import 'package:flutter/material.dart';
import 'package:pet_sitting_project/constants/constants_colors.dart';
import 'package:pet_sitting_project/widgets/atoms/button.dart';
import 'package:pet_sitting_project/widgets/atoms/input.dart';

class OrganismSignIn extends StatefulWidget {
  const OrganismSignIn({super.key});

  @override
  State<OrganismSignIn> createState() => _OrganismSignInState();
}

class _OrganismSignInState extends State<OrganismSignIn> {
  final _space = const SizedBox(
    height: 30,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          children: [
            _space,
            Container(
              color: ConstantColors.gray,
              height: 100,
              width: 100,
            ),
            _space,
            _inputs,
            const SizedBox(
              height: 10,
            ),
            _logInButton,
          ],
        ));
  }

  Widget get _inputs {
    return Wrap(
      runSpacing: 15,
      children: const [
        Input(
          hintText: 'Username',
          keyboardType: TextInputType.name,
        ),
        Input(
          hintText: 'Password',
          obscureText: true,
        ),
      ],
    );
  }

  Widget get _logInButton {
    return Container(
      alignment: Alignment.bottomRight,
      child: Button(
        label: 'Log In',
        width: 80,
        height: 40,
        fontSize: 16,
        onTap: () {},
      ),
    );
  }
}
