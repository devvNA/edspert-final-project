import 'package:flutter/material.dart';

class FormRegistrationWidget extends StatelessWidget {
  final String formTitle;
  final String? hintText;
  final TextEditingController? formController;

  const FormRegistrationWidget({
    Key? key,
    required this.formTitle,
    this.hintText,
    this.formController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formTitle,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 4.0,
        ),
        TextFormField(
          controller: formController,
          decoration: InputDecoration(
            hintText: hintText,
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
      ],
    );
  }
}