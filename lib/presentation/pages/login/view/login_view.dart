// ignore_for_file: avoid_unnecessary_containers
import 'package:edspert_final_project/presentation/widgets/button_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../global/app_colors.dart';
import '../../assignment/assignment_one.dart';
import '../../registration/view/registration_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/login-image.svg',
                    height: 255,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text(
                    "Selamat Datang",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  const Text(
                    "Selamat Datang di Aplikasi Widya Edu Aplikasi Latihan dan Konsultasi Soal",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF6A7483),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox.shrink(),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ButtonLoginWidget(
                            onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationView()),
                                ),
                            title: "Masuk dengan Google",
                            imgLink: "assets/icons/google-icon.png",
                            colorBackground: Colors.white,
                            colorForeground: Colors.black,
                            colorBorder: const Color(0xFF01B1AF)),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ButtonLoginWidget(
                            onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AssigmentPageOne()),
                                ),
                            title: "Masuk dengan Apple ID",
                            imgLink: "assets/icons/apple-logo.png",
                            colorBackground: const Color(0xFF1B1F26),
                            colorForeground: Colors.white)
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
