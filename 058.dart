import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));

  var writer = stdout.nonBlocking;
  writer.write(7 - nums.elementAt(0));
  await writer.close();
  exit(0);
}
