// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltContent> _$builtContentSerializer =
    new _$BuiltContentSerializer();
Serializer<Pillar> _$pillarSerializer = new _$PillarSerializer();
Serializer<Collection> _$collectionSerializer = new _$CollectionSerializer();

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
      'collections',
      serializers.serialize(object.collections,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Collection)])),
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
        case 'collections':
          result.collections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Collection)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$PillarSerializer implements StructuredSerializer<Pillar> {
  @override
  final Iterable<Type> types = const [Pillar, _$Pillar];
  @override
  final String wireName = 'Pillar';

  @override
  Iterable<Object> serialize(Serializers serializers, Pillar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'pillar',
      serializers.serialize(object.pillar,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Pillar deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PillarBuilder();

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

class _$CollectionSerializer implements StructuredSerializer<Collection> {
  @override
  final Iterable<Type> types = const [Collection, _$Collection];
  @override
  final String wireName = 'Collection';

  @override
  Iterable<Object> serialize(Serializers serializers, Collection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.uuid != null) {
      result
        ..add('uuid')
        ..add(serializers.serialize(object.uuid,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.pillar != null) {
      result
        ..add('pillar')
        ..add(serializers.serialize(object.pillar,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Collection deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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
  @override
  final BuiltList<Collection> collections;

  factory _$BuiltContent([void Function(BuiltContentBuilder) updates]) =>
      (new BuiltContentBuilder()..update(updates)).build();

  _$BuiltContent._({this.pillar, this.collections}) : super._() {
    if (pillar == null) {
      throw new BuiltValueNullFieldError('BuiltContent', 'pillar');
    }
    if (collections == null) {
      throw new BuiltValueNullFieldError('BuiltContent', 'collections');
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
    return other is BuiltContent &&
        pillar == other.pillar &&
        collections == other.collections;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pillar.hashCode), collections.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltContent')
          ..add('pillar', pillar)
          ..add('collections', collections))
        .toString();
  }
}

class BuiltContentBuilder
    implements Builder<BuiltContent, BuiltContentBuilder> {
  _$BuiltContent _$v;

  String _pillar;
  String get pillar => _$this._pillar;
  set pillar(String pillar) => _$this._pillar = pillar;

  ListBuilder<Collection> _collections;
  ListBuilder<Collection> get collections =>
      _$this._collections ??= new ListBuilder<Collection>();
  set collections(ListBuilder<Collection> collections) =>
      _$this._collections = collections;

  BuiltContentBuilder();

  BuiltContentBuilder get _$this {
    if (_$v != null) {
      _pillar = _$v.pillar;
      _collections = _$v.collections?.toBuilder();
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
    _$BuiltContent _$result;
    try {
      _$result = _$v ??
          new _$BuiltContent._(
              pillar: pillar, collections: collections.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'collections';
        collections.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltContent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Pillar extends Pillar {
  @override
  final String pillar;

  factory _$Pillar([void Function(PillarBuilder) updates]) =>
      (new PillarBuilder()..update(updates)).build();

  _$Pillar._({this.pillar}) : super._() {
    if (pillar == null) {
      throw new BuiltValueNullFieldError('Pillar', 'pillar');
    }
  }

  @override
  Pillar rebuild(void Function(PillarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PillarBuilder toBuilder() => new PillarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pillar && pillar == other.pillar;
  }

  @override
  int get hashCode {
    return $jf($jc(0, pillar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pillar')..add('pillar', pillar))
        .toString();
  }
}

class PillarBuilder implements Builder<Pillar, PillarBuilder> {
  _$Pillar _$v;

  String _pillar;
  String get pillar => _$this._pillar;
  set pillar(String pillar) => _$this._pillar = pillar;

  PillarBuilder();

  PillarBuilder get _$this {
    if (_$v != null) {
      _pillar = _$v.pillar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pillar other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Pillar;
  }

  @override
  void update(void Function(PillarBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pillar build() {
    final _$result = _$v ?? new _$Pillar._(pillar: pillar);
    replace(_$result);
    return _$result;
  }
}

class _$Collection extends Collection {
  @override
  final String uuid;
  @override
  final String title;
  @override
  final String pillar;

  factory _$Collection([void Function(CollectionBuilder) updates]) =>
      (new CollectionBuilder()..update(updates)).build();

  _$Collection._({this.uuid, this.title, this.pillar}) : super._();

  @override
  Collection rebuild(void Function(CollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionBuilder toBuilder() => new CollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Collection &&
        uuid == other.uuid &&
        title == other.title &&
        pillar == other.pillar;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, uuid.hashCode), title.hashCode), pillar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Collection')
          ..add('uuid', uuid)
          ..add('title', title)
          ..add('pillar', pillar))
        .toString();
  }
}

class CollectionBuilder implements Builder<Collection, CollectionBuilder> {
  _$Collection _$v;

  String _uuid;
  String get uuid => _$this._uuid;
  set uuid(String uuid) => _$this._uuid = uuid;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _pillar;
  String get pillar => _$this._pillar;
  set pillar(String pillar) => _$this._pillar = pillar;

  CollectionBuilder();

  CollectionBuilder get _$this {
    if (_$v != null) {
      _uuid = _$v.uuid;
      _title = _$v.title;
      _pillar = _$v.pillar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Collection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Collection;
  }

  @override
  void update(void Function(CollectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Collection build() {
    final _$result =
        _$v ?? new _$Collection._(uuid: uuid, title: title, pillar: pillar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
