class Task {
  final int id;
  final String name;
  final DateTime termDateTime;
  final bool isDone;

  Task({
    required this.id,
    required this.name,
    required this.termDateTime,
    required this.isDone,
  });

  Task copyWith({
    int? id,
    String? name,
    DateTime? termDateTime,
    bool? isDone,
  }) {
    return Task(
        id: id ?? this.id,
        name: name ?? this.name,
        termDateTime: termDateTime ?? this.termDateTime,
        isDone: isDone ?? this.isDone);
  }
}
