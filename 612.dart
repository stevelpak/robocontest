import 'dart:io';

main() async {
  var writer = stdout.nonBlocking;
  String sonlar = stdin.readLineSync()!.toString();
  print(sonlar[0].codeUnitAt(0) + sonlar[2].codeUnitAt(0) - 128);
  await writer.close();
  exit(0);
}
