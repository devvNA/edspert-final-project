import 'package:flutter/material.dart';

import '../global/app_colors.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBG,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6.5,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(32, 201, 201, 201),
                  blurRadius: 15,
                  offset: Offset(0, 6),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  height: 100.0,
                  color: Colors.red,
                ),
                Container(
                  height: 100.0,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text(
    //       "Yuk Isi Data Diri",
    //       style: TextStyle(fontWeight: FontWeight.bold),
    //     ),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Container(
    //       padding: const EdgeInsets.all(10.0),
    //       child: Column(
    //         children: [
    //           Container(
    //             padding: const EdgeInsets.symmetric(
    //               vertical: 6.0,
    //               horizontal: 12.0,
    //             ),
    //             decoration: BoxDecoration(
    //               color: Colors.grey[200],
    //               borderRadius: const BorderRadius.all(
    //                 Radius.circular(20.0),
    //               ),
    //             ),
    //             child: Row(
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Icon(
    //                     Icons.search,
    //                     color: Colors.grey[500],
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: TextFormField(
    //                     initialValue: null,
    //                     decoration: InputDecoration.collapsed(
    //                       filled: true,
    //                       fillColor: Colors.transparent,
    //                       hintText: "What are you craving?",
    //                       hintStyle: TextStyle(
    //                         color: Colors.grey[500],
    //                       ),
    //                       hoverColor: Colors.transparent,
    //                     ),
    //                     onFieldSubmitted: (value) {},
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
