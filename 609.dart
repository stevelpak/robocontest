import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  var writer = stdout.nonBlocking;
  if (nums.elementAt(1) % nums.elementAt(0) == 0) {
    writer.write("Yes");
  } else {
    writer.write("No");
  }
  await writer.close();
  exit(0);
}
