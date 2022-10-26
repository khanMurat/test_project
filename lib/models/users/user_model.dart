class UserModel {
  String? name;
  String? surname;
  String? phone;
  String? avatar;
  String? email;
  String? id;
  String? description;

  UserModel({
    required this.name,
    required this.surname,
    required this.avatar,
    required this.email,
    required this.phone,
    required this.id,
    required this.description,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map["name"] as String,
      surname: map["surname"] as String,
      avatar: map["avatar"] as String,
      email: map["email"] as String,
      phone: map["phone"] as String,
      id: map["id"] as String,
      description: map["description"] as String,
    );
  }
}
