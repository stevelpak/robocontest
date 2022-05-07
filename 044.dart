import 'dart:io';

main() async {
  int yil = int.parse(stdin.readLineSync()!);

  var writer = stdout.nonBlocking;
  if (yil % 400 == 0 || (yil % 4 == 0 && yil % 100 != 0)) {
    writer.write("Kabisa yili");
  } else {
    writer.write("Kabisa yili emas");
  }
  await writer.close();
  exit(0);
}
