import 'dart:io';

// class for Calculator
class Calculator {
  // Properties
  double? number1;
  double? number2;

  // Constructor
  Calculator({this.number1, this.number2});

  // Methods (Function within class)
  double add() => number1! + number2!;
  double subtract() => number1! - number2!;
  double multiply() => number1! * number2!;

  double? divide() {
    if (number2 != 0) {
      return number1! / number2!;
    }
    return null;
  }

  double? modulus() {
    if (number2 != 0) {
      return number1! % number2!;
    }

    return null;
  }
}

// Function for input number
double? inputNumber(String message) {
  while (true) {
    try {
      stdout.write(message);
      String? input = stdin.readLineSync();
      if (input == null) return null;
      return double.tryParse(input);
    } catch (e) {
      print('Error: Invalid input');
    }
  }
}

// Function to display the menu
void displayMenus() {
  print('\nSimple Calculator');
  print('-------------------');
  print('1. Start Calculation');
  print('2. Exit');
}

// Functions for mathematical operations
void doOperation(Calculator calc, String operation) {
  switch (operation) {
    case '+':
      print('Result: ${calc.add()}');
      break;
    case '-':
      print('Result: ${calc.subtract()}');
      break;
    case '*':
      print('Result: ${calc.multiply()}');
      break;
    case '/':
      double? result = calc.divide();
      if (result != null) {
        print('Result: ${result}');
      } else {
        print('Error: Division by zero');
      }
      break;
    case '%':
      double? result = calc.modulus();
      if (result != null) {
        print('Result: $result');
      } else {
        print('Error: Modulus by zero');
      }
      break;
    default:
      print("Invalid operation");
  }
}

void main() {
  bool isRunning = true;

  while (isRunning) {
    displayMenus();
    stdout.write('Select menu (1/2): ');

    try {
      int? menu = int.parse(stdin.readLineSync()!);

      if (menu == 2) {
        print('Thank you for the using the calculator');
        isRunning = false;
        continue;
      } else if (menu != 1) {
        print('Menu is invalid');
        continue;
      }

      // Input numbers using functions
      double? number1 = inputNumber('Enter the first number: ');
      double? number2 = inputNumber('Enter the second number: ');

      if (number1 == null || number2 == null) {
        print('Error: Invalid input');
        continue;
      }

      // Create a Calculator instance
      Calculator calc = Calculator(number1: number1, number2: number2);

      stdout.write('Select operation (+, -, *, /, %): ');
      String? operation = stdin.readLineSync();

      if (operation == null) {
        print('Error: Invalid operation');
        continue;
      }

      doOperation(calc, operation);
    } catch (e) {
      print('Error: Invalid input');
    }
  }
}
