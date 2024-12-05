class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String userType;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.userType,
  });

  // Factory constructor to create a User object from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      userType: json['user_type'],
    );
  }

  // Method to convert a User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'user_type': userType,
    };
  }
}
