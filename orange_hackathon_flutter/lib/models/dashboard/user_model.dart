//we create a user model to store the user data
class User {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? email;
  //constructor with required keyword
  User(
      {required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.email});
}

//instance of the user model
User user = User(
    firstName: 'John',
    lastName: 'Doe',
    phoneNumber: '0123456789',
    email: 'TestMail23@gmail.com');
