import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

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
              controller.listBook.value.isEmpty ||
              controller.listUser.value.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              padding: const EdgeInsets.all(18),
              children: [
                const Text(
                  "PLACE",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                  child: ListView.builder(
                    itemCount: controller.listPlace.value.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final place = controller.listPlace.value[index];

                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.amber[800],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              place.nama,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
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
                const Text(
                  "USER",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Ink(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listUser.value.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final user = controller.listUser.value[index];

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(user.avatar),
                          ),
                          title: Text("${user.firstName} ${user.lastName}"),
                          subtitle: Text(user.email),
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
                const Text(
                  "BOOK",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Ink(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listBook.value.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final book = controller.listBook.value[index];

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              book.image,
                            ),
                          ),
                          title: Text(book.title),
                          subtitle: Text(book.price),
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
                SizedBox(
                  height: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        homeController.onInit();
                      },
                      child: const Text("Refresh")),
                ),
              ],
            );
            // ListView.separated(
            //   padding: EdgeInsets.all(12),
            //   physics: BouncingScrollPhysics(),
            //   separatorBuilder: (context, index) => Divider(
            //     thickness: 2,
            //   ),
            //   itemCount: controller.listPlace.value.length,
            //   itemBuilder: (context, index) {
            //     final place = controller.listPlace.value[index];
            //     return Column(
            //       children: [
            //         Row(
            //           children: [
            //             Text(
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
            //                 style: TextStyle(),
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
