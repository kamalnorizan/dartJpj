void main() {
  Car car1 = new Car("Sedan", "Honda", cc: 2.0, color: "Red");
  Car car2 = new Car("MPV", "Toyota", year: 2018, color: "Blue");
  Car car3 = new Car(
    "Sedan",
    "Honda",
    color: "Black",
    cc: 1.8,
    year: 2017,
  );

  car1.printCar();
  car2.printCar();
  car3.printCar();
}

class Car {
  String model;
  double? cc;
  int? year;
  String color;
  String brand;

  Car(this.model, this.brand, {this.cc, this.year, required this.color});

  void printCar() {
    print("Model: " + model);
    print("CC: " + cc.toString());
    print("Year: " + year.toString());
    print("Color: " + color);
    print("Brand: " + brand);
    print("======================");
  }
}
