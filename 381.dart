import 'dart:io';

main() async {
  int qoldiq = int.parse(stdin.readLineSync()!) % 50 + 1;
  var writer = stdout.nonBlocking;

  if (qoldiq > 0 && qoldiq <= 25) {
    writer.write("O__");
  } else if (qoldiq >= 26 && qoldiq <= 29) {
    writer.write("OO_");
  } else if (qoldiq >= 30 && qoldiq <= 35) {
    writer.write("_O_");
  } else {
    writer.write("__O");
  }

  await writer.close();
  exit(0);
}
