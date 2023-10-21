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

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? ktp,
    String? phone,
    String? photo,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      ktp: ktp ?? this.ktp,
      phone: phone ?? this.phone,
      photo: photo ?? this.photo,
    );
  }

  String get firstName {
    final words = name.split(" ");
    words.removeLast();
    return words.join(" ");
  }

  String? get lastName {
    return name.split(" ").last;
  }
}
