import 'dart:io';

void main() {
  print('Simple Calculator');
  print('-----------------');

  // First input
  stdout.write('Enter the first number: ');
  int? number1 = int.parse(stdin.readLineSync()!);

  // Second input
  stdout.write('Enter the second number: ');
  int? number2 = int.parse(stdin.readLineSync()!);

  // Operation input
  stdout.write('Select operation (+, -, *, /): ');
  String? operation = stdin.readLineSync();

  // Calculation process
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
        print("Result: ${number1 / number2}");
      } else {
        print('Error: Division by zero!');
      }
      break;
    default:
      print('Invalid operation');
  }
}
