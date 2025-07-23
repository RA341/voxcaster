//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/voice.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'downloaded_voices_response.g.dart';

/// DownloadedVoicesResponse
///
/// Properties:
/// * [downloadedVoices] 
/// * [total] 
@BuiltValue()
abstract class DownloadedVoicesResponse implements Built<DownloadedVoicesResponse, DownloadedVoicesResponseBuilder> {
  @BuiltValueField(wireName: r'downloaded_voices')
  BuiltList<Voice> get downloadedVoices;

  @BuiltValueField(wireName: r'total')
  int get total;

  DownloadedVoicesResponse._();

  factory DownloadedVoicesResponse([void updates(DownloadedVoicesResponseBuilder b)]) = _$DownloadedVoicesResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DownloadedVoicesResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DownloadedVoicesResponse> get serializer => _$DownloadedVoicesResponseSerializer();
}

class _$DownloadedVoicesResponseSerializer implements PrimitiveSerializer<DownloadedVoicesResponse> {
  @override
  final Iterable<Type> types = const [DownloadedVoicesResponse, _$DownloadedVoicesResponse];

  @override
  final String wireName = r'DownloadedVoicesResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DownloadedVoicesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'downloaded_voices';
    yield serializers.serialize(
      object.downloadedVoices,
      specifiedType: const FullType(BuiltList, [FullType(Voice)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DownloadedVoicesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DownloadedVoicesResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'downloaded_voices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Voice)]),
          ) as BuiltList<Voice>;
          result.downloadedVoices.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DownloadedVoicesResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DownloadedVoicesResponseBuilder();
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

