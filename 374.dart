import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));

  List sonlar = nums.toList();
  sonlar.sort();

  var writer = stdout.nonBlocking;
  writer.write(sonlar.elementAt(2) - sonlar.elementAt(0));
  await writer.close();
  exit(0);
}
