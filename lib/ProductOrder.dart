import 'dart:io';
import 'package:intl/intl.dart';

void main(){
  double p1,p2,p3, dis, total, disPrice, payment;
  stdout.write('Enter P1 = \$');
  p1 = double.parse(stdin.readLineSync()??'');
  stdout.write('Enter P2 = \$');
  p2 = double.parse(stdin.readLineSync()??'');
  stdout.write('Enter P3 = \$');
  p3 = double.parse(stdin.readLineSync()??'');

  stdout.write('Enter Discount = \%');
  dis = double.parse(stdin.readLineSync()??'');

  total = p1 + p2 + p3;
  disPrice = total * dis / 100;
  payment = total - disPrice;

  print('=====================================');
  var f = NumberFormat('\$#,##0,00');
  print('Total      = ${f.format(total)}');
  print('DisPrice   = ${f.format(disPrice)}');
  print('Payment    = ${f.format(payment)}');

}