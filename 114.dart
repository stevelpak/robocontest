import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  var writer = stdout.nonBlocking;
  int x1 = nums.elementAt(0);
  int x2 = nums.elementAt(2);
  int v1 = nums.elementAt(1);
  int v2 = nums.elementAt(3);

  if (((x2 - x1) * (v2 - v1) < 0) && ((x2 - x1) % (v1 - v2) == 0)) {
    writer.write("YES");
  } else {
    writer.write("NO");
  }

  await writer.close();
  exit(0);
}
