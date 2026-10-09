
void main() {
  Map<String, dynamic> student = {
    'name': 'Myrna',
    'age': 20,
    'grade': 92.5,
    'isPassed': true,
  };

  print('Student Information');
  print('Name: ${student['name']}');
  print('Age: ${student['age']}');
  print('Grade: ${student['grade']}');
  print('Passed: ${student['isPassed']}');

  student['grade'] = 96.0;

  print('\nUpdated Student Information');
  print(student);
}
