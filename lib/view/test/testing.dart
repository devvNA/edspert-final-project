// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class GenderSelectionForm extends StatefulWidget {
  const GenderSelectionForm({super.key});

  @override
  _GenderSelectionFormState createState() => _GenderSelectionFormState();
}

class _GenderSelectionFormState extends State<GenderSelectionForm> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedGender = 'pria';
            });
          },
          child: Container(
            width: 100,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.red,
              ),
              color: selectedGender == 'pria' ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Pria',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedGender = 'wanita';
            });
          },
          child: Container(
            width: 100,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selectedGender == 'wanita' ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Wanita',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
