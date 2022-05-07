import 'dart:io';

main() async {
  int son = int.parse(stdin.readLineSync()!);
  var writer = stdout.nonBlocking;
  if (son % 2 == 0) {
    writer.write("Second player");
  } else {
    writer.write("First player");
  }
  await writer.close();
  exit(0);
}
