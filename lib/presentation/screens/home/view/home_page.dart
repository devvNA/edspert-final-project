// ignore_for_file: unnecessary_type_check

import 'package:edspert_final_project/presentation/screens/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/datasource/book_remote_data_source.dart';
import '../../../../data/repository/book_repository_impl.dart';
import '../../../../data/types.dart';
import '../../../../domain/usecase/get_list_book_usecase.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeController = HomeController(
    getListBookUseCase: GetListBookUseCase(
      repository: BookRepositoryImpl(
        remoteDataSource: BookRemoteDataSourceImpl(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: GetBuilder<HomeController>(
        init: homeController,
        initState: (_) => homeController.getListBook(),
        builder: (controller) {
          if (controller.listBook.value.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.listBook.value is ListBook) {
            return ListView.separated(
              padding: const EdgeInsets.all(12),
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => const Divider(
                thickness: 2,
              ),
              itemCount: controller.listBook.value.length,
              itemBuilder: (context, index) {
                final book = controller.listBook.value[index];
                return Text(book.title);
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
