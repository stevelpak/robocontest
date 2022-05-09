import 'dart:io';

main() async {
  int n = int.parse(stdin.readLineSync()!);

  if (n.isOdd) {
    print("Ali");
  } else {
    print("G'ani");
  }

  exit(0);
}
