import 'package:edspert_final_project/presentation/global/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bluePrimary,
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Container()),
          );
        },
        child: Center(
          child: Image.asset(
            "assets/images/splash-image-edspert-id.png",
            width: 150.0,
          ),
        ),
      ),
    );
  }
}
