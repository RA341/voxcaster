//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/voice.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'voices_list_response.g.dart';

/// VoicesListResponse
///
/// Properties:
/// * [voices] 
/// * [total] 
@BuiltValue()
abstract class VoicesListResponse implements Built<VoicesListResponse, VoicesListResponseBuilder> {
  @BuiltValueField(wireName: r'voices')
  BuiltList<Voice> get voices;

  @BuiltValueField(wireName: r'total')
  int get total;

  VoicesListResponse._();

  factory VoicesListResponse([void updates(VoicesListResponseBuilder b)]) = _$VoicesListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VoicesListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VoicesListResponse> get serializer => _$VoicesListResponseSerializer();
}

class _$VoicesListResponseSerializer implements PrimitiveSerializer<VoicesListResponse> {
  @override
  final Iterable<Type> types = const [VoicesListResponse, _$VoicesListResponse];

  @override
  final String wireName = r'VoicesListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VoicesListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'voices';
    yield serializers.serialize(
      object.voices,
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
    VoicesListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VoicesListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'voices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Voice)]),
          ) as BuiltList<Voice>;
          result.voices.replace(valueDes);
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
  VoicesListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VoicesListResponseBuilder();
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

