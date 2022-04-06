class Profile {
  late String id;
  String name;
  String? title;

  Profile({
    required this.name,
    this.title,
  });

  toMap() {
    return {
      'name': name,
      'title': title,
    };
  }

  Profile.fromMap(Map<String, dynamic> profileMap)
      : name = profileMap['name'],
        title = profileMap['title'];
}
