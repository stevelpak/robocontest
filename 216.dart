import 'dart:io';
import 'dart:math';

main() async {
  int son = int.parse(stdin.readLineSync()!);
  int sanoq = 0;
  var writer = stdout.nonBlocking;

  for (var i = 0; i <= son; i++) {
    if ((pow(i, 10) + 1) % 10 == 0) {
      sanoq++;
    }
  }

  writer.write(sanoq);

  await writer.close();
  exit(0);
}
