library page;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_built_value/models/serializers.dart';

part 'page.g.dart'; 

abstract class Note implements Built<Note, NoteBuilder> {
  String get title;
  String get text;

  Note._();

  factory Note([updates(NoteBuilder b)]) = _$Note;

  String toJson() {
    return json.encode(serializers.serializeWith(Note.serializer, this));
  }

  static Note fromJson(String jsonString) {
    return serializers.deserializeWith(Note.serializer, json.decode(jsonString));
  }

  static Serializer<Note> get serializer => _$noteSerializer;
}
