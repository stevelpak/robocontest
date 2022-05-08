import 'dart:io';

main() async {
  int aholi_soni = int.parse(stdin.readLineSync()!);
  Iterable<int> aholi_immuni =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e));
  int virus_soni = int.parse(stdin.readLineSync()!);
  var writer = stdout.nonBlocking;

  for (var i = 0; i < virus_soni; i++) {
    int v_immuni = int.parse(stdin.readLineSync()!);
    int counter = 0;
    for (var j = 0; j < aholi_soni; j++) {
      if (v_immuni >= aholi_immuni.elementAt(j)) {
        counter++;
      }
    }
    writer.write("$counter \n");
  }
  await writer.close();
  exit(0);
}
