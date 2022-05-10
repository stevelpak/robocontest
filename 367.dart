import 'dart:io';

main() async {
  String son = stdin.readLineSync()!.toString();
  int sum = 0;
  var writer = stdout.nonBlocking;

  for (var i = 0; i < son.length; i++) {
    sum += int.parse(son[i]);
  }

  writer.write(sum);
  await writer.close();
  exit(0);
}
