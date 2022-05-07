import 'dart:io';

main() async {
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  var writer = stdout.nonBlocking;
  int x1 = nums.elementAt(0);
  int x2 = nums.elementAt(2);
  int v1 = nums.elementAt(1);
  int v2 = nums.elementAt(3);
  var k = null;

  if (x1 > x2 && v1 > v2 || x2 > x1 && v2 > v1) {
    writer.write("NO");
  } else {
    if (x1 > x2) {
      while (x1 >= x2) {
        x1 += v1;
        x2 += v2;
        if (x1 == x2) {
          k = true;
        }
      }
    } else if (x2 < x1) {
      while (x1 <= x2) {
        x1 += v1;
        x2 += v2;
        if (x1 == x2) {
          k = true;
        }
      }
    } else {
      k = true;
    }
  }

  if (k == true) {
    writer.write("YES");
  } else if (k == false) {
    writer.write("NO");
  }

  await writer.close();
  exit(0);
}
