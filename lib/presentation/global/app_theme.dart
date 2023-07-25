import 'package:flutter/material.dart';

import 'app_config.dart';

/// Kelas [AppTheme] digunakan untuk menentukan tema dari aplikasi.
class AppTheme {
  /// Fungsi [of] digunakan untuk memperbarui tema dari aplikasi.
  /// [context] digunakan untuk mengambil objek [ThemeData] dari context.
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      colorScheme:
          ThemeData().colorScheme.copyWith(primary: AppColors.bluePrimary),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: theme.textTheme.apply(fontFamily: 'Poppins'),
    );
  }
}
