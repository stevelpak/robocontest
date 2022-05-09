import 'dart:io';

main() async {
  String programm = (stdin.readLineSync()!).toString();
  bool k = true;
  var writer = stdout.nonBlocking;

  for (var i = 0; i < programm.length; i++) {
    if (programm[i] == "P" || programm[i] == "Q" || programm[i] == "7") {
      print("yes");
      k = false;
      break;
    }
  }

  if (k) {
    print("no");
  }

  await writer.close();
  exit(0);
}
