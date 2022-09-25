class User {
  int id;
  String roleId;
  String name;
  String email;
  String avatar;
  String phone;
  Null emailVerifiedAt;
  String createdAt;
  String updatedAt;
  Null lastLogin;

  User(
      {this.id,
      this.roleId,
      this.name,
      this.email,
      this.avatar,
      this.phone,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.lastLogin});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    phone = json['phone'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    lastLogin = json['last_login'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role_id'] = this.roleId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['avatar'] = this.avatar;
    data['phone'] = this.phone;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['last_login'] = this.lastLogin;
    return data;
  }
}
