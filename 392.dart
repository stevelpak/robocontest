import 'dart:io';

main() async {
  int n = int.parse(stdin.readLineSync()!);
  List<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();

  for (var i = 0; i < n; i++) {
    if (nums.elementAt(i) == 1) {
      print(0);
    } else {
      print(nums.elementAt(i) ~/ 2);
    }
  }

  exit(0);
}
