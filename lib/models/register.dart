class Register {
  String? name;
  String? email;
  String? password;
  String? phone;

  Register({this.name, this.email, this.password, this.phone});

  Register.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    return data;
  }
}
