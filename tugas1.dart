import 'dart:io';

double hitungZakat(double harta) {
  return harta * 2.5 / 100;
}

double hitungLuas(double alas, double tinggi) {
  return alas * tinggi / 2;
}

void main() {
  print('Kalkulator');
  print('NIP : ARN182-40112');
  print('Menu');
  print('1. Penambahan');
  print('2. Perkalian');
  print('3. Hitung Zakat');
  print('4. Hitung Luas');
  int? pilmenu = int.parse(stdin.readLineSync()!);

  //print(menu.toString());

  if (pilmenu == 1) {
    print('Program Penjumlahan :');
    print('Masukkan angka pertama');
    int? nAngka1 = int.parse(stdin.readLineSync()!);
    print('Masukkan angka kedua');
    int? nAngka2 = int.parse(stdin.readLineSync()!);

    var nHasil = nAngka1 + nAngka2;

    print('Hasil dari $nAngka1 + $nAngka2 = $nHasil');
  } else if (pilmenu == 2) {
    print('Program Perkalian :');
    print('Masukkan angka pertama');
    int? nAngka1 = int.parse(stdin.readLineSync()!);
    print('Masukkan angka kedua');
    int? nAngka2 = int.parse(stdin.readLineSync()!);

    var nHasil = nAngka1 * nAngka2;

    print('Hasil dari $nAngka1 X $nAngka2 = $nHasil');
  } else if (pilmenu == 3) {
    print('Program Perhitungan Zakat :');
    print('Berapa total harta yang anda miliki');
    double? nAngka1 = double.parse(stdin.readLineSync()!);

    //var nHasil = nAngka1 * 2.5 / 100;
    var nHasil = hitungZakat(nAngka1);

    print('Besarnya zakat dari $nAngka1  = $nHasil');
  } else if (pilmenu == 4) {
    print('Program Hitung Luas Segitiga :');
    print('Berapa alas-nya:');
    double? nAngka1 = double.parse(stdin.readLineSync()!);
    print('Berapa tinggi-nya:');
    double? nAngka2 = double.parse(stdin.readLineSync()!);

    //var nHasil = nAngka1 * nAngka2 / 2;
    var nHasil = hitungLuas(nAngka1, nAngka2);

    print('Luas segitiga dengan alas $nAngka1 dan tinggi $nAngka2 = $nHasil');
  }
}
