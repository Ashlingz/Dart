
void main(){
  List<int> ls = [1,2,3,4,5,6,7,8,9];

  showAllList(
    ls: ls,
    predict: (x) => x>= 3,
  );

}

bool myPredict(int x){
  return x %2==0;
}

void showAllList({required List ls, required Function predict}){
  for(var item in ls){
    if(predict(item)){
      print(item);
    }
  }
}


void show({required int id,String name='No name',int age=18}){
  print('ID    = $id');
  print('Name  = $name');
  print('Age   = $age');
}
int findMax (int a,int b) => a>b ? a:b;