class User {
  final String firstName;
  final String lastName;

  const User({required this.firstName, required this.lastName});
}

void main() {
  const user = User(firstName: 'toto', lastName: 'machin');
  final user2 = User(firstName: 'toto', lastName: 'machin');

  print(user == user2);
}
