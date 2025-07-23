//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'language.g.dart';

/// Language information model
///
/// Properties:
/// * [code] - Language code (e.g., 'en-US')
/// * [family] - Language family
/// * [region] - Geographic region
/// * [nameNative] - Language name in native script
/// * [nameEnglish] - Language name in English
/// * [countryEnglish] - Country name in English
@BuiltValue()
abstract class Language implements Built<Language, LanguageBuilder> {
  /// Language code (e.g., 'en-US')
  @BuiltValueField(wireName: r'code')
  String get code;

  /// Language family
  @BuiltValueField(wireName: r'family')
  String get family;

  /// Geographic region
  @BuiltValueField(wireName: r'region')
  String get region;

  /// Language name in native script
  @BuiltValueField(wireName: r'name_native')
  String get nameNative;

  /// Language name in English
  @BuiltValueField(wireName: r'name_english')
  String get nameEnglish;

  /// Country name in English
  @BuiltValueField(wireName: r'country_english')
  String get countryEnglish;

  Language._();

  factory Language([void updates(LanguageBuilder b)]) = _$Language;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LanguageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Language> get serializer => _$LanguageSerializer();
}

class _$LanguageSerializer implements PrimitiveSerializer<Language> {
  @override
  final Iterable<Type> types = const [Language, _$Language];

  @override
  final String wireName = r'Language';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Language object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
    yield r'name_native';
    yield serializers.serialize(
      object.nameNative,
      specifiedType: const FullType(String),
    );
    yield r'name_english';
    yield serializers.serialize(
      object.nameEnglish,
      specifiedType: const FullType(String),
    );
    yield r'country_english';
    yield serializers.serialize(
      object.countryEnglish,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Language object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LanguageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'family':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.family = valueDes;
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.region = valueDes;
          break;
        case r'name_native':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nameNative = valueDes;
          break;
        case r'name_english':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nameEnglish = valueDes;
          break;
        case r'country_english':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.countryEnglish = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Language deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LanguageBuilder();
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

