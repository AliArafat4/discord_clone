class Friends {
  final String name;
  final String avatar;
  final String status;
  final String activity;

  Friends(
      {required this.name,
      required this.avatar,
      required this.status,
      required this.activity});

  factory Friends.fromJson(Map json) {
    return Friends(
      name: json["name"],
      avatar: json["avatar"],
      status: json["status"],
      activity: json["activity"],
    );
  }
}
