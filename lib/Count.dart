import 'dart:io';
import 'dart:math';

void main() {
  // var n;
  // stdout.write('Enter n: ');
  // n = int.parse(stdin.readLineSync() ?? '');

  // List<int> ls = [];
  // for (int i = 0; i < n; i++) {
  //   int rnd = Random().nextInt(n)+1;
  //   ls.add(rnd);
  //   stdout.write('random[$i] = $rnd\n');
  // }
  // print('----------------------------');
  // print('Count Values Array');

  // Set<int> count = ls.toSet();
  // for (int num in count) {
  //   int numCount = ls.where((element) => element == num).length;
  //   int index = ls.indexOf(num);
  //   print('Element[$index] = $num count = $numCount');
  // }

  // var n;
  // stdout.write('Enter n: ');
  // n = int.parse(stdin.readLineSync() ?? '');
  //
  // List<int> ls = [];
  // for (int i = 0; i < n; i++) {
  //   int rnd = Random().nextInt(5)+1;
  //   ls.add(rnd);
  //   stdout.write('random[$i] = $rnd\n');
  // }
  // print('----------------------------');
  // print('');
  //
  // for (int i = 1; i <= 5; i++){
  //   int count = ls.where((element) => element == i).length;
  //   var pers = count / n * 100;
  //   print('$i = $pers%');
  // }

  stdout.write('Enter n: ');
  final n = int.parse(stdin.readLineSync() ?? '');
  final random = Random();

  final gachaOptions = [
    [1, 0.1],
    [2, 0.1],
    [3, 0.15],
    [4, 0.2],
    [5, 0.4],
  ];

  for (var i = 0; i < n; i++) {
    final gacha = gachaOptions.firstWhere(
          (option) => random.nextDouble() < option[1],
      orElse: () => [1, 0.0], // Default value if no option is selected
    );
    print("pull[${i + 1}] = ${gacha[0]}");
  }
}
