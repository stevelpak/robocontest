import 'dart:io';

main() {
  int son = int.parse(stdin.readLineSync()!);
  switch (son) {
    case 1:
    case 2:
    case 12:
      print("Winter");
      break;
    case 3:
    case 4:
    case 5:
      print("Spring");
      break;
    case 6:
    case 7:
    case 8:
      print("Summer");
      break;
    case 9:
    case 10:
    case 11:
      print("Autumn");
      break;
    default:
      print(Error);
      break;
  }
  exit(0);
}
