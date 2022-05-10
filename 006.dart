import 'dart:io';

main() async {
  int yil = int.parse(stdin.readLineSync()!);
  var writer = stdout.nonBlocking;

  if (yil % 400 == 0 || (yil % 4 == 0 && yil % 100 != 0)) {
    if (yil < 10) {
      writer.write("12/09/000$yil");
    } else if (yil < 100) {
      writer.write("12/09/00$yil");
    } else if (yil < 1000) {
      writer.write("12/09/0$yil");
    } else if (yil < 10000) {
      writer.write("12/09/$yil");
    }
  } else {
    if (yil < 10) {
      writer.write("13/09/000$yil");
    } else if (yil < 100) {
      writer.write("13/09/00$yil");
    } else if (yil < 1000) {
      writer.write("13/09/0$yil");
    } else if (yil < 10000) {
      writer.write("13/09/$yil");
    }
  }

  await writer.close();
  exit(0);
}
