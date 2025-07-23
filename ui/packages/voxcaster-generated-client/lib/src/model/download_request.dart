//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_request.g.dart';

/// DownloadRequest
///
/// Properties:
/// * [voiceKey] 
/// * [quality] 
@BuiltValue()
abstract class DownloadRequest implements Built<DownloadRequest, DownloadRequestBuilder> {
  @BuiltValueField(wireName: r'voice_key')
  String get voiceKey;

  @BuiltValueField(wireName: r'quality')
  String? get quality;

  DownloadRequest._();

  factory DownloadRequest([void updates(DownloadRequestBuilder b)]) = _$DownloadRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DownloadRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DownloadRequest> get serializer => _$DownloadRequestSerializer();
}

class _$DownloadRequestSerializer implements PrimitiveSerializer<DownloadRequest> {
  @override
  final Iterable<Type> types = const [DownloadRequest, _$DownloadRequest];

  @override
  final String wireName = r'DownloadRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DownloadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'voice_key';
    yield serializers.serialize(
      object.voiceKey,
      specifiedType: const FullType(String),
    );
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DownloadRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DownloadRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'voice_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.voiceKey = valueDes;
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.quality = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DownloadRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DownloadRequestBuilder();
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

