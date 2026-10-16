
class Employee {
  String name;
  int employeeId;
  double salary;

  Employee(this.name, this.employeeId, this.salary);

  void addBonus(double bonus) {
    salary += bonus;
  }

  void calculateSalary() {
    print("final Salary : $salary");
    if (salary >= 10000) {
      print("High Salary");
    } else {
      print("regular Salary");
    }
  }

  void displayInfo() {
    print("Employee Name : $name");
    print("Employee ID: $employeeId");
    print("Basic Salary : $salary");
  }
}
