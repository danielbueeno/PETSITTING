import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Constants/constant_routes.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';
import 'package:pet_sitting_project/widgets/atoms/button.dart';
import 'package:pet_sitting_project/widgets/atoms/input.dart';

class OrganismSignUp2 extends StatefulWidget {
  const OrganismSignUp2({super.key});

  @override
  State<OrganismSignUp2> createState() => _OrganismSignUp2State();
}

class _OrganismSignUp2State extends State<OrganismSignUp2> {
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
            Container(),
            _space,
            _inputs,
            const SizedBox(
              height: 10,
            ),
            _logInButton,
          ],
        ));
  }

  void _handleInputValueChanged(String value) {
    // Do something with the input value
  }
  bool _disability = false;
  Widget get _inputs {
    int? _age;
    String? _gender;
    return Wrap(
      runSpacing: 15,
      children: [
        Input(
          onValueChanged: _handleInputValueChanged,
          hintText: 'Name',
          keyboardType: TextInputType.name,
        ),
        Input(
          onValueChanged: _handleInputValueChanged,
          hintText: 'Specie',
          keyboardType: TextInputType.name,
        ),
        Row(
          children: [
            Expanded(
              child: Input(
                onValueChanged: _handleInputValueChanged,
                hintText: 'Age',
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Input(
                onValueChanged: _handleInputValueChanged,
                hintText: 'Gender',
                keyboardType: TextInputType.text,
              ),
            ),
          ],
        ),
        const Text('*Disabilities or special conditions'),
        RadioListTile(
          dense: true,
          title: const Text('Yes'),
          value: true,
          groupValue: _disability,
          onChanged: (value) {
            setState(() {
              _disability = value as bool;
            });
          },
        ),
        RadioListTile(
          dense: true,
          title: const Text('No'),
          value: false,
          groupValue: _disability,
          onChanged: (value) {
            setState(() {
              _disability = value as bool;
            });
          },
        ),
        const Text('*If yes, please describe it'),
        Input(
          onValueChanged: _handleInputValueChanged,
          keyboardType: TextInputType.name,
        ),
        const Text('More relevant information'),
        Input(
          onValueChanged: _handleInputValueChanged,
          keyboardType: TextInputType.name,
        ),
      ],
    );
  }

  Widget get _logInButton {
    return Container(
      alignment: Alignment.bottomRight,
      child: Button(
        label: 'Create',
        width: 80,
        height: 40,
        fontSize: 16,
        onTap: () {
          Navigator.pushNamed(context, ConstantRoutes.logged);
        },
      ),
    );
  }
}
