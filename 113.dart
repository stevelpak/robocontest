import 'dart:io';

main() async {
  int baho = int.parse(stdin.readLineSync()!);
  var writer = stdout.nonBlocking;

  if (baho < 38) {
    writer.write(baho);
  } else {
    if ((baho + 1) % 5 == 0) {
      writer.write(baho + 1);
    } else if ((baho + 2) % 5 == 0) {
      writer.write(baho + 2);
    } else {
      writer.write(baho);
    }
  }

  await writer.close();
  exit(0);
}
