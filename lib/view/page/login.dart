// ignore_for_file: avoid_unnecessary_containers
import 'package:edspert_final_project/view/page/registration.dart';
import 'package:edspert_final_project/view/widgets/button_widgets.dart';
import 'package:flutter/material.dart';

import '../../global/app_colors.dart';
import 'assignment/assignment_one.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBG,
      body: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const GenderSelectionForm()),
          // );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RegistrationPage()),
          );
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(35),
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
                Image.asset(
                  'assets/images/login-image.png',
                  width: 350,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  "Selamat Datang",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                const Text(
                  "Selamat Datang di Aplikasi Widya Edu Aplikasi Latihan dan Konsultasi Soal",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF6A7483),
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ButtonLoginWidget(
                                onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AssigmentPageOne()),
                                    ),
                                title: "Masuk dengan Google",
                                imgLink: "assets/icons/google-icon.png",
                                colorBackground: Colors.white,
                                colorForeground: Colors.black,
                                colorBorder: const Color(0xFF01B1AF)),
                            const SizedBox(
                              height: 25.0,
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
                ),
                const SizedBox(
                  height: 90.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
