class Work {
  int? id;
  String? name;
  String? icon;
  String? description;
  int? active;
  // String? createdAt;
  // String? updatedAt;

  Work({
    this.id,
    this.name,
    this.icon,
    this.description,
    this.active,
    // this.createdAt,
    // this.updatedAt,
  });

  Work.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = json['icon'];
    description = json['description'];
    active = json['active'];
    // createdAt = json['created_at'];
    // updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['icon'] = icon;
    data['description'] = description;
    data['active'] = active;
    // data['created_at'] = createdAt;
    // data['updated_at'] = updatedAt;
    return data;
  }
}
