import 'dart:io';

main() async {
  int n = int.parse(stdin.readLineSync()!);

  var writer = stdout.nonBlocking;
  writer.write((n ~/ 2) + 1);
  await writer.close();
  exit(0);
}
