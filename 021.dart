import 'dart:io';

main() {
  List<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();
  print((nums.first / 2).ceil() +
      (nums.elementAt(1) / 2).ceil() +
      (nums.last / 2).ceil());
  exit(0);
}
