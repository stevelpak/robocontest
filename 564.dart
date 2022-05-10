import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  var writer = stdout.nonBlocking;

  if (nums.last / (nums.first * (nums.elementAt(1) - 1)) > 1)
    writer.write(1);
  else
    writer.write(-1);

  await writer.close();
  exit(0);
}
