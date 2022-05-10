import 'dart:io';

main() async {
  var writer = stdout.nonBlocking;
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  writer.write(nums.first * nums.last);
  await writer.close();
  exit(0);
}
