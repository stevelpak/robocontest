import 'dart:io';

main() async {
  String satr = stdin.readLineSync()!;
  var writer = stdout.nonBlocking;
  writer.write(satr.length);
  await writer.close();
  exit(0);
}
