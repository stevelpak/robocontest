import 'dart:io';

main() async {
  var writer = stdout.nonBlocking;
  String uzum = "1252";
  writer.write(int.parse(uzum.substring(0, 1)));
  await writer.close();
  exit(0);
}
