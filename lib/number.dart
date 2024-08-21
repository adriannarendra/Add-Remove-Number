import 'dart:io';

void main(){
  print('Number Managment System');
  while (true) {
    print('Choose your option:');
    print('1. Add number');
    print('2. Remove number');
    print('3. Display number');
    print('4. Exit');

    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
          print('Type the number you want to add');
          int number = int.parse(stdin.readLineSync()!);
          addNumber(number);
        break;

      case 2:
          print('Type the number you want to remove');
          int number = int.parse(stdin.readLineSync()!);
          removeNumber(number);
        break;

      case 3:
          print('Your list:');
          displayNumbers();
        break;
      
      case 4:
          print('Exiting...');
        return;
      default:
        print('Your choice is invalid');
    }
  }
}

List<int> numbers = [];

void addNumber(number){
  numbers.add(number);
  print('Number added: $number');
}

void removeNumber(number){
  if (numbers.remove(number)) {
    print('Number removed: $number');
  } else {
    print('Invalid number');
  }
}

void displayNumbers(){
  if (numbers.isEmpty) {
    print('The list is empty');
  } else {
    for (var number in numbers) {
      print(number);
    }
  }
}