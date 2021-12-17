import 'dart:convert';

import 'package:flutter/foundation.dart';

class BreakingBadModel {
  final int char_id;
  final String name;
  final String birthday;
  final List<String> occupation;
  final String status;
  final String img;
  final String nickname;
  final List<int> appearance;
  final String portrayed;
  final String category;
  final List<int> better_call_saul_appearance;
  BreakingBadModel({
    required this.char_id,
    required this.name,
    required this.birthday,
    required this.occupation,
    required this.status,
    required this.img,
    required this.nickname,
    required this.appearance,
    required this.portrayed,
    required this.category,
    required this.better_call_saul_appearance,
  });

  BreakingBadModel copyWith({
    int? char_id,
    String? name,
    String? birthday,
    List<String>? occupation,
    String? status,
    String? img,
    String? nickname,
    List<int>? appearance,
    String? portrayed,
    String? category,
    List<int>? better_call_saul_appearance,
  }) {
    return BreakingBadModel(
      char_id: char_id ?? this.char_id,
      name: name ?? this.name,
      birthday: birthday ?? this.birthday,
      occupation: occupation ?? this.occupation,
      status: status ?? this.status,
      img: img ?? this.img,
      nickname: nickname ?? this.nickname,
      appearance: appearance ?? this.appearance,
      portrayed: portrayed ?? this.portrayed,
      category: category ?? this.category,
      better_call_saul_appearance:
          better_call_saul_appearance ?? this.better_call_saul_appearance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'char_id': char_id,
      'name': name,
      'birthday': birthday,
      'occupation': occupation,
      'status': status,
      'img': img,
      'nickname': nickname,
      'appearance': appearance,
      'portrayed': portrayed,
      'category': category,
      'better_call_saul_appearance': better_call_saul_appearance,
    };
  }

  factory BreakingBadModel.fromMap(Map<String, dynamic> map) {
    return BreakingBadModel(
      char_id: map['char_id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      birthday: map['birthday'] ?? '',
      occupation: List<String>.from(map['occupation']),
      status: map['status'] ?? '',
      img: map['img'] ?? '',
      nickname: map['nickname'] ?? '',
      appearance: List<int>.from(map['appearance']),
      portrayed: map['portrayed'] ?? '',
      category: map['category'] ?? '',
      better_call_saul_appearance:
          List<int>.from(map['better_call_saul_appearance']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BreakingBadModel.fromJson(String source) =>
      BreakingBadModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BreakingBadModel(char_id: $char_id, name: $name, birthday: $birthday, occupation: $occupation, status: $status, img: $img, nickname: $nickname, appearance: $appearance, portrayed: $portrayed, category: $category, better_call_saul_appearance: $better_call_saul_appearance)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BreakingBadModel &&
        other.char_id == char_id &&
        other.name == name &&
        other.birthday == birthday &&
        listEquals(other.occupation, occupation) &&
        other.status == status &&
        other.img == img &&
        other.nickname == nickname &&
        listEquals(other.appearance, appearance) &&
        other.portrayed == portrayed &&
        other.category == category &&
        listEquals(
            other.better_call_saul_appearance, better_call_saul_appearance);
  }

  @override
  int get hashCode {
    return char_id.hashCode ^
        name.hashCode ^
        birthday.hashCode ^
        occupation.hashCode ^
        status.hashCode ^
        img.hashCode ^
        nickname.hashCode ^
        appearance.hashCode ^
        portrayed.hashCode ^
        category.hashCode ^
        better_call_saul_appearance.hashCode;
  }
}
