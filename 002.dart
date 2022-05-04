import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));

  int num1 = nums.elementAt(0);
  int num2 = nums.elementAt(1);

  if (num1 > num2) {
    print(">");
  } else if (num2 > num1) {
    print("<");
  } else {
    print("=");
  }

  exit(0);
}
