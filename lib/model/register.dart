class RegisterModel {
  String? token;
  String? role;
  User? data;
  String? message;
  String? status;

  RegisterModel({this.token, this.role, this.data, this.message, this.status});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    role = json['role'];
    data = json['data'] != null ? new User.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['role'] = this.role;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class User {
  int? id;
  int? phone;
  String? name;
  String? role;
  String? email;
  String? company;
  String? address;
  Null? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
        this.phone,
        this.name,
        this.role,
        this.email,
        this.company,
        this.address,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    name = json['name'];
    role = json['role'];
    email = json['email'];
    company = json['company'];
    address = json['address'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['phone'] = this.phone;
    data['name'] = this.name;
    data['role'] = this.role;
    data['email'] = this.email;
    data['company'] = this.company;
    data['address'] = this.address;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}