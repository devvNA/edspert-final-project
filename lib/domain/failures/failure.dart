import 'package:equatable/equatable.dart';

/// Kelas abstrak `Failure` digunakan untuk menangani kegagalan pada proses.
abstract class Failure extends Equatable {
  /// Variabel message digunakan untuk menyimpan pesan error.
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

/// Kelas `Exception` digunakan untuk menangani kesalahan pada proses.
class Exception extends Failure {
  const Exception(String message) : super(message);
}

/// Kelas `LocalDatabaseQueryFailure` digunakan untuk menangani kesalahan query pada database lokal.
class LocalDatabaseQueryFailure extends Failure {
  const LocalDatabaseQueryFailure(String message) : super(message);
}

/// Kelas `ConnectionFailure` digunakan untuk menangani kesalahan koneksi.
class ConnectionFailure extends Failure {
  const ConnectionFailure(String message) : super(message);
}

/// Kelas `ParsingFailure` digunakan untuk menangani kesalahan parsing.
class ParsingFailure extends Failure {
  const ParsingFailure(String message) : super(message);
}
