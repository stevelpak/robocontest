import 'dart:io';

main() {
  int son = int.parse(stdin.readLineSync()!);

  if (son < 0) {
    son = son.abs();
    if (son < 10) {
      print(son * (-1));
    } else {
      print(int.parse(son.toString().substring(1, son.toString().length)) -
          int.parse(son.toString().substring(0, 1)));
    }
  } else {
    print(son);
  }

  exit(0);
}
