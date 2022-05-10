import 'dart:io';

main() async {
  int n = int.parse(stdin.readLineSync()!);
  var writer = stdout.nonBlocking;
  List F = [0, 1];

  for (var i = 2; i <= 45; i++) {
    F.add(F[i - 2] + F[i - 1]);
  }

  writer.write(F[n] * 2);
  await writer.close();
  exit(0);
}
