import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/atoms/button.dart';
import 'package:pet_sitting_project/widgets/atoms/input.dart';


class OrganismMessage extends StatefulWidget {
  const OrganismMessage({super.key});

  @override
  State<OrganismMessage> createState() => _OrganismMessageState();
}

class _OrganismMessageState extends State<OrganismMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Input(onValueChanged: (test){}, width:  MediaQuery.of(context).size.width-70, textAlignVertical: TextAlignVertical.top,),
          Button(label: "Send", fontSize: 15,onTap: (){},width: 70,height: 40, )
        ],)

      ],
    );
  }
}