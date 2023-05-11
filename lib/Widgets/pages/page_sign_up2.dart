import 'package:flutter/material.dart';
import 'package:pet_sitting_project/widgets/organisms/organism_sign_up.dart';
import 'package:pet_sitting_project/widgets/templates/template_authentication.dart';

import '../organisms/organism_sign_up2.dart';

class PageSignUp2 extends StatelessWidget {
  const PageSignUp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateAuthentication(
        title: 'Sign Up', body: OrganismSignUp2());
  }
}
