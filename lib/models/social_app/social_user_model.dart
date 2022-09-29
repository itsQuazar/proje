class SocialUserModel {
  String name;
  String email;
  String phone;
  String uId;
  String image;
  String cover;
  String bio;
  bool isEmailVerified;

  SocialUserModel({
    this.email,
    this.name,
    this.phone,
    this.uId,
    this.bio,
    this.isEmailVerified,
    this.image,
    this.cover,

  });

  SocialUserModel.fromJson(Map<String, dynamic> json)
  {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    bio = json['bio'];
    image = json['image'];
    cover = json['cover'];
    isEmailVerified = json['isEmailVerified'];
  }

  Map<String, dynamic> toMap()
  {
    return {
      'name':name,
      'email':email,
      'phone':phone,
      'uId':uId,
      'image':image,
      'cover':cover,
      'bio':bio,
      'isEmailVerified':isEmailVerified,
    };
  }
}