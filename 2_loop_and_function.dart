import "dart:io";

int factorial(int n) {
  if (n < 0) {
    return -1;
  }
  int result = 1;
  for (int i = 1; i < n; i++) {
    result *= i;
  }
  return result;
}

void printPattern(int height) {
  if (height < 0) {
    print('Error: Height must be positive');
    return;
  }
  for (int i = 1; i <= height; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}

void main() {
  stdout.write('Enter a positive integer number: ');
  String? inputStr = stdin.readLineSync();
  int? input;
  if (inputStr != null) {
    input = int.tryParse(inputStr);
  }
  if (input != null && input >= 0) {
    int factorialResult = factorial(input);
    if (factorialResult != -1) {
      print('The factorial of $input is $factorialResult');
    }
    printPattern(input);
  } else {
    print('Error: Invalid input, entered positional integer');
  }
}
