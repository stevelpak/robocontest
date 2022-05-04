import 'dart:io';

main() async {
  Iterable<int> N = stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  int sum = nums.elementAt(0) + nums.elementAt(1) + nums.elementAt(2);
  var writer = stdout.nonBlocking;
  if (N.elementAt(0) <= sum) {
    writer.write("Yes");
  } else {
    writer.write("No");
  }
  await writer.close();
  exit(0);
}
