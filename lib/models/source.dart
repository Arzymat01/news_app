class Source {
  Source({
    this.id,
    this.name,
  });

  final String? id;
  final String? name;

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json["id"],
      name: json["name"],
    );
  }
}

// key: Value
// Hello : Salam

// Map<dynamic, String> birMap = {
//   "hello": "Salam",
//   1: 1,
//   true: true,
//   100: "Kurs10",
// };