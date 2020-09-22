
class User{
  final int index;
  final String name;
  final String email;
  final String about;
  final String picture;

  User(this.index, this.name, this.email, this.about, this.picture);

  factory User.fromJson(Map<String,dynamic>json){
    return User(
      json["index"],
      json["name"],
      json["email"],
      json["about"],
      json["picture"],
    );
  }



}