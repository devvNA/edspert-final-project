// ignore_for_file: avoid_unnecessary_containers
import 'package:edspert_final_project/presentation/page/registration.dart';
import 'package:flutter/material.dart';

import '../global/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBG,
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RegistrationPage()),
          );
        },
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
                          SizedBox(
                            width: 270,
                            height: 50,
                            child: ElevatedButton(
                              style: OutlinedButton.styleFrom(
                                elevation: 10,
                                shadowColor: Colors.black,
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                  color: Color(0xff01B1AF),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Container(
                                            child: const Center(
                                              child: Text(
                                                "google",
                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                          )),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/google-icon.png",
                                    width: 35.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  const Text(
                                    "Masuk dengan Google",
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          SizedBox(
                            width: 270,
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shadowColor: Colors.black,
                                  backgroundColor: const Color(0xFF1B1F26),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Container(
                                              child: const Center(
                                                child: Text(
                                                  "Apple ID",
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                  ),
                                                ),
                                              ),
                                            )),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/icons/apple-logo.png",
                                      width: 35,
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    const Text(
                                      "Masuk dengan Apple ID",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                )),
                          ),
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
    );
  }
}
