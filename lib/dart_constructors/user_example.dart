class User {
  final int age;
  final String firstName;
  final String lastName;

  const User(
    this.age, {
    required this.firstName,
    required this.lastName,
  });
}

void main() {
  const user = User(
    42,
    firstName: 'toto',
    lastName: 'machin',
  );

  const user2 = User(
    42,
    firstName: 'toto',
    lastName: 'machin',
  );

  print(user == user2);
}
