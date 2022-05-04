import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));

  int num1 = nums.elementAt(0);
  int num2 = nums.elementAt(1);
  int num3 = nums.elementAt(2);
  var writer = stdout.nonBlocking;

  if (num1 > num2 && num1 > num3) {
    writer.write(num1);
  } else if (num2 > num1 && num2 > num3) {
    writer.write(num2);
  } else {
    writer.write(num3);
  }

  await writer.close();
  exit(0);
}
