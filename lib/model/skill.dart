class Skill {
  late String id;
  String name;

  Skill({required this.name});

  toMap() {
    return {
      'name': name,
    };
  }

  Skill.fromMap(Map<String, dynamic> skillMap) : name = skillMap['name'];
}
