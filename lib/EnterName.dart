import 'dart:io';

void main() {
  stdout.write('Enter n = ');
  int numberOfPeople = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> peopleList = [];

  for (int i = 1; i <= numberOfPeople; i++) {
    stdout.write('Enter ID = ');
    int id = int.parse(stdin.readLineSync()!);

    stdout.write('Enter Name = ');
    String name = stdin.readLineSync()!;

    stdout.write('Enter Gender = ');
    String gender = stdin.readLineSync()!;

    stdout.write('Enter Address = ');
    String address = stdin.readLineSync()!;
    print('---------------------------');

    Map<String, dynamic> person = {
      'ID': id,
      'Name': name,
      'Gender': gender,
      'Address': address,
    };

    peopleList.add(person);
  }

  print("ID\tName\tGender\tAddress");
  for (var person in peopleList) {
    print("${person['ID']}\t${person['Name']}\t\t${person['Gender']}\t${person['Address']}");
  }
}
