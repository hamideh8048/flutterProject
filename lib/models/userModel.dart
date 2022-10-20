class userModel {
  userModel({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory userModel.fromJson(Map<String, dynamic> json) => userModel(
    id:json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };

  static List<userModel> listFromJson(list) =>
      List<userModel>.from(list.map((x) => userModel.fromJson(x)));
}