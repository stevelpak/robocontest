import 'dart:io';

main() async {
  int testlar = int.parse(stdin.readLineSync()!);
  var writer = stdout.nonBlocking;

  for (var i = 0; i < testlar; i++) {
    Iterable<int> nums =
        stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
    writer.write(2 * nums.elementAt(2) - nums.elementAt(0));
    writer.write(" ");
    writer.write(2 * nums.elementAt(3) - nums.elementAt(1));
    writer.write("\n");
  }

  await writer.close();
  exit(0);
}
