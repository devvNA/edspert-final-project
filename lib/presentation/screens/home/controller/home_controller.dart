import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:edspert_final_project/domain/usecase/get_list_book_usecase.dart';
import '../../../../data/types.dart';

class HomeController extends GetxController {
  final GetListBookUseCase getListBookUseCase;

  HomeController({
    required this.getListBookUseCase,
  });

  Rx<ListBook> listBook = Rx([]);

  void getListBook() async {
    final booksEither = await getListBookUseCase.call();
    booksEither.fold(
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
        // Jika berhasil, assign value dari books ke listBook.value
        listBook.value = books;
        update();
      },
    );
  }
}
