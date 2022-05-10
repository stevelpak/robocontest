import 'dart:io';

main() async {
  int soni = int.parse(stdin.readLineSync()!);
  List sonlar =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();
  var writer = stdout.nonBlocking;
  sonlar.sort();
  sonlar.add(101);

  for (var i = 0; i < sonlar.length; i += 2) {
    if (sonlar[i] != sonlar[i + 1]) {
      writer.write(sonlar[i]);
      break;
    }
  }

  await writer.close();
  exit(0);
}
