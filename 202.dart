import 'dart:io';

main() async {
  Iterable<int> son = stdin.readLineSync()!.split("").map((e) => int.parse(e));
  int sum = 0;
  var writer = stdout.nonBlocking;

  for (var i = 0; i < son.length; i++) {
    switch (son.elementAt(i)) {
      case 0:
      case 6:
      case 9:
        sum += 6;
        break;
      case 1:
        sum += 2;
        break;
      case 2:
      case 3:
      case 5:
        sum += 5;
        break;
      case 4:
        sum += 4;
        break;
      case 7:
        sum += 3;
        break;
      case 8:
        sum += 7;
        break;
    }
  }
  writer.write(sum);

  await writer.close();
  exit(0);
}
