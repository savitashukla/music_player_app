

class ResultAllModel {
  int? id;
  String? title;
  String? artist;
  String? file;
  int? share;
  int? like_count;
  String? image;
  int? albumId;
  int? view;
  String? createdAt;
  String? updatedAt;

  ResultAllModel(
      {this.id,
        this.title,
        this.artist,
        this.file,
        this.share,
        this.like_count,
        this.image,
        this.albumId,
        this.view,
        this.createdAt,
        this.updatedAt});

  ResultAllModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    artist = json['artist'];
    file = json['file'];
    share = json['share'];
    like_count = json['like_count'];
    image = json['image'];
    albumId = json['album_id'];
    view = json['view'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['artist'] = this.artist;
    data['file'] = this.file;
    data['share'] = this.share;
    data['like_count'] = this.like_count;
    data['image'] = this.image;
    data['album_id'] = this.albumId;
    data['view'] = this.view;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;

    return data;
  }
}