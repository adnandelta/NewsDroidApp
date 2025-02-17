// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_stream_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SocialStreamRecord> _$socialStreamRecordSerializer =
    new _$SocialStreamRecordSerializer();

class _$SocialStreamRecordSerializer
    implements StructuredSerializer<SocialStreamRecord> {
  @override
  final Iterable<Type> types = const [SocialStreamRecord, _$SocialStreamRecord];
  @override
  final String wireName = 'SocialStreamRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SocialStreamRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.socialHeadlines;
    if (value != null) {
      result
        ..add('social_headlines')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  SocialStreamRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SocialStreamRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'social_headlines':
          result.socialHeadlines.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$SocialStreamRecord extends SocialStreamRecord {
  @override
  final BuiltList<String> socialHeadlines;
  @override
  final DocumentReference<Object> reference;

  factory _$SocialStreamRecord(
          [void Function(SocialStreamRecordBuilder) updates]) =>
      (new SocialStreamRecordBuilder()..update(updates)).build();

  _$SocialStreamRecord._({this.socialHeadlines, this.reference}) : super._();

  @override
  SocialStreamRecord rebuild(
          void Function(SocialStreamRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialStreamRecordBuilder toBuilder() =>
      new SocialStreamRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialStreamRecord &&
        socialHeadlines == other.socialHeadlines &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, socialHeadlines.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SocialStreamRecord')
          ..add('socialHeadlines', socialHeadlines)
          ..add('reference', reference))
        .toString();
  }
}

class SocialStreamRecordBuilder
    implements Builder<SocialStreamRecord, SocialStreamRecordBuilder> {
  _$SocialStreamRecord _$v;

  ListBuilder<String> _socialHeadlines;
  ListBuilder<String> get socialHeadlines =>
      _$this._socialHeadlines ??= new ListBuilder<String>();
  set socialHeadlines(ListBuilder<String> socialHeadlines) =>
      _$this._socialHeadlines = socialHeadlines;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SocialStreamRecordBuilder() {
    SocialStreamRecord._initializeBuilder(this);
  }

  SocialStreamRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _socialHeadlines = $v.socialHeadlines?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialStreamRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SocialStreamRecord;
  }

  @override
  void update(void Function(SocialStreamRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SocialStreamRecord build() {
    _$SocialStreamRecord _$result;
    try {
      _$result = _$v ??
          new _$SocialStreamRecord._(
              socialHeadlines: _socialHeadlines?.build(), reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'socialHeadlines';
        _socialHeadlines?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SocialStreamRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
