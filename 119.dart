import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));

  var writer = stdout.nonBlocking;
  if (nums.last % 4 == 0) {
    writer.write((nums.last / 2).toInt());
  } else {
    writer.write(-1);
  }
  await writer.close();
  exit(0);
}
