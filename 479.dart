import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));

  var writer = stdout.nonBlocking;
  if (nums.last % 100 == 0) {
    writer.write((nums.last / 100).toInt());
  } else {
    writer.write(nums.last / 100);
  }
  await writer.close();
  exit(0);
}
