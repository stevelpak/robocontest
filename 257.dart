import 'dart:io';

main() async {
  var input = File('input.txt');
  var output = File('output.txt');
  var writer = output.openWrite();

  String s = "0" + input.readAsStringSync();
  int n = 0;
  for (int i = 0; i < s.length - 1; i++) {
    if (s[i] == '0' && s[i + 1] == '1' && n <= 2) {
      n++;
    }
  }

  if (n <= 1) {
    writer.write('YES');
  } else
    writer.write('NO');
 
  await writer.close();
  exit(0);
}