import 'dart:io';
import 'dart:math';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  var sum = 0;

  for (var item in nums) {
    sum += item;
  }

  var writer = stdout.nonBlocking;
  writer.write("${sum - nums.reduce(max)} ${sum - nums.reduce(min)}");
  await writer.close();
  exit(0);
}
