void main() {
  List<String> fruits = ['Apple', 'Manggo', 'Banana', 'Orange', 'Grape'];
  print('List starting fruit:');
  for (int i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  fruits.addAll(['Watermelon', 'Lychee']);
  print('\nList after add new fruit:');
  fruits.forEach((fruit) => print(fruit));

  fruits.removeAt(2);
  print('\nList after delete a fruit');
  fruits.forEach((fruit) => print(fruit));

  Map<String, int> students = {
    'Budi': 85,
    'Ani': 90,
    'Susi': 78,
    'Rudi': 92,
    'Dewi': 88
  };

  print('\nInital students data:');
  students.forEach((name, score) {
    print('$name: $score');
  });

  students['Tono'] = 70;
  print('\nStudents data after add new');
  students.forEach((name, score) {
    print('$name: $score');
  });

  students['Budi'] = 80;
  print('\nStudents data after update');
  students.forEach((name, score) {
    print('$name: $score');
  });

  print("\nIs Budi's key in the Map?");
  print(students.containsKey('Budi'));
}
