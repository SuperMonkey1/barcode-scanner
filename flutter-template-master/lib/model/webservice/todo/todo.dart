import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class Todo {
  @JsonKey(name: 'id', required: true, includeIfNull: false)
  final int id;
  @JsonKey(name: 'title', required: true, includeIfNull: false)
  final String title;
  @JsonKey(name: 'completed', required: true, includeIfNull: false)
  final bool completed;

  Todo({
    @required this.id,
    @required this.title,
    @required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  Map<String, dynamic> toJson() => _$TodoToJson(this);

}
