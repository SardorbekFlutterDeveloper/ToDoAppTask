class Event {
  final int? id;
  final String? title;
  final String? subtitle;
  final String? place;
  final DateTime date;

  Event({
    this.id,
    this.subtitle,
    this.place,
    this.title,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'place': place,
      'date': date.toIso8601String(),
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'],
      title: map['title'],
      subtitle: map['subtitle'],
      place: map['place'],
      date: DateTime.parse(map['date']),
    );
  }
}
