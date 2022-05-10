import 'dart:io';
import 'dart:math';

main() async {
  int elementlar_soni = int.parse(stdin.readLineSync()!);
  List<int> elementlar =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();
  var writer = stdout.nonBlocking;

  elementlar.remove(elementlar.reduce(max));
  writer.write(elementlar.reduce((max)));

  await writer.close();
  exit(0);
}
