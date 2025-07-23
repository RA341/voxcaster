//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_response.g.dart';

/// DownloadResponse
///
/// Properties:
/// * [message] 
/// * [voiceKey] 
/// * [downloadId] 
@BuiltValue()
abstract class DownloadResponse implements Built<DownloadResponse, DownloadResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'voice_key')
  String get voiceKey;

  @BuiltValueField(wireName: r'download_id')
  String? get downloadId;

  DownloadResponse._();

  factory DownloadResponse([void updates(DownloadResponseBuilder b)]) = _$DownloadResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DownloadResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DownloadResponse> get serializer => _$DownloadResponseSerializer();
}

class _$DownloadResponseSerializer implements PrimitiveSerializer<DownloadResponse> {
  @override
  final Iterable<Type> types = const [DownloadResponse, _$DownloadResponse];

  @override
  final String wireName = r'DownloadResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DownloadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'voice_key';
    yield serializers.serialize(
      object.voiceKey,
      specifiedType: const FullType(String),
    );
    if (object.downloadId != null) {
      yield r'download_id';
      yield serializers.serialize(
        object.downloadId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DownloadResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DownloadResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'voice_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.voiceKey = valueDes;
          break;
        case r'download_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.downloadId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DownloadResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DownloadResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

