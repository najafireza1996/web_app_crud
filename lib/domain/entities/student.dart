import 'dart:convert';

class Student {
  final int rowNumber;
  final String classNumber;
  final String className;
  final DateTime registerTime;
  final DateTime time;
  final bool show;
  Student({
    required this.rowNumber,
    required this.classNumber,
    required this.className,
    required this.registerTime,
    required this.time,
    required this.show,
  });


  Student copyWith({
    int? rowNumber,
    String? classNumber,
    String? className,
    DateTime? registerTime,
    DateTime? time,
    bool? show,
  }) {
    return Student(
      rowNumber: rowNumber ?? this.rowNumber,
      classNumber: classNumber ?? this.classNumber,
      className: className ?? this.className,
      registerTime: registerTime ?? this.registerTime,
      time: time ?? this.time,
      show: show ?? this.show,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'rowNumber': rowNumber});
    result.addAll({'classNumber': classNumber});
    result.addAll({'className': className});
    result.addAll({'registerTime': registerTime.millisecondsSinceEpoch});
    result.addAll({'time': time.millisecondsSinceEpoch});
    result.addAll({'show': show});
  
    return result;
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      rowNumber: map['rowNumber']?.toInt() ?? 0,
      classNumber: map['classNumber'] ?? '',
      className: map['className'] ?? '',
      registerTime: DateTime.fromMillisecondsSinceEpoch(map['registerTime']),
      time: DateTime.fromMillisecondsSinceEpoch(map['time']),
      show: map['show'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) => Student.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Student(rowNumber: $rowNumber, classNumber: $classNumber, className: $className, registerTime: $registerTime, time: $time, show: $show)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Student &&
      other.rowNumber == rowNumber &&
      other.classNumber == classNumber &&
      other.className == className &&
      other.registerTime == registerTime &&
      other.time == time &&
      other.show == show;
  }

  @override
  int get hashCode {
    return rowNumber.hashCode ^
      classNumber.hashCode ^
      className.hashCode ^
      registerTime.hashCode ^
      time.hashCode ^
      show.hashCode;
  }
}
