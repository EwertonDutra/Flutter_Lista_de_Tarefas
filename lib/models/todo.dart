class Todo {
  Todo({required this.title, required this.date});

  Todo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        date = DateTime.parse(json['date']);

  String title;
  DateTime date;

  toJson() {
    return {
      'title': title,
      'date': date.toIso8601String(),
    };
  }
}
