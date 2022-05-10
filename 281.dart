import 'dart:io';

main() async {
  int el_soni = int.parse(stdin.readLineSync()!);
  List<int> sonlar = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int sanoq = 0, old_sanoq = 0;
  sonlar.sort();
  var writer = stdout.nonBlocking;

  while (sonlar.isNotEmpty) {
    if (sonlar[0] == sonlar[1]) {
      sanoq++;
      sonlar.removeAt(1);
    }
  }

  await writer.close();
  exit(0);
}
