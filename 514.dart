import 'dart:io';

main() async {
  Iterable<int> xy = stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  var writer = stdout.nonBlocking;
  print("${(xy.last / xy.first * 100).toStringAsFixed(2)}%");
  await writer.close();
  exit(0);
}
