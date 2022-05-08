import 'dart:io';

main() {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  int natija = nums.elementAt(0) + nums.elementAt(1) - nums.elementAt(2);
  if (natija >= 0) {
    print(natija);
  } else {
    print("Error");
  }
  exit(0);
}
