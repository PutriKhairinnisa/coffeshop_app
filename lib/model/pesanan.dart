import 'dart:ffi';

class Pesanan {
  int? id;
  int banyak;
  int totalBayar;

  Pesanan({
    this.id,
    required this.banyak,
    required this.totalBayar,
  });
}
