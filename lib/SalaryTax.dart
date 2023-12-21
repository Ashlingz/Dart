import 'dart:io';

void main()
{
  double salary, bonus;
  int spouse, children;

  stdout.write('Enter Salary = ');
  salary = double.parse(stdin.readLineSync()??'');
  stdout.write('Enter Bonus = ');
  bonus = double.parse(stdin.readLineSync()??'');
  stdout.write('Enter Spouse = ');
  spouse = int.parse(stdin.readLineSync()??'');
  stdout.write('Enter Children = ');
  children = int.parse(stdin.readLineSync()??'');

  if(salary >= 0 && bonus >= 0)
  {
    if(spouse >=1){
      spouse =1;
    }else{
      spouse =0;
    }
    if(children >= 9) {
      children = 9;
    }else if(children <= 0)
    {
      children =0;
    }
    int family = 150000 * (spouse + children);
    double tax, lastSalary;
    salary = salary - family;

    if(salary <= 1300000){
      tax = 0;
    }else if(salary <= 2000000){
      tax = salary * 0.05 -60000;
    }else if(salary <= 8500000){
      tax = salary * 0.1 -160000;
    }else if(salary <= 12500000){
      tax = salary * 0.15 -585000;
    }else{
      tax = salary * 0.2 -1210000;
    }
    tax += bonus * 0.2;
    lastSalary = (salary + family + bonus) - tax;

    print("==============================");
    print('Tax= $tax');
    print('lastSalary= $lastSalary');

  }
}