import 'package:edspert_final_project/presentation/page/widgets/form_widget.dart';
import 'package:flutter/material.dart';

import '../global/app_colors.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController =
        TextEditingController(text: 'Ihsanadi08@gmail.com');
    TextEditingController nameController = TextEditingController();
    TextEditingController schoolController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.grayBG,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          controller: ScrollController(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 7,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(32, 201, 201, 201),
                      blurRadius: 7,
                      offset: Offset(0, 10),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 25.0,
                          ),
                        ),
                        const Text(
                          "Yuk isi data diri",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                controller: ScrollController(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FormRegistrationWidget(
                      formTitle: 'Email',
                      formController: emailController,
                    ),
                    const SizedBox(
                      height: 23.0,
                    ),
                    FormRegistrationWidget(
                      formTitle: 'Nama Lengkap',
                      formController: nameController,
                      hintText: 'contoh : Ihsan Adireja',
                    ),
                    const SizedBox(
                      height: 23.0,
                    ),
                    const Text(
                      'Jenis Kelamin',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0, color: const Color(0xFFD6D6D6)),
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                            child: const Center(
                              child: Text("Laki-laki",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0, color: const Color(0xFFD6D6D6)),
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                            child: const Center(
                              child: Text("Perempuan",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 23.0,
                    ),
                    const Text(
                      'Kelas',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                        hintText: 'pilih kelas',
                        hintStyle: const TextStyle(
                            color: Color(0xFFD3D3D3),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xFFD6D6D6))),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                const BorderSide(color: Color(0xFFD6D6D6))),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 23.0,
                    ),
                    FormRegistrationWidget(
                      formTitle: 'Nama Sekolah',
                      formController: schoolController,
                      hintText: 'nama sekolah',
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.bluePrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(46),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
