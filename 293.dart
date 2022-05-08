import 'dart:io';

main() async {
  Iterable<String> letter = (stdin.readLineSync()!.split(""));
  print(letter.length);
  for (var item in letter) {
    print(item.codeUnitAt(0).toRadixString(2));
  }
  exit(0);
}
