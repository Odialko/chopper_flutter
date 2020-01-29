// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_collection;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltCollection> _$builtCollectionSerializer =
    new _$BuiltCollectionSerializer();

class _$BuiltCollectionSerializer
    implements StructuredSerializer<BuiltCollection> {
  @override
  final Iterable<Type> types = const [BuiltCollection, _$BuiltCollection];
  @override
  final String wireName = 'BuiltCollection';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltCollection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'pillar',
      serializers.serialize(object.pillar,
          specifiedType: const FullType(String)),
      'collection',
      serializers.serialize(object.collection,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Collection)])),
    ];

    return result;
  }

  @override
  BuiltCollection deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltCollectionBuilder();

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
        case 'collection':
          result.collection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Collection)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltCollection extends BuiltCollection {
  @override
  final String pillar;
  @override
  final BuiltList<Collection> collection;

  factory _$BuiltCollection([void Function(BuiltCollectionBuilder) updates]) =>
      (new BuiltCollectionBuilder()..update(updates)).build();

  _$BuiltCollection._({this.pillar, this.collection}) : super._() {
    if (pillar == null) {
      throw new BuiltValueNullFieldError('BuiltCollection', 'pillar');
    }
    if (collection == null) {
      throw new BuiltValueNullFieldError('BuiltCollection', 'collection');
    }
  }

  @override
  BuiltCollection rebuild(void Function(BuiltCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltCollectionBuilder toBuilder() =>
      new BuiltCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltCollection &&
        pillar == other.pillar &&
        collection == other.collection;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pillar.hashCode), collection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltCollection')
          ..add('pillar', pillar)
          ..add('collection', collection))
        .toString();
  }
}

class BuiltCollectionBuilder
    implements Builder<BuiltCollection, BuiltCollectionBuilder> {
  _$BuiltCollection _$v;

  String _pillar;
  String get pillar => _$this._pillar;
  set pillar(String pillar) => _$this._pillar = pillar;

  ListBuilder<Collection> _collection;
  ListBuilder<Collection> get collection =>
      _$this._collection ??= new ListBuilder<Collection>();
  set collection(ListBuilder<Collection> collection) =>
      _$this._collection = collection;

  BuiltCollectionBuilder();

  BuiltCollectionBuilder get _$this {
    if (_$v != null) {
      _pillar = _$v.pillar;
      _collection = _$v.collection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltCollection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltCollection;
  }

  @override
  void update(void Function(BuiltCollectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltCollection build() {
    _$BuiltCollection _$result;
    try {
      _$result = _$v ??
          new _$BuiltCollection._(
              pillar: pillar, collection: collection.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'collection';
        collection.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltCollection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
