// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltContent> _$builtContentSerializer =
    new _$BuiltContentSerializer();
Serializer<PillarModel> _$pillarModelSerializer = new _$PillarModelSerializer();

class _$BuiltContentSerializer implements StructuredSerializer<BuiltContent> {
  @override
  final Iterable<Type> types = const [BuiltContent, _$BuiltContent];
  @override
  final String wireName = 'BuiltContent';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltContent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'pillar',
      serializers.serialize(object.pillar,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltContent deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltContentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pillar':
          result.pillar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PillarModelSerializer implements StructuredSerializer<PillarModel> {
  @override
  final Iterable<Type> types = const [PillarModel, _$PillarModel];
  @override
  final String wireName = 'PillarModel';

  @override
  Iterable<Object> serialize(Serializers serializers, PillarModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'pillar',
      serializers.serialize(object.pillar,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PillarModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PillarModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'pillar':
          result.pillar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltContent extends BuiltContent {
  @override
  final String pillar;

  factory _$BuiltContent([void Function(BuiltContentBuilder) updates]) =>
      (new BuiltContentBuilder()..update(updates)).build();

  _$BuiltContent._({this.pillar}) : super._() {
    if (pillar == null) {
      throw new BuiltValueNullFieldError('BuiltContent', 'pillar');
    }
  }

  @override
  BuiltContent rebuild(void Function(BuiltContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltContentBuilder toBuilder() => new BuiltContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltContent && pillar == other.pillar;
  }

  @override
  int get hashCode {
    return $jf($jc(0, pillar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltContent')..add('pillar', pillar))
        .toString();
  }
}

class BuiltContentBuilder
    implements Builder<BuiltContent, BuiltContentBuilder> {
  _$BuiltContent _$v;

  String _pillar;
  String get pillar => _$this._pillar;
  set pillar(String pillar) => _$this._pillar = pillar;

  BuiltContentBuilder();

  BuiltContentBuilder get _$this {
    if (_$v != null) {
      _pillar = _$v.pillar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltContent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltContent;
  }

  @override
  void update(void Function(BuiltContentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltContent build() {
    final _$result = _$v ?? new _$BuiltContent._(pillar: pillar);
    replace(_$result);
    return _$result;
  }
}

class _$PillarModel extends PillarModel {
  @override
  final String pillar;

  factory _$PillarModel([void Function(PillarModelBuilder) updates]) =>
      (new PillarModelBuilder()..update(updates)).build();

  _$PillarModel._({this.pillar}) : super._() {
    if (pillar == null) {
      throw new BuiltValueNullFieldError('PillarModel', 'pillar');
    }
  }

  @override
  PillarModel rebuild(void Function(PillarModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PillarModelBuilder toBuilder() => new PillarModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PillarModel && pillar == other.pillar;
  }

  @override
  int get hashCode {
    return $jf($jc(0, pillar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PillarModel')..add('pillar', pillar))
        .toString();
  }
}

class PillarModelBuilder implements Builder<PillarModel, PillarModelBuilder> {
  _$PillarModel _$v;

  String _pillar;
  String get pillar => _$this._pillar;
  set pillar(String pillar) => _$this._pillar = pillar;

  PillarModelBuilder();

  PillarModelBuilder get _$this {
    if (_$v != null) {
      _pillar = _$v.pillar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PillarModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PillarModel;
  }

  @override
  void update(void Function(PillarModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PillarModel build() {
    final _$result = _$v ?? new _$PillarModel._(pillar: pillar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
