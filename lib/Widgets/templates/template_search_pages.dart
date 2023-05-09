
import 'package:flutter/material.dart';

class TemplateSearchPages extends StatefulWidget {
  const TemplateSearchPages({super.key, required this.body});

  final Widget body;
  @override
  State<TemplateSearchPages> createState() => _TemplateSearchPagesState();
}

class _TemplateSearchPagesState extends State<TemplateSearchPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text('Search bar'),
          SizedBox(height: 40,),
          widget.body,
        ],
      ),
    );
  }
}