import 'dart:io';

main() async {
  String num = "";
  int c = 0;
  num = "0" + stdin.readLineSync()!.toString();

  for (var i = 0; i < num.length - 1; i++) {
    if (num[i] == "0" && num[i + 1] == "1" && c <= 2) {
      c += 1;
    }
  }

  var writer = stdout.nonBlocking;
  if (c <= 1) {
    writer.write("YES");
  } else {
    writer.write("NO");
  }
  await writer.close();
  exit(0);
}
