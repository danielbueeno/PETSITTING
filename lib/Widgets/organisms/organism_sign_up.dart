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
  DateTime? _selectedDate;
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  String? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
          child: Wrap(
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _profileImage,
              _form,
            ],
          ),
        )
      ]),
    );
  }

  //Widgets
  Widget get _profileImage {
    return Stack(children: [
      Container(
        width: 110,
        height: 105,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            border: Border.all(width: 1, color: ConstantColors.gray)),
      ),
      Container(
        margin: const EdgeInsets.only(top: 60),
        alignment: Alignment.center,
        width: 110,
        height: 50,
        decoration: BoxDecoration(
            color: ConstantColors.primary,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(80),
              bottomRight: Radius.circular(80),
            ),
            border: Border.all(color: ConstantColors.gray, width: 1)),
        child: const Text(
          "Select",
          style: TextStyle(
              color: ConstantColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      Container(
          margin: const EdgeInsets.only(left: 28, top: 10),
          child: const Icon(
            Icons.person,
            size: 55,
          ))
    ]);
  }

  Widget get _form {
    return Wrap(
      runSpacing: 10,
      children: [
        _userAndPass,
        _personalInfo,
        _questionSection,
        _nextButton,
      ],
    );
  }

  Widget get _userAndPass {
    return Wrap(
      runSpacing: 10,
      children: [
        Input(
          onValueChanged: (s) {},
          hintText: 'Username',
          keyboardType: TextInputType.name,
        ),
        Input(
          onValueChanged: (s) {},
          hintText: 'Password',
          keyboardType: TextInputType.visiblePassword,
        ),
      ],
    );
  }

  Widget get _personalInfo {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Input(
                onValueChanged: (s) {},
                hintText: 'First Name',
                keyboardType: TextInputType.name,
                width: double.infinity / 3,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Input(
                onValueChanged: (s) {},
                hintText: 'Last Name',
                keyboardType: TextInputType.name,
                width: double.infinity / 4,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextFormField(
                readOnly: true,
                onTap: _onTapCalendar,
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
                onValueChanged: (s) {},
                hintText: 'ID/Passport',
                keyboardType: TextInputType.name,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget get _questionSection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Are you a Pet Owner or a Pet Sitter?',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        RadioListTile(
          title: const Text('Pet Owner'),
          activeColor: ConstantColors.primary,
          value: 'pet_owner',
          groupValue: _selectedRole,
          contentPadding: const EdgeInsets.all(0),
          visualDensity: VisualDensity(horizontal: 0),
          onChanged: (value) {
            setState(() {
              _selectedRole = value.toString();
            });
          },
        ),
        RadioListTile(
          title: const Text('Pet Sitter'),
          activeColor: ConstantColors.primary,
          value: 'pet_sitter',
          groupValue: _selectedRole,
          contentPadding: const EdgeInsets.all(0),
          onChanged: (value) {
            setState(() {
              _selectedRole = value.toString();
            });
          },
        ),
      ],
    );
  }

  Widget get _nextButton {
    return Container(
      alignment: Alignment.bottomRight,
      child: Button(
        label: 'Next',
        width: 80,
        height: 40,
        fontSize: 16,
        onTap: () {
          if (_selectedRole == "pet_owner") {
            Navigator.pushNamed(context, ConstantRoutes.signUp2);
          }
        },
      ),
    );
  }

  //Functions
  _onTapCalendar() async {
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
  }
}
