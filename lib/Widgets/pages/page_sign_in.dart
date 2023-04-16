import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pet_sitting_project/widgets/organisms/organism_sign_in.dart';
import 'package:pet_sitting_project/widgets/templates/template_authentication.dart';

class PageSignIn extends StatelessWidget {
  const PageSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateAuthentication(
        title: 'Sign In', body: OrganismSignIn());
  }
}
