import 'package:edspert_final_project/data/datasource/Place_remote_data_source.dart';
import 'package:edspert_final_project/data/repository/place_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/datasource/book_remote_data_source.dart';
import '../../../../data/repository/book_repository_impl.dart';
import '../../../../data/types.dart';
import '../../../../domain/usecase/book_usecase.dart';
import '../../../../domain/usecase/place_usecase.dart';

class HomeController extends GetxController {
  Rx<ListPlace> listPlace = Rx([]);
  Rx<ListBook> listBook = Rx([]);

  @override
  void onInit() {
    super.onInit();
    getListPlace();
    getListBook();
  }

  void getListPlace() async {
    var places = await PlaceUseCase(
            repository: PlaceRepositoryImpl(
                remoteDataSource: PlaceRemoteDataSourceImpl()))
        .getListPlace();
    places.fold(
      (failure) {
        // Jika terjadi error, bisa di-handle sesuai kebutuhan
        // Misalnya, menampilkan pesan error atau melakukan aksi lain
        Get.snackbar('Error', failure.message,
            backgroundColor: const Color.fromARGB(255, 226, 53, 41),
            colorText: Colors.white,
            duration: const Duration(seconds: 2));

        debugPrint('Error: ${failure.message}');
      },
      (places) {
        // Jika berhasil, assign value dari Places ke listPlace.value
        listPlace.value = places;
        update();
      },
    );
  }

  void getListBook() async {
    var books = await BookUseCase(
            repository: BookRepositoryImpl(
                remoteDataSource: BookRemoteDataSourceImpl()))
        .getListBook();
    books.fold(
      (failure) {
        // Jika terjadi error, bisa di-handle sesuai kebutuhan
        // Misalnya, menampilkan pesan error atau melakukan aksi lain
        Get.snackbar('Error', failure.message,
            backgroundColor: const Color.fromARGB(255, 226, 53, 41),
            colorText: Colors.white,
            duration: const Duration(seconds: 2));

        debugPrint('Error: ${failure.message}');
      },
      (books) {
        // Jika berhasil, assign value dari Books ke listBooks.value
        listBook.value = books;
        update();
      },
    );
  }
}
