import 'package:edspert_final_project/view/widgets/form_widget.dart';
import 'package:flutter/material.dart';

import '../../global/app_colors.dart';
import 'home_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController? emailController;
  TextEditingController? nameController;
  TextEditingController? schoolController;

  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.grayBG,
      body: SafeArea(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _headerAppbar(),
            _bodyContains(),
          ],
        ),
      ),
    );
  }

  Widget _headerAppbar() {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 8,
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
    );
  }

  Widget _bodyContains() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.16,
      child: ListView(
        shrinkWrap: true,
        clipBehavior: Clip.hardEdge,
        padding: EdgeInsets.only(
            top: 25,
            left: 25,
            right: 25,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        children: [
          FormRegistrationWidget(
            formTitle: 'Email',
            initialValue: "Ihsanadi08@gmail.com",
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
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    selectedGender = 'laki-laki';
                  }),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedGender == 'laki-laki'
                              ? AppColors.bluePrimary
                              : const Color(0xFFD6D6D6)),
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
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    selectedGender = 'perempuan';
                  }),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedGender == 'perempuan'
                              ? AppColors.bluePrimary
                              : const Color(0xFFD6D6D6)),
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
              ),
            ],
          ),
          const SizedBox(
            height: 23.0,
          ),
          const Text(
            'Kelas',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 4.0,
          ),
          TextFormField(
            scrollPadding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 50),
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
                  borderSide: const BorderSide(color: Color(0xFFD6D6D6))),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFFD6D6D6))),
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
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.bluePrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(46),
                ),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              ),
              child: const Text("Save"),
            ),
          ),
        ],
      ),
    );
  }
}
