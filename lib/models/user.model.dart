class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.ktp,
    required this.phone,
    this.photo,
  });

  final String id;
  final String name;
  final String email;
  final String ktp;
  final String phone;
  final String? photo;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      ktp: json['ktp'],
      phone: json['phone'],
      photo: json['photo'],
    );
  }

  Map<String, dynamic> get toJson => {
        "id": id,
        "name": name,
        "email": email,
        "ktp": ktp,
        "phone": phone,
        "photo": photo,
      };

  String get firstName {
    return name.split(" ").first;
  }

  String? get lastName {
    final words = name.split(" ");
    if (words.length == 1) return words.first;
    return words.last;
  }
}
