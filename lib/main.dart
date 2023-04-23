import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(
    this.name,
    this.age,
  );

  final String name;
  final int age;

  @override
  List<Object> get props => [name, age];

  // Manualmente
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is Person && runtimeType == other.runtimeType && name == other.name;

  // @override
  // int get hashCode => name.hashCode;
}

void main() {
  const Person bob = Person("Bob", 30);
  const Person bob2 = Person("Bob", 30);

  print(bob == bob2);
  // print(bob == Person("Bob")); // false
}
