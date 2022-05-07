import 'dart:io';

main() async {
  var writer = stdout.nonBlocking;

  await writer.close();
  exit(0);
}
