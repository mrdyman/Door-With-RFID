class Rfid {
  final String id;
  final String name;
  final String position;
  final String uuid;

  Rfid({
    required this.id,
    required this.name,
    required this.position,
    required this.uuid,
  });

  factory Rfid.fromJson(Map<String, dynamic> json) {
    final data = json.values.first;
    return Rfid(
      id: json.keys.first,
      name: data['name'] ?? '',
      position: data['position'] ?? '',
      uuid: data['uuid'] ?? '',
    );
  }
}
