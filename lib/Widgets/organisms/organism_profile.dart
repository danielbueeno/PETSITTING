import 'dart:ui';

import 'package:flutter/gestures.dart';
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
import 'package:pet_sitting_project/Widgets/atoms/image_in_profile_zoom';
import 'package:blur/blur.dart';

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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: EdgeInsets.only(right: 15, top: 15),
                  child: GestureDetector(
                      onLongPress: () => Navigator.pushNamed(
                          context, ConstantRoutes.signUp,
                          arguments: "change"),
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
          Expanded(
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
                      onLongPress: () => _onZoom(
                          ImageZoom(img: "assets/images/pastorAlemao2.jpg")),
                      child: ImageInProfile(
                          image: "assets/images/pastorAlemao2.jpg")),
                  GestureDetector(
                      onLongPress: () => {
                            _onZoom(ImageZoom(
                                img: "assets/images/pastorAlemao3.jpg"))
                          },
                      child: ImageInProfile(
                          image: "assets/images/pastorAlemao3.jpg")),
                  GestureDetector(
                      onLongPress: () => {
                            _onZoom(ImageZoom(
                                img: "assets/images/pastorAlemao4.jpg"))
                          },
                      child: ImageInProfile(
                          image: "assets/images/pastorAlemao4.jpg")),
                  GestureDetector(
                      onLongPress: () =>
                          {_onZoom(ImageZoom(img: "assets/images/jack.jpg"))},
                      child: ImageInProfile(image: "assets/images/jack.jpg")),
                  GestureDetector(
                      onLongPress: () =>
                          {_onZoom(ImageZoom(img: "assets/images/jack2.jpg"))},
                      child: ImageInProfile(image: "assets/images/jack2.jpg")),
                  GestureDetector(
                      onLongPress: () => {
                            _onZoom(ImageZoom(img: "assets/images/dogpark.jpg"))
                          },
                      child:
                          ImageInProfile(image: "assets/images/dogpark.jpg")),
                  GestureDetector(
                      onLongPress: () =>
                          {_onZoom(ImageZoom(img: "assets/images/dogEat.jpg"))},
                      child: ImageInProfile(image: "assets/images/dogEat.jpg")),
                  GestureDetector(
                      onLongPress: () => {
                            _onZoom(
                                ImageZoom(img: "assets/images/saoBernardo.jpg"))
                          },
                      child: ImageInProfile(
                          image: "assets/images/saoBernardo.jpg")),
                  GestureDetector(
                      onLongPress: () => {
                            _onZoom(
                                ImageZoom(img: "assets/images/dogLeash.jpg"))
                          },
                      child:
                          ImageInProfile(image: "assets/images/dogLeash.jpg")),
                  GestureDetector(
                      onLongPress: () =>
                          {_onZoom(ImageZoom(img: "assets/images/puppy.jpg"))},
                      child: ImageInProfile(image: "assets/images/puppy.jpg")),
                  GestureDetector(
                      onLongPress: () =>
                          {_onZoom(ImageZoom(img: "assets/images/puppy2.jpg"))},
                      child: ImageInProfile(image: "assets/images/puppy2.jpg")),
                  GestureDetector(
                      onLongPress: () => {
                            _onZoom(ImageZoom(
                                img: "assets/images/pastorAlemao.jpg"))
                          },
                      child: ImageInProfile(
                          image: "assets/images/pastorAlemao.jpg")),

                  // Other images...
                ],
              ),
            ).frosted(),
          )
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

  /* Widget _buildImages({required String image}) {
    return GestureDetector(
      onLongPressStart: (LongPressStartDetails details) =>
          _onZoom(ImageZoom(img: image)),
      child: ImageInProfile(image: image),
    );
  } */
}
