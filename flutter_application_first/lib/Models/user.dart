class User {
  final String username;
  final String password;

  User({
    required this.username,
    required this.password,
  });

  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     id: json['id'],
  //     email: json['email'],
  //     token: json['token'],
  //   );
  // }
}

