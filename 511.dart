import 'dart:io';

main() {
  Iterable<String> nums = stdin.readLineSync()!.split("");
  var sum = 0;

  if (nums.first == "-") {
    for (var i = 1; i < nums.length; i++) {
      sum += int.parse(nums.elementAt(i));
    }
    print(sum);
  } else {
    for (var i = 0; i < nums.length; i++) {
      sum += int.parse(nums.elementAt(i));
    }
    print(sum);
  }
  exit(0);
}
