import 'dart:io';
import 'dart:math';

void main(){
  var n;
  stdout.write('Enter n: ');
  n = int.parse(stdin.readLineSync()??'');

  List<int> ls = [];
  for (int i = 0; i < n; i++) {
    int rnd = Random().nextInt(n)+1;
    ls.add(rnd);
    stdout.write('random[$i] = $rnd\n');
  }
  print('----------------------------');

  //Duplicate
  Set<int> uniqueNum = Set<int>();
  List<int> dup = [];
  for (int num in ls) {
    if (!uniqueNum.add(num)){
      dup.add(num);
    }
  }
  // if (dup.isNotEmpty) {
  //   stdout.write('Duplicate numbers: {${dup.join(', ')}}\n');
  // }
  stdout.write('Duplicate numbers: ${dup.toSet()}\n');


  //Missing
  Set<int> missNumb = Set<int>.from(List<int>.generate(n, (index) => index));
  for (int num in ls) {
    missNumb.remove(num);
  }
  stdout.write('Missing numbers: $missNumb\n');

}