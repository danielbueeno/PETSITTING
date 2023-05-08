import 'package:flutter/material.dart';
import 'package:pet_sitting_project/constants/constant_routes.dart';
import 'package:pet_sitting_project/widgets/pages/page_message.dart';
import 'package:pet_sitting_project/widgets/pages/page_sign_in.dart';
import 'package:pet_sitting_project/widgets/pages/page_sign_up.dart';
import 'package:pet_sitting_project/widgets/pages/page_user_logged.dart';
import 'package:pet_sitting_project/widgets/pages/page_welcome.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Sitting App',
      initialRoute: ConstantRoutes.welcome,
      routes: {
        ConstantRoutes.welcome: (context) => const PageWelcome(),
        ConstantRoutes.signIn: (context) => const PageSignIn(),
        ConstantRoutes.signUp: (context) => const PageSignUp(),
        ConstantRoutes.logged:(context)=>const PageUserLogged(),
        ConstantRoutes.message:(context)=>const PageMessage(),
      },
    );
  }
}
