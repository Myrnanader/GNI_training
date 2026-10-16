class Car {
  String brand;
  String model;
  int year;
  int speed;

  Car(this.brand, this.model, this.year, this.speed);

  void accelerate() {
    speed += 10;
  }

  void brake() {
    if (speed >= 10) {
      speed -= 10;
    } else {
      speed = 0;
    }
  }

  void displayInfo() {
    print("Brand: $brand, Model: $model, Year: $year, Speed: $speed");
  }
}
