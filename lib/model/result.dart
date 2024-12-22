class Result {
  int? id;
  String? title;
  String? artist;
  String? file;
  String? image;
  int? catId;
  int? albumId;
  int? view;
  int? share;
  String? createdAt;
  String? updatedAt;
  int? like_count;
  List<int>? likeUsers;

  Result({this.id,
    this.title,
    this.artist,
    this.file,
    this.image,
    this.catId,
    this.albumId,
    this.view,
    this.share,
    this.createdAt,
    this.updatedAt,
    this.like_count,
    this.likeUsers});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    artist = json['artist'];
    file = json['file'];
    image = json['image'];
    catId = json['cat_id'];
    albumId = json['album_id'];
    view = json['view'];
    share = json['share'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    like_count = json['like_count'];

    if (json['likeUsers'] != null) {
      likeUsers = json['likeUsers'].cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['artist'] = this.artist;
    data['file'] = this.file;
    data['image'] = this.image;
    data['cat_id'] = this.catId;
    data['album_id'] = this.albumId;
    data['view'] = this.view;
    data['share'] = this.share;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['like_count'] = this.like_count;
    data['likeUsers'] = this.likeUsers;
    return data;
  }
}