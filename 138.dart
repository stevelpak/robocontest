import 'dart:io';
import 'dart:math';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  int x = nums.last;
  var writer = stdout.nonBlocking;
  writer.write(pow(x, 5) + 8 * pow(x, 4) - 5 * pow(x, 3) + 3 * x * x + x - 12);
  await writer.close();
  exit(0);
}
