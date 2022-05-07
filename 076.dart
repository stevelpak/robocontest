import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  int narxi = int.parse(stdin.readLineSync()!);
  var s = 0;

  for (var item in nums) {
    s += item;
  }

  var writer = stdout.nonBlocking;

  if (narxi > s) {
    writer.write(narxi - s);
  } else {
    writer.write(0);
  }

  await writer.close();
  exit(0);
}
