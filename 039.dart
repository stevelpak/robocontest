import 'dart:io';

main() async {
  int son = int.parse(stdin.readLineSync()!);
  var writer = stdout.nonBlocking;

  for (var i = 1; i <= 999; i++) {
    if ((i + i % 100) == son) {
      writer.write(i);
      writer.write(" ");
    }
  }

  await writer.close();
  exit(0);
}
