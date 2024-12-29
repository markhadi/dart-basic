import 'dart:io';

void main() {
  stdout.write('Input your name: ');
  String? name = stdin.readLineSync();

  stdout.write('Input your age: ');
  String? ageStr = stdin.readLineSync();
  int? age;

  if (ageStr != null) {
    age = int.tryParse(ageStr);
  }

  if (name != null && age != null) {
    if (age < 1) {
      print('$name, you are still a baby');
    } else if (age >= 1 && age <= 5) {
      print('$name, you are still a toddler');
    } else if (age >= 6 && age <= 12) {
      print('$name, you are still a child');
    } else if (age >= 13 && age <= 17) {
      print('$name, you are a teenager');
    } else {
      print('$name, you are an adult');
    }
  } else {
    if (name == null) {
      print('Error: Name must not be empty');
    }
    if (age == null) {
      print('Error: Age must not be empty or not a number');
    }
  }
}
