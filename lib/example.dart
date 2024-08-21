import 'dart:io';

void main() {
  print('Number managment system');
  while(true){
    print('choose an option:');
    print('1. Add a number');
    print('2. Remove a number');
    print('3. Display numbers');
    print('4. Exit');

    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Enter a number to add');
        int number = int.parse(stdin.readLineSync()!);
        addNumber(number);
        break;
      
      case 2:
        print('Enter a number to remove');
        int number = int.parse(stdin.readLineSync()!);
        removeNumber(number);
        break;

      case 3:
        displayNumbers();
      break;

      case 4:
        print('Exiting...');
        return;
      default:
        print('Invalid choice, please try again');
    }
  }
}

List<int> numbers = [];

void addNumber(int number){
  numbers.add(number);
  print('Number added: $number');
}

void removeNumber(int number){
  if(numbers.remove(number)){
    print('Number removed: $number');
  } else {
    print('Number not found');
  }
}

void displayNumbers(){
  if(numbers.isEmpty){
    print('The list is empty');
  } else {
    print('Numbers in the list:');
    for (var number in numbers) {
      print(number);
    }
  }
}
