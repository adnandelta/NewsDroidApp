import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'social_stream_record.g.dart';

abstract class SocialStreamRecord
    implements Built<SocialStreamRecord, SocialStreamRecordBuilder> {
  static Serializer<SocialStreamRecord> get serializer =>
      _$socialStreamRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'social_headlines')
  BuiltList<String> get socialHeadlines;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SocialStreamRecordBuilder builder) =>
      builder..socialHeadlines = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('social_stream');

  static Stream<SocialStreamRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SocialStreamRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  SocialStreamRecord._();
  factory SocialStreamRecord(
          [void Function(SocialStreamRecordBuilder) updates]) =
      _$SocialStreamRecord;

  static SocialStreamRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSocialStreamRecordData() => serializers.toFirestore(
    SocialStreamRecord.serializer,
    SocialStreamRecord((s) => s..socialHeadlines = null));
