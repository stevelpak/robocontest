import 'dart:io';

main() {
  int n = int.parse(stdin.readLineSync()!);
  Iterable<int> nums =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  var k = true;

  for (var i = 0; i < n - 1; i++) {
    if (nums.elementAt(i + 1) - nums.elementAt(i) == 1) {
      continue;
    } else {
      k = false;
      break;
    }
  }

  if (k) {
    print("YES");
  } else {
    print("NO");
  }

  exit(0);
}
