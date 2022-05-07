import 'dart:io';
import 'dart:math';

main() async {
  Iterable<double> nums =
      stdin.readLineSync()!.split(" ").map((e) => double.parse(e));
  var writer = stdout.nonBlocking;
  num urta_a = (nums.elementAt(0) + nums.elementAt(1)) / 2;
  num urta_g = sqrt(nums.elementAt(0) * nums.elementAt(1));

  if (urta_a > urta_g) {
    writer.write(">");
  } else if (urta_g > urta_a) {
    writer.write("<");
  } else {
    writer.write("=");
  }

  await writer.close();
  exit(0);
}
