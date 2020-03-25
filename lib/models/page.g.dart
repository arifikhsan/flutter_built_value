// GENERATED CODE - DO NOT MODIFY BY HAND

part of page;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Note> _$noteSerializer = new _$NoteSerializer();

class _$NoteSerializer implements StructuredSerializer<Note> {
  @override
  final Iterable<Type> types = const [Note, _$Note];
  @override
  final String wireName = 'Note';

  @override
  Iterable<Object> serialize(Serializers serializers, Note object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Note deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Note extends Note {
  @override
  final String title;
  @override
  final String text;

  factory _$Note([void Function(NoteBuilder) updates]) =>
      (new NoteBuilder()..update(updates)).build();

  _$Note._({this.title, this.text}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Note', 'title');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Note', 'text');
    }
  }

  @override
  Note rebuild(void Function(NoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteBuilder toBuilder() => new NoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Note && title == other.title && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Note')
          ..add('title', title)
          ..add('text', text))
        .toString();
  }
}

class NoteBuilder implements Builder<Note, NoteBuilder> {
  _$Note _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  NoteBuilder();

  NoteBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Note other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Note;
  }

  @override
  void update(void Function(NoteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Note build() {
    final _$result = _$v ?? new _$Note._(title: title, text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
