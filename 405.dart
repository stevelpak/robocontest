import 'dart:io';

main() async {
  Iterable<int> koordinatalar =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  int x1 = koordinatalar.elementAt(0);
  int x2 = koordinatalar.elementAt(2);
  int y1 = koordinatalar.elementAt(1);
  int y2 = koordinatalar.elementAt(3);
  var writer = stdout.nonBlocking;

  if (x2 - x1 > y2 - y1) {
    if ((x2 - x1).isEven) {
      writer.write((x2 - x1) ~/ 2);
    } else {
      writer.write((x2 - x1) / 2);
    }
  } else {
    if ((y2 - y1).isEven) {
      writer.write((y2 - y1) ~/ 2);
    } else {
      writer.write((y2 - y1) / 2);
    }
  }

  await writer.close();
  exit(0);
}
