void main() {
  int num1 = 10;
  int num2 = 20;

  double d1 = 10.5;
  double d2 = 20.3;
  double resultD;

  // int result;
  print(num1 + num2);
  resultD = d2 + num1;
  print(resultD);

  String? name;
  String name2 = "World";
  String name3 = "Hello";

  name = name2;
  print(name2 + " " + name3);

  List numbers = [1, 2, 3, 4, 5];
  print(numbers[3]);

  Map students = new Map();
  students["name"] = "John";
  students["age"] = "13";
  print(students);
}
