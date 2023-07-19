// ignore_for_file: must_be_immutable, unused_field

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class FormRegistrationWidget extends StatelessWidget {
  final String formTitle;
  final String? initialValue;
  final String? hintText;
  final TextEditingController? formController;

  const FormRegistrationWidget({
    Key? key,
    required this.formTitle,
    this.initialValue,
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
          scrollPadding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 50),
          initialValue: initialValue,
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

class FormGenderWidget extends StatelessWidget {
  final String formTitle;
  final TextEditingController? formController;
  final bool? isChoice;

  const FormGenderWidget({
    Key? key,
    required this.formTitle,
    this.formController,
    this.isChoice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          scrollPadding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom * 4),
          enabled: isChoice,
          decoration: InputDecoration(
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
          onChanged: (value) {
            value = isChoice.toString();
          },
        ),
      ],
    );
  }
}

class ClassFormWidget extends StatelessWidget {
  ClassFormWidget({super.key});

  final List<String> classItems = [
    'Kelas 1',
    'Kelas 2',
    'Kelas 3',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      hint: const Text(
        'pilih kelas',
        style: TextStyle(
            fontSize: 16,
            color: Color(0xFFD3D3D3),
            fontWeight: FontWeight.w500),
      ),
      items: classItems
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'tolong pilih kelas';
        }
        return null;
      },
      onChanged: (value) {},
      onSaved: (value) {
        selectedValue = value.toString();
      },
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black,
        ),
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
