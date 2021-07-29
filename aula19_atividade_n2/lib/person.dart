class Person {
  final String name;
  final String email;
  final double age;

  Person(
      this.name,
      this.email,
      this.age,
      );

  @override
  String toString() {
    return 'Data{Name: $name, Email: $email, Age: $age}';
  }
}