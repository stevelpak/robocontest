import 'dart:io';

main() async {
  List<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();

  print(((nums.first - nums.last).abs() / 10).ceil());

  exit(0);
}
