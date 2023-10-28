class Countries {
  final String name;
  final String dial_code;
  final String code;

  Countries({
    required this.name,
    required this.dial_code,
    required this.code,
  });

  factory Countries.fromJson(Map json) {
    return Countries(name: json["name"], dial_code: json["dial_code"], code: json["code"]);
  }
}
