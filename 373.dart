import 'dart:io';

main() async {
  List chipta = stdin.readLineSync()!.split("").toList();
  int left = int.parse(chipta[0]) + int.parse(chipta[2]) + int.parse(chipta[1]);
  int right =
      int.parse(chipta[3]) + int.parse(chipta[5]) + int.parse(chipta[4]);
  ;
  var writer = stdout.nonBlocking;

  if (chipta.length == 6 && (right == left)) {
    writer.write("YES");
  } else {
    writer.write("NO");
  }

  await writer.close();
  exit(0);
}
