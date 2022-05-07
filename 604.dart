import 'dart:io';

main() async {
  String belgi = stdin.readLineSync()!.toString();
  var writer = stdout.nonBlocking;
  writer.write(belgi.codeUnitAt(0));
  await writer.close();
  exit(0);
}
