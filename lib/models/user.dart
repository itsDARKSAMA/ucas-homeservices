class User {
  int? id;
  String? name;
  String? email;
  String? photo;
  String? phone;
  String? active;
  String? token;

  User(
      {this.id,
      this.name,
      this.email,
      this.photo,
      this.phone,
      this.active,
      this.token});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    photo = json['photo'];
    phone = json['phone'];
    active = json['active'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['photo'] = photo;
    data['phone'] = phone;
    data['active'] = active;
    data['token'] = token;
    return data;
  }
}
