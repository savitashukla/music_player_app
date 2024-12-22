
class artistModel {
  List<Result>? result;
  String? status;

  artistModel({this.result, this.status});

  artistModel.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    return data;
  }
}

class Result {
  int? id;
  String? name;
  String? image;
  String? bio;
  String? location;
  String? facebook;
  String? instagram;
  String? tiktok;
  String? snapchat;
  String? createdAt;
  String? updatedAt;

  Result(
      {this.id,
        this.name,
        this.image,
        this.bio,
        this.location,
        this.facebook,
        this.instagram,
        this.tiktok,
        this.snapchat,
        this.createdAt,
        this.updatedAt});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    bio = json['bio'];
    location = json['location'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    tiktok = json['tiktok'];
    snapchat = json['snapchat'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['bio'] = this.bio;
    data['location'] = this.location;
    data['facebook'] = this.facebook;
    data['instagram'] = this.instagram;
    data['tiktok'] = this.tiktok;
    data['snapchat'] = this.snapchat;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}