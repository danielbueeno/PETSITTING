import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Constants/constant_routes.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';
import 'package:pet_sitting_project/widgets/atoms/button.dart';
import 'package:pet_sitting_project/widgets/atoms/input.dart';
import 'package:intl/intl.dart';

class OrganismSignUp extends StatefulWidget {
  const OrganismSignUp({super.key});

  @override
  State<OrganismSignUp> createState() => _OrganismSignUpState();
}

class _OrganismSignUpState extends State<OrganismSignUp> {
  final _space = const SizedBox(
    height: 30,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      constraints: BoxConstraints.tight(Size(340, 600)),
      margin: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          _space,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(color: ConstantColors.gray, width: 1),
                ),
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(),
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.person,
                          size: 60,
                          color: ConstantColors.gray,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 37,
                        decoration: const BoxDecoration(
                          color: ConstantColors.primary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(80),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            print("hello");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              'Select',
                              style: TextStyle(
                                color: ConstantColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _space,
          _inputs,
          const SizedBox(
            height: 10,
          ),
          _logInButton,
        ],
      ),
    );
  }

  void _handleInputValueChanged(String value) {
    // Do something with the input value
  }
  DateTime? _selectedDate;
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  String? _selectedRole;
  Widget get _inputs {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Input(
                onValueChanged: _handleInputValueChanged,
                hintText: 'First Name',
                keyboardType: TextInputType.name,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Input(
                onValueChanged: _handleInputValueChanged,
                hintText: 'Last Name',
                keyboardType: TextInputType.name,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextFormField(
                readOnly: true,
                onTap: () async {
                  final DateTime? selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );

                  if (selectedDate != null) {
                    setState(() {
                      _selectedDate = selectedDate;
                    });
                  }
                },
                decoration: InputDecoration(
                  hintText: _selectedDate == null
                      ? 'Birth Date'
                      : formatter.format(_selectedDate!),
                  suffixIcon: const Icon(Icons.calendar_today),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Input(
                onValueChanged: _handleInputValueChanged,
                hintText: 'ID/Passport',
                keyboardType: TextInputType.name,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text('Are you a Pet Owner or Pet Sitter?'),
        const SizedBox(height: 20),
        RadioListTile(
          title: const Text('Pet Owner'),
          value: 'pet_owner',
          groupValue: _selectedRole,
          onChanged: (value) {
            setState(() {
              _selectedRole = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text('Pet Sitter'),
          value: 'pet_sitter',
          groupValue: _selectedRole,
          onChanged: (value) {
            setState(() {
              _selectedRole = value.toString();
            });
          },
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Input(
                onValueChanged: _handleInputValueChanged,
                hintText: 'Username',
                keyboardType: TextInputType.name,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Input(
                onValueChanged: _handleInputValueChanged,
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget get _logInButton {
    return Container(
      alignment: Alignment.bottomRight,
      child: Button(
        label: 'Next',
        width: 80,
        height: 40,
        fontSize: 16,
        onTap: () {
          Navigator.pushNamed(context, ConstantRoutes.signUp2);
        },
      ),
    );
  }
}
