import 'dart:io';

main() async {
  List m_n = stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();
  List toshlar =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();
  bool k = false;
  var writer = stdout.nonBlocking;

  for (var i = 0; i < toshlar.length - 1; i++) {
    for (var j = 0; j < toshlar.length - 1; j++) {
      int son = toshlar[j];
      if (toshlar[j] < toshlar[j + 1]) {
        toshlar[j] = toshlar[j + 1];
        toshlar[j + 1] = son;
      }
    }
  }

  for (var i = 0; i < m_n.last; i++) {
    m_n.first -= toshlar[i];
    if (m_n.first <= 0) {
      k = true;
      writer.write(i + 1);
      break;
    }
  }

  if (k == false) {
    writer.write(-1);
  }

  await writer.close();
  exit(0);
}
