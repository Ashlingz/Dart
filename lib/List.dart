void main() {
  var ls = [];
  ls.add(10);
  ls.add('SETEC');
  ls.add(3.4);
  print(ls);

  var ls1 = List<int>.filled(100, 0,growable: true);
  ls1.add(10);
  print(ls1);

  List<int> ls2=[1,2,3,4,5,6,7,1,2,3];
  var set1 = [1,2,3,4,5,6,1,2,3,1,2,3,4];
  print(set1);

  for(int i=0;i<ls2.length;i++){
    print('ls2[$i] = ${ls2[i]}');
  }
  print('--------------------');
  for(var v in ls2){
    print(v);
  }
  print('---------------------');
  for(int v in set1){
    print(v);
  }

}


