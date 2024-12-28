import 'dart:io';

void main() {
  bool isRunning = true;

  while (isRunning) {
    print('\nSimple Calculator');
    print('-------------------');
    print('1. Start Calculation');
    print('2. Exit');
    stdout.write('Select menu(1/2): ');

    try {
      int? menu = int.parse(stdin.readLineSync()!);

      if (menu == 2) {
        print('Thank you for using the calculator');
        isRunning = false;
        continue;
      } else if (menu != 1) {
        print('Menu is invalid');
        continue;
      }

      stdout.write('Enter the first number: ');
      int? number1 = int.tryParse(stdin.readLineSync()!);
      if (number1 == null) {
        print('Error: Input must be a number');
        continue;
      }

      stdout.write("Enter the second number: ");
      int? number2 = int.tryParse(stdin.readLineSync()!);
      if (number2 == null) {
        print('Error: Input must be a number');
        continue;
      }

      stdout.write('Select operation (+, -, *, /, %): ');
      String? operation = stdin.readLineSync();

      switch (operation) {
        case '+':
          print('Result: ${number1 + number2}');
          break;
        case '-':
          print('Result: ${number1 - number2}');
          break;
        case '*':
          print("Result: ${number1 * number2}");
          break;
        case '/':
          if (number2 != 0) {
            print('Result: ${number1 / number2}');
          } else {
            print('Error: Division by zero!');
          }
          break;
        case '%':
          if (number2 != 0) {
            print('Result: ${number1 % number2}');
          } else {
            print('Error: Modulus by zero');
          }
          break;
        default:
          print('Invalid operation');
      }
    } catch (e) {
      print('Error: Invalid input');
    }
  }
}
