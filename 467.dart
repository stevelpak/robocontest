import 'dart:io';

main() async {
  List<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();
  if (nums.last % 2 != 0) {
    print(-1);
  } else {
    print(nums.first + 1 + nums.last ~/ 2);
  }
  exit(0);
}
