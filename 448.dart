import 'dart:io';

main() async {
  List<int> natijalar =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();
  var writer = stdout.nonBlocking;
  if (natijalar.elementAt(0) * natijalar.elementAt(3) * natijalar.elementAt(3) +
          natijalar.elementAt(1) * natijalar.elementAt(3) +
          natijalar.elementAt(2) ==
      0) {
    writer.write("YES");
  } else {
    writer.write("NO");
  }
  await writer.close();
  exit(0);
}
