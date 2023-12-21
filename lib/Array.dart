import 'dart:io';

void main(){
  var n;
  stdout.write('Enter n: ');
  n = int.parse(stdin.readLineSync()??'');

  List<int> ls=[];
  for(int i=0; i<n; i++){
    stdout.write('Enter ls[$i] = ');
    ls.add(int.parse(stdin.readLineSync()??''));
  }

  print('List All Values');
  for(int i=0; i<ls.length; i++){
    print('ls[$i] = ${ls[i]}');
  }

  Set<int> set = ls.toSet();
  int i=0;
  for(int v in set){
    print('set[$i] = $v');
    i++;
  }
}