import 'dart:io';
import 'dart:math';

class Triangle {
  double base;
  double height;

  Triangle(this.base, this.height) {
    if (base <= 0 || height <= 0) {
      throw ArgumentError('Base and Height must be positive');
    }
  }

  double calculateArea() {
    return 0.5 * base * height;
  }
}

class Circle {
  double radius;

  Circle(this.radius) {
    if (radius <= 0) {
      throw ArgumentError('Radius must be positive');
    }
  }

  double calculateArea() {
    return pi * radius * radius;
  }
}

void main() {
  try {
    stdout.write('Input the base of the triangle: ');
    double base = double.parse(stdin.readLineSync()!);
    stdout.write('Input the height of the triangle: ');
    double height = double.parse(stdin.readLineSync()!);

    Triangle triangle = Triangle(base, height);
    print('Area of triangle: ${triangle.calculateArea()}');

    stdout.write('Input the radius of the circle: ');
    double radius = double.parse(stdin.readLineSync()!);

    Circle circle = Circle(radius);
    print('Area of circle: ${circle.calculateArea()}');
  } catch (e) {
    print('Invalid input: $e');
  }
}
