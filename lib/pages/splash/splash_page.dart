import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:vascom/global_controllers/global_user_controller.dart';
import 'package:vascom/pages/home/home_page.dart';
import 'package:vascom/pages/login/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gUserController = GlobalUserController.create;

    return AnimatedSplashScreen.withScreenFunction(
      splash: const FlutterLogo(size: 100),
      screenFunction: () async {
        await gUserController.authController.autoLogin();

        if (!gUserController.authController.isLoggedIn) {
          return const LoginPage();
        }

        gUserController.fetchUser();
        return const HomePage();
      },
    );
  }
}
