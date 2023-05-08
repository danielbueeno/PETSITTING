import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/organisms/organism_pet_owner_logged.dart';
import 'package:pet_sitting_project/widgets/templates/template_platform.dart';

class PageUserLogged extends StatelessWidget {
  const PageUserLogged({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplatePlatform(body: OrganismPetOwnerLogged());
  }
}
