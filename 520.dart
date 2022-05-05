import 'dart:io';

main() async {
  stdin.readLineSync()!;

  var writer = stdout.nonBlocking;
  writer.write(1);
  await writer.close();
  exit(0);
}
