
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void work() {
    print('Employee is working.');
  }
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  void work() {
    print('Developer is writing code.');
  }
}

class Designer extends Employee {
  Designer(String name, double salary) : super(name, salary);

  @override
  void work() {
    print('Designer is creating designs.');
  }
}

void main() {
  Developer developer = Developer('myrna', 15000);
  Designer designer = Designer('Menna', 12000);

  developer.work();
  designer.work();
}
