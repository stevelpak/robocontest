import 'dart:io';

main() async {
  int n = int.parse(stdin.readLineSync()!);
  int sanoq = 0;

  for (var i = 0; i < n; i++) {
    String yurish = stdin.readLineSync()!.toString();
    if (yurish[0] == "#" || yurish[1] == "#") {
      sanoq++;
    }
  }

  print(sanoq);
  exit(0);
}
