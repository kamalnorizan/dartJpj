void main() {
  Owner owner1 = new Owner('88888888', name: 'Zaid', gender: 'Male', age: 35);
  Owner owner2 =
      new Owner('77777777', name: 'Zainab', gender: 'Female', age: 35);

  Car car1 = new Car("Sedan", "Honda", cc: 2.0, color: "Red", owner: owner1);
  Car car2 = new Car("MPV", "Toyota", year: 2018, color: "Blue", owner: owner1);
  Car car3 = new Car("Sedan", "Honda",
      color: "Black", cc: 1.8, year: 2017, owner: owner2);

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
  Owner? owner;

  Car(this.model, this.brand,
      {this.cc, this.year, required this.color, this.owner});

  void printCar() {
    print("Model: " + model);
    print("CC: " + cc.toString());
    print("Year: " + year.toString());
    print("Color: " + color);
    print("Brand: " + brand);
    print("**********************");
    print("Owner IC: " + owner!.ic);
    print("Owner Name: " + owner!.name);
    print("Owner Gender: " + owner!.gender);
    print("Owner Age: " + owner!.age.toString());
    print("======================");
  }
}

class Owner {
  String name;
  int age;
  String gender;
  String ic;

  Owner(this.ic, {required this.name, required this.gender, required this.age});

  void printOwner() {
    print("Owner IC: " + this.ic);
    print("Owner Name: " + this.name);
    print("Owner Gender: " + this.gender);
    print("Owner Age: " + this.age.toString());
  }
}

class Person extends Owner {
  String? phone;
  String? address;
  Person(super.ic,
      {required super.name,
      required super.gender,
      required super.age,
      this.phone,
      this.address});

  void printPerson() {
    super.printOwner();
    print("Phone: " + this.phone.toString());
    print("Address: " + this.address.toString());
  }
}
