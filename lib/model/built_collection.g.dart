// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_collection.dart';

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
    return <Object>[];
  }

  @override
  BuiltCollection deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new BuiltCollectionBuilder().build();
  }
}

class _$BuiltCollection extends BuiltCollection {
  factory _$BuiltCollection([void Function(BuiltCollectionBuilder) updates]) =>
      (new BuiltCollectionBuilder()..update(updates)).build();

  _$BuiltCollection._() : super._();

  @override
  BuiltCollection rebuild(void Function(BuiltCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltCollectionBuilder toBuilder() =>
      new BuiltCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltCollection;
  }

  @override
  int get hashCode {
    return 870011969;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('BuiltCollection').toString();
  }
}

class BuiltCollectionBuilder
    implements Builder<BuiltCollection, BuiltCollectionBuilder> {
  _$BuiltCollection _$v;

  BuiltCollectionBuilder();

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
    final _$result = _$v ?? new _$BuiltCollection._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
