import 'package:flutter/material.dart';
import 'package:pet_sitting_project/constants/constants_colors.dart';
import 'package:pet_sitting_project/widgets/pages/page_messages.dart';


class TemplatePlatform extends StatefulWidget {
  const TemplatePlatform({super.key, required this.body});

  final Widget body;

  @override
  State<TemplatePlatform> createState() => _TemplatePlatformState();
}

class _TemplatePlatformState extends State<TemplatePlatform> {
  int _currentIndex = 0;
  List<Widget> body = const[
    Text('home'),
    PageMessages(),
    Text('Store'),
    Text('Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body:SafeArea(child: body[_currentIndex],),
      bottomNavigationBar: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: ConstantColors.primary,
        ), 
      child: BottomNavigationBar(
      onTap: (int newIndex){
        setState(() {
          _currentIndex = newIndex;
        },);
      },
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      unselectedItemColor: ConstantColors.white,
      selectedItemColor: ConstantColors.secondary,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label:"Message",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label:"Store",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label:"Profile",
        )],
        ),
      ),
    );
  }


  AppBar? get _appBar{
    return _currentIndex==1 ? AppBar(
      title: const Text("Messages",),
      centerTitle: true,
      backgroundColor: ConstantColors.primary,
      automaticallyImplyLeading: false,

    ):null;
  }

  
}