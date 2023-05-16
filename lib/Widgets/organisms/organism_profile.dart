import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';
import 'package:pet_sitting_project/Widgets/atoms/button.dart';
import 'package:pet_sitting_project/Widgets/atoms/cameraButton.dart';
import 'package:pet_sitting_project/Widgets/atoms/image_in_profile.dart';
import 'package:pet_sitting_project/Widgets/atoms/profileText.dart';
import 'package:pet_sitting_project/Widgets/molecules/molecule_avatar.dart';
import 'package:pet_sitting_project/constants/constant_routes.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_store_item.dart';
import 'package:pet_sitting_project/Widgets/molecules/molecule_message_block.dart';

class OrganismProfile extends StatefulWidget {
  const OrganismProfile({super.key});

  @override
  State<OrganismProfile> createState() => _OrganismProfileState();
}

class _OrganismProfileState extends State<OrganismProfile> {
  final _space = const SizedBox(
    height: 30,
  );
  @override
  Widget build(BuildContext context) {
    const space = SizedBox(
      height: 10,
    );
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                margin: EdgeInsets.only(right: 15, top: 15),
                child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, ConstantRoutes.signUp),
                    child: Icon(
                      Icons.tune,
                      color: ConstantColors.primary,
                      size: 30,
                    )),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MoleculeAvatar(
                    name: "Mark Hunt",
                    followers: "876",
                    img: "assets/images/luis.jpeg"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    profileText(
                      text:
                          "Introducing Mark, a devoted dog owner with a deep passion for his four-legged companions.",
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [CameraButton()],
            )
          ]),
        ),
        Container(
            color: ConstantColors.gray,
            height: 2,
            margin: EdgeInsets.symmetric(horizontal: 5)), //Space Container
        Container(
          constraints: BoxConstraints.expand(height: 460),
          child: SingleChildScrollView(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(2),
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 3,
              shrinkWrap: true,
              children: [
                ImageInProfile(image: "assets/images/persa.jpg"),
                ImageInProfile(image: "assets/images/pastorAlemao2.jpg"),
                ImageInProfile(image: "assets/images/pastorAlemao3.jpg"),
                ImageInProfile(image: "assets/images/pastorAlemao4.jpg"),
                ImageInProfile(image: "assets/images/jack.jpg"),
                ImageInProfile(image: "assets/images/jack2.jpg"),
                ImageInProfile(image: "assets/images/dogpark.jpg"),
                ImageInProfile(image: "assets/images/dogEat.jpg"),
                ImageInProfile(image: "assets/images/saoBernardo.jpg"),
                ImageInProfile(image: "assets/images/dogLeash.jpg"),
                ImageInProfile(image: "assets/images/puppy.jpg"),
                ImageInProfile(image: "assets/images/puppy2.jpg"),
                ImageInProfile(image: "assets/images/pastorAlemao.jpg"),
                // Other images...
              ],
            ),
          ),
        )
      ],
    );
  }
}
