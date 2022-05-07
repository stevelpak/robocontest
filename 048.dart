import 'dart:io';

main() async {
  int n = int.parse(stdin.readLineSync()!);
  int bosh = 1;
  var writer = stdout.nonBlocking;

  for (var i = 1; i <= n; i++) {
    for (var j = 0; j < i; j++) {
      writer.write("$bosh ");
      bosh++;
    }
    writer.write("\n");
  }

  await writer.close();
  exit(0);
}
