import 'dart:io';

main() async {
  List<int> chipta = stdin.readLineSync()!.split("").map(int.parse).toList();
  int left = 0, right = 0;
  var writer = stdout.nonBlocking;

  if (chipta.length.isEven) {
    for (var i = 0; i < chipta.length; i++) {
      if (i < chipta.length / 2) {
        left += chipta[i];
      } else {
        right += chipta[i];
      }
    }
    writer.write(right == left ? "YES" : "NO");
  } else {
    writer.write("NO");
  }

  await writer.close();
  exit(0);
}
