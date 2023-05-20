import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';
import 'package:pet_sitting_project/Widgets/atoms/image_in_profile.dart';
import 'package:pet_sitting_project/constants/constant_routes.dart';
import 'package:pet_sitting_project/widgets/atoms/button.dart';

class OrganismProfile extends StatefulWidget {
  const OrganismProfile({super.key});

  @override
  State<OrganismProfile> createState() => _OrganismProfileState();
}

class _OrganismProfileState extends State<OrganismProfile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      child: Column(
        children: [
          _infoSection,
          _divider,
          _gallery,
        ],
      ),
    );
  }


  Widget get _infoSection{
    return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          _settings,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _profileData,
              const Text(
              'Introducing Mark, a devoted dog owner \nwith a deep passion for his four-legged \ncompanions.',
              style: TextStyle(fontSize: 14)
              ),
            ],
          ),
         _camera,
        ]
    );
  }

  Widget get _settings{
    return GestureDetector(
        onTap: (){
          showModalBottomSheet<void>(
            context: context,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight:  Radius.circular(50)),),
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Wrap(
                  direction: Axis.vertical,
                  runAlignment: WrapAlignment.center,
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    _settingsButton,
                    _signOutButton,
                  ],
                ),
              );
            });
        },
        child: const Icon(Icons.tune,color: ConstantColors.primary,size: 30,),
      );
  }

  Widget get _profileData{
    return Column(
      children: const [
        CircleAvatar(
          radius: 57,
          backgroundImage: AssetImage("assets/images/luis.jpeg"),
        ),
        SizedBox(height: 5,),
        Text("Mark Hunt",style: TextStyle(fontWeight: FontWeight.bold,),),
        Text("876 Followers",style: TextStyle(fontWeight: FontWeight.bold,)),
      ],
    );
  }
  Widget get _camera{
    return GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: const BoxDecoration(
            color: ConstantColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          child: const Icon(Icons.photo_camera, color: ConstantColors.white,),
        ),
      );
  }

  Widget get _divider{
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: ConstantColors.gray,
      height: 2,
    );
  }

  Widget get _gallery{
    return  Expanded(
          child: ListView(
            children:[ Wrap(
              runAlignment: WrapAlignment.spaceBetween,
              alignment: WrapAlignment.start,
              children: [
                ImageInProfile(image: "assets/images/persa.jpg"),
                ImageInProfile(image: "assets/images/pastorAlemao2.jpg"),
                ImageInProfile(image: "assets/images/pastorAlemao3.jpg"),
                ImageInProfile(image: "assets/images/pastorAlemao4.jpg"),
                ImageInProfile(image: "assets/images/jack.jpg"),
                ImageInProfile(image: "assets/images/jack2.jpg"),
                ImageInProfile(image: "assets/images/dogpark.jpg"),
                ImageInProfile(image: "assets/images/dogEat.jpg"),
                ImageInProfile(image: "assets/images/dogLeash.jpg"),
                ImageInProfile(image: "assets/images/puppy2.jpg"),
                ImageInProfile(image: "assets/images/puppy.jpg"),
              ],
            ),],
          ),
        );
  }


Widget get _settingsButton{
  return Button(label: "Settings", onTap: (){}, width: 250,);
}
Widget get _signOutButton{
  return Button(
    label: "Sign out", 
    onTap: (){
      Navigator.pushNamed(context, ConstantRoutes.welcome);
    }, 
    width: 250, 
    color: ConstantColors.white, 
    textColor:ConstantColors.primary, 
    borderColor: ConstantColors.primary,
    );
}


}
