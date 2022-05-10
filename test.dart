import 'dart:io';

main() async {
  int kalit = int.parse(stdin.readLineSync()!);
  int natija;
  String maktub = stdin.readLineSync()!.toString();
  var writer = stdout.nonBlocking;

  for (var i = 0; i < maktub.length; i++) {
    natija = maktub[i].codeUnitAt(0);
    if (maktub[i] == '_') {
    } else if (natija >= 65 && natija <= 90) {
      maktub.replaceRange(
          i, i + 1, String.fromCharCode((natija + kalit - 65) % 26 + 65));
    } else {
      maktub.replaceRange(
          i, i + 1, String.fromCharCode((natija + kalit - 97) % 26 + 97));
    }
  }

  writer.write(maktub);
  await writer.close();
  exit(0);
}
