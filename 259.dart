import 'dart:io';

main() async {
  var input = File('input.txt');
  var output = File('output.txt');
  int kalit = int.parse(input.readAsStringSync());
  int natija;
  String maktub = input.readAsStringSync();
  var writer = output.openWrite();

  for (var i = 0; i < maktub.length; i++) {
    natija = maktub[i].codeUnitAt(0);
    if (maktub[i] == '_') {
      writer.write(maktub[i]);
    } else if (natija >= 65 && natija <= 90) {
      writer.write(String.fromCharCode((natija + kalit - 65) % 26 + 65));
    } else {
      writer.write(String.fromCharCode((natija + kalit - 97) % 26 + 97));
    }
  }

  await writer.close();
  exit(0);
}
