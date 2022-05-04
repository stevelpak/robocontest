import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));

  int N = nums.elementAt(0);
  var writer = stdout.nonBlocking;
  if (N > 3) {
    double natija = N * (N - 3) / 2;
    writer.write(natija.toInt());
  } else {
    writer.write(0);
  }
  await writer.close();
  exit(0);
}
