import 'dart:io';

import 'dart:math';

main() async {
  int sum = int.parse(stdin.readLineSync()!);
  var writer = stdout.nonBlocking;

  writer.write((-1 + sqrt(1 + 8 * sum)) ~/ 2);
  await writer.close();
  exit(0);
}
