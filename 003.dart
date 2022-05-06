import 'dart:io'; // Kiritish Chiqarish kutubxonasi

main() async {
  Iterable<String> num1 =
      stdin.readLineSync()!.split(""); // 1-sonni qabul qilib olish
  Iterable<String> num2 =
      stdin.readLineSync()!.split(""); // 2-sonni qabul qilib olish

  int size1 = num1.length; // 1-son uzunligi
  int size2 = num2.length; // 2-son uzunligi
  int d = 0; // dilda saqlanuvchi son
  var writer = stdout.nonBlocking;
  String num1S = ""; // Teskari tartibda
  String num2S = ""; // tuzib olish uchun
  String natija = ""; // Natija uchun

  for (var i = size1 - 1; i >= 0; i--) {
    num1S += num1.elementAt(i);
  }
  for (var i = size2 - 1; i >= 0; i--) {
    num2S += num2.elementAt(i);
  }

  for (var i = 0; i < num1S.length || i < num2S.length; i++) {
    if (num1S.length > i) {
      d += int.parse(num1S[i]);
    }
    if (num2S.length > i) {
      d += int.parse(num2S[i]);
    }
    natija += (d % 10).toString();
    d = d ~/ 10;
  }

  if (d > 0) {
    natija += d.toString();
  }

  for (var i = natija.length - 1; i >= 0; i--) {
    writer.write(natija[i]);
  }

  await writer.close();
  exit(0);
}
