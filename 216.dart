import 'dart:io';

main() async {
  int son = int.parse(stdin.readLineSync()!);
  int d = son % 10;
  int sanoq = (son ~/ 10) * 2;
  var writer = stdout.nonBlocking;

  if (d > 6) {
    writer.write(sanoq + 2);
  } else if (d > 2) {
    writer.write(sanoq + 1);
  } else {
    writer.write(sanoq);
  }
  await writer.close();
  exit(0);
}
