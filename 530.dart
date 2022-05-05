import 'dart:io';

main() async {
  stdin.readLineSync()!;

  var writer = stdout.nonBlocking;
  writer.write("=");
  await writer.close();
  exit(0);
}
