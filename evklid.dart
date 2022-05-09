import 'dart:io';

main() {
  int son1 = int.parse(stdin.readLineSync()!);
  int son2 = int.parse(stdin.readLineSync()!);

  while (son1 != son2) {
    if (son1 > son2) {
      son1 %= son2;
    } else {
      son2 %= son1;
    }

    if (son1 == 0) {
      son1 = son2;
    }
    if (son2 == 0) {
      son2 = son1;
    }
  }

  print(son1);

  exit(0);
}
