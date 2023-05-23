import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Constants/constants_colors.dart';
import 'package:pet_sitting_project/Widgets/atoms/cameraButton.dart';
import 'package:pet_sitting_project/Widgets/atoms/image_in_profile.dart';
import 'package:pet_sitting_project/Widgets/atoms/image_in_profile_zoom.dart';
import 'package:pet_sitting_project/Widgets/atoms/profileText.dart';
import 'package:pet_sitting_project/Widgets/molecules/molecule_avatar.dart';
import 'package:pet_sitting_project/constants/constant_routes.dart';
import 'package:pet_sitting_project/widgets/molecules/molecule_store_item.dart';
import 'package:pet_sitting_project/Widgets/molecules/molecule_message_block.dart';
import 'package:blur/blur.dart';
import 'package:pet_sitting_project/widgets/atoms/button.dart';

class OrganismProfile extends StatefulWidget {
  const OrganismProfile({super.key});

  @override
  State<OrganismProfile> createState() => _OrganismProfileState();
}

class _OrganismProfileState extends State<OrganismProfile> {
  final _space = const SizedBox(
    height: 30,
  );
  bool _zoomed = false;
  Widget _zoomImg = Container();
  double _zoomOpa = 0;

  @override
  Widget build(BuildContext context) {
    return _zoom(
      chi: Column(
        children: [
          _infoSection,
          _divider, //Space Container
          _gallery,
        ],
      ),
    );
  }

  _onZoom(Widget wi) {
    setState(() {
      _zoomed = !_zoomed;
      _zoomImg = wi;
    });
  }

  Widget _zoom({required Column chi}) => _zoomed
      ? GestureDetector(
          onTap: () => _onZoom(Container()),
          child: Blur(
            blurColor: Colors.transparent,
            colorOpacity: 0.5,
            blur: 5,
            overlay: _zoomImg,
            child: chi,
          ),
        )
      : Container(child: chi);

  Widget get _infoSection {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Container(margin: EdgeInsets.only(right: 15, top: 15), child: _settings),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _profileData,
          profileText(
            text:
                "Introducing Mark, a devoted dog owner with a deep passion for his four-legged companions.",
          ),
        ],
      ),
      _camera,
    ]);
  }

  Widget get _settings {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
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
      child: const Icon(
        Icons.tune,
        color: ConstantColors.primary,
        size: 30,
      ),
    );
  }

  Widget get _profileData {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        CircleAvatar(
          radius: 57,
          backgroundImage: AssetImage("assets/images/luis.jpeg"),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Mark Hunt",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("876 Followers",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }

  Widget get _camera {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: const BoxDecoration(
            color: ConstantColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: const Icon(
          Icons.photo_camera,
          color: ConstantColors.white,
        ),
      ),
    );
  }

  Widget get _divider {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: ConstantColors.gray,
      height: 2,
    );
  }

  Widget get _gallery {
    return Expanded(
      child: SingleChildScrollView(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(2),
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
          shrinkWrap: true,
          children: [
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/persa.jpg"))},
                child: ImageInProfile(image: "assets/images/persa.jpg")),
            GestureDetector(
                onLongPress: () =>
                    _onZoom(ImageZoom(img: "assets/images/pastorAlemao2.jpg")),
                child:
                    ImageInProfile(image: "assets/images/pastorAlemao2.jpg")),
            GestureDetector(
                onLongPress: () => {
                      _onZoom(ImageZoom(img: "assets/images/pastorAlemao3.jpg"))
                    },
                child:
                    ImageInProfile(image: "assets/images/pastorAlemao3.jpg")),
            GestureDetector(
                onLongPress: () => {
                      _onZoom(ImageZoom(img: "assets/images/pastorAlemao4.jpg"))
                    },
                child:
                    ImageInProfile(image: "assets/images/pastorAlemao4.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/jack.jpg"))},
                child: ImageInProfile(image: "assets/images/jack.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/jack2.jpg"))},
                child: ImageInProfile(image: "assets/images/jack2.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/dogpark.jpg"))},
                child: ImageInProfile(image: "assets/images/dogpark.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/dogEat.jpg"))},
                child: ImageInProfile(image: "assets/images/dogEat.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/saoBernardo.jpg"))},
                child: ImageInProfile(image: "assets/images/saoBernardo.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/dogLeash.jpg"))},
                child: ImageInProfile(image: "assets/images/dogLeash.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/puppy.jpg"))},
                child: ImageInProfile(image: "assets/images/puppy.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/puppy2.jpg"))},
                child: ImageInProfile(image: "assets/images/puppy2.jpg")),
            GestureDetector(
                onLongPress: () =>
                    {_onZoom(ImageZoom(img: "assets/images/pastorAlemao.jpg"))},
                child: ImageInProfile(image: "assets/images/pastorAlemao.jpg")),

            // Other images...
          ],
        ),
      ).frosted(),
    );
  }

  Widget get _settingsButton {
    return Button(
      label: "Settings",
      onTap: () => Navigator.pushNamed(context, ConstantRoutes.signUp),
      width: 250,
    );
  }

  Widget get _signOutButton {
    return Button(
      label: "Sign out",
      onTap: () {
        Navigator.pushNamed(context, ConstantRoutes.welcome);
      },
      width: 250,
      color: ConstantColors.white,
      textColor: ConstantColors.primary,
      borderColor: ConstantColors.primary,
    );
  }
}
