import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: GetBuilder<HomeController>(
        init: homeController,
        initState: (_) => homeController.onInit(),
        builder: (controller) {
          if (controller.listPlace.value.isEmpty ||
              controller.listBook.value.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Ink(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listPlace.value.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final place = controller.listPlace.value[index];

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: const NetworkImage(
                              "https://i.ibb.co/QrTHd59/woman.jpg",
                            ),
                          ),
                          title: Text(place.nama),
                          subtitle: Text(place.alamat),
                        ),
                      );
                    },
                  ),
                ),
                const Divider(
                  thickness: 5,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Ink(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listBook.value.length - 190,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final book = controller.listBook.value[index];

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: const NetworkImage(
                              "https://reqres.in/img/faces/5-image.jpg",
                            ),
                          ),
                          title: Text(book.title),
                          subtitle: Text(book.id.toString()),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
            // ListView.separated(
            //   padding: const EdgeInsets.all(12),
            //   physics: const BouncingScrollPhysics(),
            //   separatorBuilder: (context, index) => const Divider(
            //     thickness: 2,
            //   ),
            //   itemCount: controller.listPlace.value.length,
            //   itemBuilder: (context, index) {
            //     final place = controller.listPlace.value[index];
            //     return Column(
            //       children: [
            //         Row(
            //           children: [
            //             const Text(
            //               "Nama: ",
            //               style: TextStyle(
            //                 fontSize: 12.0,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             Expanded(
            //               child: Text(
            //                 place.nama,
            //                 softWrap: true,
            //                 style: const TextStyle(),
            //                 overflow: TextOverflow.ellipsis,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     );
            //   },
            // );
          }
        },
      ),
    );
  }
}
