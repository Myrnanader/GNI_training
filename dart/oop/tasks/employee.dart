
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print('Name: $name');
    print('Salary: $salary');
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayLanguage() {
    print('Programming Language: $programmingLanguage');
  }
}

class Designer extends Employee {
  String designTool;

  Designer(String name, double salary, this.designTool)
      : super(name, salary);

  void displayTool() {
    print('Design Tool: $designTool');
  }
}

void main() {
  Developer developer = Developer('Myrna', 15000, 'Dart');
  Designer designer = Designer('Menna', 12000, 'Figma');

  print('Developer Information');
  developer.displayInfo();
  developer.displayLanguage();

  print('\nDesigner Information');
  designer.displayInfo();
  designer.displayTool();
}
